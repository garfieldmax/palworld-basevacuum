local config = require("config")
local spawnAllowlist = require("spawn_allowlist")
local speciesCatalog = require("species_catalog")
local speciesBandsRaw = require("species_bands")

local MOD_NAME = "RandomSpeciesSpawner"
local MOD_VERSION = "0.2.0-native-bands"

local INIT_CHARACTER_HOOK =
    "/Script/Pal.PalUtility:GetInitializedCharacterSaveParemter"

local Settings = {
    Enabled = config.Enabled ~= false,
    Seed = tonumber(config.Seed) or 13371337,
    AvoidOriginal = config.AvoidOriginal ~= false,
    NativeLevels = config.NativeLevels ~= false,
    Debug = config.Debug ~= false,
    MaxDebugLogs = math.max(0, math.floor(tonumber(config.MaxDebugLogs) or 250))
}

local SourceAllow = {}
local CandidatePool = {}
local SpeciesBands = {}
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
    local ok, result = pcall(function() return value:get() end)
    if ok and result ~= nil then return result end
    return value
end

local function safeGet(object, field)
    object = unwrap(object)
    if object == nil then return nil end
    local ok, result = pcall(function() return object[field] end)
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

    local ok, result = pcall(function() return value:ToString() end)
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

    local ok, result = pcall(function() return object:GetFullName() end)
    if ok and result ~= nil and tostring(result) ~= "" then
        return tostring(result)
    end

    return tostring(object)
end

local function getSpawnerName(spawner)
    return toName(safeGet(spawner, "SpawnerName"))
end

local function getKismetSystemLibrary()
    if KismetSystemLibrary ~= nil then return KismetSystemLibrary end

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
    if numeric ~= nil then return numeric ~= 0 end
    return nil
end

local function hasAuthority(context)
    local library = getKismetSystemLibrary()
    if library == nil then return false end

    local standalone = readNetworkFlag(library, "IsStandalone", context)
    local server = readNetworkFlag(library, "IsServer", context)

    return standalone == true or server == true
end

local function clamp(value, minimum, maximum)
    return math.max(minimum, math.min(maximum, value))
end

local function buildData()
    if type(spawnAllowlist) ~= "table"
        or type(speciesCatalog) ~= "table"
        or type(speciesBandsRaw) ~= "table"
    then
        log("FATAL | one or more data modules did not return a table.")
        return false
    end

    local sourcePairs = 0
    for _, entry in ipairs(spawnAllowlist) do
        if type(entry) == "table"
            and type(entry.SpawnerName) == "string"
            and entry.SpawnerName ~= ""
            and type(entry.PalId) == "string"
            and entry.PalId ~= ""
        then
            local sheetKey = normalize(entry.SpawnerName)
            local palKey = normalize(entry.PalId)
            SourceAllow[sheetKey] = SourceAllow[sheetKey] or {}
            if not SourceAllow[sheetKey][palKey] then
                SourceAllow[sheetKey][palKey] = true
                sourcePairs = sourcePairs + 1
            end
        end
    end

    local bandCount = 0
    for palId, band in pairs(speciesBandsRaw) do
        if type(palId) == "string"
            and palId ~= ""
            and type(band) == "table"
            and tonumber(band.MinLevel) ~= nil
            and tonumber(band.MaxLevel) ~= nil
        then
            local minLevel = math.floor(tonumber(band.MinLevel))
            local maxLevel = math.floor(tonumber(band.MaxLevel))
            if minLevel > maxLevel then
                minLevel, maxLevel = maxLevel, minLevel
            end

            SpeciesBands[normalize(palId)] = {
                PalId = palId,
                MinLevel = clamp(minLevel, 1, 80),
                MaxLevel = clamp(maxLevel, 1, 80)
            }
            bandCount = bandCount + 1
        end
    end

    local seen = {}
    local missingBands = 0

    for _, palId in ipairs(speciesCatalog) do
        if type(palId) == "string" and palId ~= "" then
            local key = normalize(palId)
            if not seen[key] then
                seen[key] = true
                if SpeciesBands[key] ~= nil then
                    table.insert(CandidatePool, SpeciesBands[key].PalId)
                else
                    missingBands = missingBands + 1
                    log("DATA | Catalog PalId missing species band: " .. palId)
                end
            end
        end
    end

    table.sort(CandidatePool, function(a, b)
        return string.lower(a) < string.lower(b)
    end)

    log(string.format(
        "DATA | SourcePairs=%d | SpeciesBands=%d | CandidatePool=%d | MissingBands=%d",
        sourcePairs,
        bandCount,
        #CandidatePool,
        missingBands
    ))

    return sourcePairs > 0 and #CandidatePool > 0 and missingBands == 0
