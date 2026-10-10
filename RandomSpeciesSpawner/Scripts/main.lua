local config = require("config")
local spawnDefaults = require("spawn_defaults")

local MOD_NAME = "RandomSpeciesSpawner"
local MOD_VERSION = "0.1.5-characterid"

-- This is the first native call in the standard spawner's Spawn Blueprint
-- where the already-selected CharacterID is still an input and Palworld has
-- NOT yet built the final FPalIndividualCharacterSaveParameter.
local INIT_CHARACTER_HOOK =
    "/Script/Pal.PalUtility:GetInitializedCharacterSaveParemter"

local Settings = {
    Enabled = config.Enabled ~= false,
    Seed = tonumber(config.Seed) or 13371337,
    AvoidOriginal = config.AvoidOriginal ~= false,
    Debug = config.Debug ~= false,
    MaxDebugLogs = math.max(0, math.floor(tonumber(config.MaxDebugLogs) or 250))
}

-- Extra belt-and-suspenders blocklist. In practice the random pool is generated
-- only from the curated ordinary-wildlife rows, so unique-only legends should
-- not enter it in the first place.
local LEGENDARY_IDS = {
    saintcentaur = true,      -- Paladius
    blackcentaur = true,      -- Necromus
    icehorse = true,          -- Frostallion
    icehorse_dark = true,     -- Frostallion Noct
    jetdragon = true,         -- Jetragon
    poseidonorca = true,      -- Neptilius
    kingwhale = true          -- Panthalus
}

local Eligible = {}
local SpeciesPool = {}
local SpeciesSeen = {}
local KismetSystemLibrary = nil
local DebugLogs = 0

local function log(message)
    print(string.format("[%s v%s] %s\n", MOD_NAME, MOD_VERSION, tostring(message)))
end

local function debugLog(message)
    if Settings.Debug and DebugLogs < Settings.MaxDebugLogs then
        DebugLogs = DebugLogs + 1
        log(message)
    end
end

local function unwrap(value)
    if value == nil then return nil end

    local ok, result = pcall(function()
        return value:get()
    end)

    if ok and result ~= nil then
        return result
    end

    return value
end

local function safeGet(object, field)
    object = unwrap(object)
    if object == nil then return nil end

    local ok, result = pcall(function()
        return object[field]
    end)

    if not ok then return nil end
    return unwrap(result)
end

local function safeCall(object, methodName, ...)
    object = unwrap(object)
    if object == nil then return nil, false end

    local args = { ... }

    local ok, result = pcall(function()
        return object[methodName](object, table.unpack(args))
    end)

    if not ok then return nil, false end
    return unwrap(result), true
end

local function toName(value)
    value = unwrap(value)
    if value == nil then return nil end

    local ok, result = pcall(function()
        return value:ToString()
    end)

    if ok and result ~= nil and tostring(result) ~= "" then
        return tostring(result)
    end

    result = tostring(value)
    return result ~= "" and result or nil
end

local function normalize(value)
    return value ~= nil and string.lower(tostring(value)) or nil
end

local function getRuntimeKey(object)
    object = unwrap(object)
    if object == nil then return nil end

    local ok, result = pcall(function()
        return object:GetFullName()
    end)

    if ok and result ~= nil and tostring(result) ~= "" then
        return tostring(result)
    end

    return tostring(object)
end

local function getSpawnerName(spawner)
    return toName(safeGet(spawner, "SpawnerName"))
end

local function getKismetSystemLibrary()
    if KismetSystemLibrary ~= nil then
        return KismetSystemLibrary
    end

    local ok, result = pcall(function()
        return StaticFindObject("/Script/Engine.Default__KismetSystemLibrary")
    end)

    if ok and result ~= nil then
        KismetSystemLibrary = unwrap(result)
    end

    return KismetSystemLibrary
end

local function readNetworkFlag(library, functionName, context)
    local value, ok = safeCall(library, functionName, context)
    if not ok then return nil end

    if value == true then return true end
    if value == false then return false end

    local numeric = tonumber(value)
    if numeric ~= nil then
        return numeric ~= 0
    end

    return nil
end

local function hasAuthority(context)
    local library = getKismetSystemLibrary()
    if library == nil then
        return false
    end

    local standalone = readNetworkFlag(library, "IsStandalone", context)
    local server = readNetworkFlag(library, "IsServer", context)

    return standalone == true or server == true
end

local function buildDatabase()
    local rows = 0

    for _, entry in ipairs(spawnDefaults) do
        if type(entry) == "table"
            and type(entry.SpawnerName) == "string"
            and entry.SpawnerName ~= ""
            and type(entry.PalId) == "string"
            and entry.PalId ~= ""
        then
            local sheetKey = normalize(entry.SpawnerName)
            local palKey = normalize(entry.PalId)

            Eligible[sheetKey] = Eligible[sheetKey] or {}
            Eligible[sheetKey][palKey] = true
            rows = rows + 1

            if not SpeciesSeen[palKey]
                and not LEGENDARY_IDS[palKey]
                and not string.match(palKey, "^boss_")
                and not string.match(palKey, "^fboss_")
            then
                SpeciesSeen[palKey] = true
                table.insert(SpeciesPool, entry.PalId)
            end
        end
    end

    table.sort(SpeciesPool, function(a, b)
        return string.lower(a) < string.lower(b)
    end)

    log(string.format(
        "DATA | EligibleRows=%d | RandomPool=%d | Scope=ordinary-wildlife",
        rows,
        #SpeciesPool
    ))

    return rows > 0 and #SpeciesPool > 0
end

local function hashString(value)
    -- Deterministic integer hash; intentionally simple and stable in Lua.
    local hash = 2166136261
    local textValue = tostring(value)

    for i = 1, #textValue do
        hash = (hash * 16777619 + string.byte(textValue, i)) % 2147483647
    end

    return hash
end

local function chooseSpecies(runtimeKey, spawnerName, originalId)
    if #SpeciesPool == 0 then return nil end

    -- Stable local ecology:
    -- same physical spawner + same authored Pal ID + same mod seed
    -- => same replacement on every spawn.
    local salt = table.concat({
        tostring(Settings.Seed),
        tostring(runtimeKey),
        tostring(spawnerName),
        tostring(originalId)
    }, "|")

    local start = (hashString(salt) % #SpeciesPool) + 1

    for offset = 0, #SpeciesPool - 1 do
        local index = ((start - 1 + offset) % #SpeciesPool) + 1
        local candidate = SpeciesPool[index]

        if not LEGENDARY_IDS[normalize(candidate)]
            and (
                not Settings.AvoidOriginal
                or normalize(candidate) ~= normalize(originalId)
            )
        then
            return candidate
        end
    end

    return nil
end

local function isEligible(spawnerName, palId)
    local sheet = Eligible[normalize(spawnerName)]

    return sheet ~= nil
        and sheet[normalize(palId)] == true
end

local function onInitializeCharacterPre(
    utilityContext,
    worldContextObject,
    characterId,
    uniqueNpcId,
    level,
    ownerPlayerUid,
    outParameter,
    disableRandomPassiveSkill,
    rarePalAble
)
    if not Settings.Enabled then return end

    local spawner = unwrap(worldContextObject)
    if spawner == nil then return end

    -- This utility is used throughout the game. Only act when WorldContextObject
    -- is one of the authored ordinary-wildlife spawners in our curated database.
    local spawnerName = getSpawnerName(spawner)
    if spawnerName == nil then return end

    local originalId = toName(unwrap(characterId))
    if originalId == nil then return end

    if not isEligible(spawnerName, originalId) then
        return
    end

    if not hasAuthority(spawner) then
        return
    end

    local runtimeKey = getRuntimeKey(spawner)
    if runtimeKey == nil then return end

    local replacement = chooseSpecies(
        runtimeKey,
        spawnerName,
        originalId
    )

    if replacement == nil then
        return
    end

    local ok, err = pcall(function()
        characterId:set(FName(replacement))
    end)

    if not ok then
        log(string.format(
            "ERROR | CHARACTERID write | Sheet=%s | %s -> %s | %s",
            spawnerName,
            originalId,
            replacement,
            tostring(err)
        ))
        return
    end

    debugLog(string.format(
        "REPLACE | INITPRE | Sheet=%s | %s -> %s | Level=%s",
        spawnerName,
        originalId,
        replacement,
        tostring(tonumber(unwrap(level)))
    ))
end

if not Settings.Enabled then
    log("Disabled by config.")
elseif buildDatabase() then
    local preId, postId = RegisterHook(
        INIT_CHARACTER_HOOK,
        function(
            utilityContext,
            worldContextObject,
            characterId,
            uniqueNpcId,
            level,
            ownerPlayerUid,
            outParameter,
            disableRandomPassiveSkill,
            rarePalAble
        )
            local ok, err = pcall(function()
                onInitializeCharacterPre(
                    utilityContext,
                    worldContextObject,
                    characterId,
                    uniqueNpcId,
                    level,
                    ownerPlayerUid,
                    outParameter,
                    disableRandomPassiveSkill,
                    rarePalAble
                )
            end)

            if not ok then
                log("ERROR | INITPRE callback | " .. tostring(err))
            end
        end,
        function()
            -- No post mutation required.
        end
    )

    log(string.format(
        "Loaded | Mutation=CharacterIDInitPre | FirstSpawn=true | SpeciesOnly=true | Hook=%s/%s",
        tostring(preId),
        tostring(postId)
    ))
end