end

local function hashString(value)
    local hash = 2166136261
    local textValue = tostring(value)

    for i = 1, #textValue do
        hash = (hash * 16777619 + string.byte(textValue, i)) % 2147483647
    end

    return hash
end

local function isSourceEligible(spawnerName, palId)
    local sheet = SourceAllow[normalize(spawnerName)]
    return sheet ~= nil and sheet[normalize(palId)] == true
end

local function chooseSpecies(runtimeKey, spawnerName, originalId)
    if #CandidatePool == 0 then return nil end

    local salt = table.concat({
        tostring(Settings.Seed),
        tostring(runtimeKey),
        tostring(spawnerName),
        tostring(originalId)
    }, "|")

    local start = (hashString(salt) % #CandidatePool) + 1

    for offset = 0, #CandidatePool - 1 do
        local index = ((start - 1 + offset) % #CandidatePool) + 1
        local candidate = CandidatePool[index]

        if not Settings.AvoidOriginal
            or normalize(candidate) ~= normalize(originalId)
        then
            return candidate
        end
    end

    return nil
end

local function chooseNativeLevel(
    runtimeKey,
    spawnerName,
    originalId,
    replacement,
    vanillaLevel
)
    local band = SpeciesBands[normalize(replacement)]
    if band == nil then return nil, nil end

    if band.MinLevel == band.MaxLevel then
        return band.MinLevel, band
    end

    -- Keep species assignment stable by place. Level is also deterministic,
    -- but the incoming vanilla level is included so normal slot-level variation
    -- can still produce variation inside the replacement species' native band.
    local salt = table.concat({
        tostring(Settings.Seed),
        tostring(runtimeKey),
        tostring(spawnerName),
        tostring(originalId),
        tostring(replacement),
        tostring(vanillaLevel),
        "native-level"
    }, "|")

    local width = band.MaxLevel - band.MinLevel + 1
    return band.MinLevel + (hashString(salt) % width), band
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

    local spawnerName = getSpawnerName(spawner)
    if spawnerName == nil then return end

    local originalId = toName(unwrap(characterId))
    if originalId == nil then return end

    -- Source safety is based on the ORIGINAL authored spawn pair.
    if not isSourceEligible(spawnerName, originalId) then
        return
    end

    if not hasAuthority(spawner) then
        return
    end

    local runtimeKey = getRuntimeKey(spawner)
    if runtimeKey == nil then return end

    local replacement = chooseSpecies(runtimeKey, spawnerName, originalId)
    if replacement == nil then return end

    local vanillaLevel = tonumber(unwrap(level))
    local finalLevel = vanillaLevel
    local band = SpeciesBands[normalize(replacement)]

    if Settings.NativeLevels then
        finalLevel, band = chooseNativeLevel(
            runtimeKey,
            spawnerName,
            originalId,
            replacement,
            vanillaLevel
        )

        if finalLevel == nil or band == nil then
            log("ERROR | replacement missing native level band: " .. tostring(replacement))
            return
        end
    end

    local idOk, idErr = pcall(function()
        characterId:set(FName(replacement))
    end)

    if not idOk then
        log(string.format(
            "ERROR | CharacterID write | Sheet=%s | %s -> %s | %s",
            spawnerName,
            originalId,
            replacement,
            tostring(idErr)
        ))
        return
    end

    if Settings.NativeLevels then
        local levelOk, levelErr = pcall(function()
            level:set(finalLevel)
        end)

        if not levelOk then
            -- Avoid leaving a late-game replacement at the original low level
            -- if level mutation unexpectedly fails.
            pcall(function()
                characterId:set(FName(originalId))
            end)

            log(string.format(
                "ERROR | Level write; CharacterID rollback attempted | Sheet=%s | %s -> %s | %s",
                spawnerName,
                originalId,
                replacement,
                tostring(levelErr)
            ))
            return
        end
    end

    debugLog(string.format(
        "REPLACE | INITPRE | Sheet=%s | %s -> %s | VanillaLevel=%s | NativeBand=%s..%s | FinalLevel=%s",
        spawnerName,
        originalId,
        replacement,
        tostring(vanillaLevel),
        tostring(band and band.MinLevel or "-"),
        tostring(band and band.MaxLevel or "-"),
        tostring(finalLevel)
    ))
end

if not Settings.Enabled then
    log("Disabled by config.")
elseif buildData() then
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
        end
    )

    log(string.format(
        "Loaded | Mutation=CharacterID+LevelInitPre | NativeLevels=%s | FirstSpawn=true | Hook=%s/%s",
        tostring(Settings.NativeLevels),
        tostring(preId),
        tostring(postId)
    ))
end
