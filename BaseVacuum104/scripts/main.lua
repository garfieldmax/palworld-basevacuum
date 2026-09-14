-- BaseVacuum104
-- Conservative server-side base ground-item quick-stack for Palworld.
-- Target tested environment: Palworld v1.0.4.102642, native Linux UE4SS 3.0.1 family.
--
-- Design:
--   * server only; clients/PS5 need nothing
--   * scans only PalMapObjectDropItemModel ground drops
--   * finds the containing base geometrically (base Transform + AreaRange)
--   * resolves that base's registered storage containers through its ItemStorage module
--   * ONLY moves into an EXISTING stack of the exact same StaticItemId
--   * never chooses an empty chest slot; therefore it cannot guess/bypass chest filters
--   * skips Guild Chest
--   * skips non-stackable / complex drops
--   * transaction uses readback + rollback; source is changed only after destination writes verify
--   * one scan every 15 seconds by default; newly-seen drops settle for one scan first
--
-- Final v1.0.0 keeps the proven v0.1.2 architecture:
--   * canonical Palworld source cleanup via OnUpdateItemContainerContentInServer
--   * no manual OnRep callbacks
--   * configurable scan interval (15s default)
--   * configurable per-scan physical-drop batch size (50 default)
--
-- This deliberately does less than "route anything anywhere": existing-stack-only is the
-- robust behavior we want for a family server. Seed a chest with one Wood/Stone/etc once,
-- then subsequent matching ground drops can quick-stack into it.

local VERSION = "1.0.0"
local TAG = "[BaseVacuum104]"

local Config = {
    Enabled = true,
    ScanIntervalSeconds = 15,
    ScanIntervalMs = 15000,      -- derived from ScanIntervalSeconds after config load
    StatusIntervalMs = 60000,
    MaxDropsPerScan = 50,
    SettleScans = 1,            -- wait this many complete scans before touching a new drop
    MaxDropStack = 9999,        -- fail closed on abnormal stacks
    SkipGuildChest = true,
    LogMoves = true,
    Debug = false,
}

local State = {
    seen = {},                  -- address string -> number of prior consecutive scans
    schedulerArmed = false,
    statusCountdown = 0,
    loggedSchedulerError = false,
    playerSeen = false,
}

local function log(msg)
    print(TAG .. " " .. tostring(msg) .. "\n")
end

local function dlog(msg)
    if Config.Debug then log("DEBUG: " .. tostring(msg)) end
end

local function parseBool(v)
    if type(v) == "boolean" then return v end
    if type(v) == "number" then return v ~= 0 end
    if type(v) == "string" then
        local s = v:lower():gsub("^%s+", ""):gsub("%s+$", "")
        return s == "1" or s == "true" or s == "yes" or s == "on"
    end
    return false
end

local function scriptModDir()
    local ok, info = pcall(function() return debug.getinfo(1, "S") end)
    if not ok or not info or type(info.source) ~= "string" then return "." end
    local src = info.source
    if src:sub(1, 1) == "@" then src = src:sub(2) end
    src = src:gsub("\\", "/")
    return src:match("^(.*)/[Ss]cripts/main%.lua$") or "."
end

local MOD_DIR = scriptModDir()
local CONFIG_PATH = MOD_DIR .. "/config.txt"

local function loadConfig()
    local f = io.open(CONFIG_PATH, "r")
    if not f then
        log("config.txt not found at " .. CONFIG_PATH .. " - using defaults")
        return
    end

    for raw in f:lines() do
        local line = tostring(raw)
        line = line:gsub("[;#].*$", "")
        line = line:gsub("^%s+", ""):gsub("%s+$", "")
        if line ~= "" then
            local key, value = line:match("^([%w_]+)%s*=%s*(.-)%s*$")
            if key and value and value ~= "" and Config[key] ~= nil then
                if key == "Enabled" or key == "SkipGuildChest"
                    or key == "LogMoves" or key == "Debug" then
                    Config[key] = parseBool(value)
                else
                    local n = tonumber(value)
                    if n ~= nil then Config[key] = n end
                end
            end
        end
    end
    f:close()

    Config.ScanIntervalSeconds = math.max(3, math.min(3600, tonumber(Config.ScanIntervalSeconds) or 15))
    Config.ScanIntervalMs = math.floor(Config.ScanIntervalSeconds * 1000)
    Config.StatusIntervalMs = math.max(5000, math.floor(tonumber(Config.StatusIntervalMs) or 60000))
    Config.MaxDropsPerScan = math.max(1, math.min(500, math.floor(tonumber(Config.MaxDropsPerScan) or 50)))
    Config.SettleScans = math.max(0, math.min(10, math.floor(tonumber(Config.SettleScans) or 1)))
    Config.MaxDropStack = math.max(1, math.min(999999, math.floor(tonumber(Config.MaxDropStack) or 9999)))

    log(string.format(
        "config loaded: Enabled=%s Scan=%.1fs MaxDrops=%d SettleScans=%d ExistingStacksOnly=true",
        tostring(Config.Enabled), Config.ScanIntervalSeconds, Config.MaxDropsPerScan, Config.SettleScans))
end

local function alive(obj)
    if obj == nil then return false end

    local okValid, valid = pcall(function() return obj:IsValid() end)
    if not okValid or valid ~= true then return false end

    -- Linux UE4SS can leave stale wrappers. Reject address 0 before deeper calls.
    local okAddr, addr = pcall(function() return obj:GetAddress() end)
    if okAddr and type(addr) == "number" and addr == 0 then return false end

    return true
end

local function unwrap(v)
    if v == nil then return nil end
    local ok, inner = pcall(function() return v:get() end)
    if ok and inner ~= nil then return inner end
    return v
end

-- Convert Lua tables or UE4SS TArray-like values to an ordinary Lua table.
-- We never retain these UObject wrappers beyond the current scan.
local function arrayValues(arr)
    local out = {}
    if arr == nil then return out end

    local okEach = pcall(function()
        arr:ForEach(function(_, elem)
            local v = unwrap(elem)
            if v ~= nil then out[#out + 1] = v end
        end)
    end)
    if okEach and #out > 0 then return out end

    local n = nil
    pcall(function() n = arr:GetArrayNum() end)
    if type(n) ~= "number" then
        pcall(function() n = #arr end)
    end
    n = tonumber(n) or 0

    for i = 1, n do
        local v = nil
        pcall(function() v = arr[i] end)
        v = unwrap(v)
        if v ~= nil then out[#out + 1] = v end
    end
    return out
end

local function addressKey(obj)
    if obj == nil then return nil end
    local addr = nil
    pcall(function() addr = obj:GetAddress() end)
    if addr == nil then return nil end
    local s = tostring(addr)
    if s == "" or s == "0" then return nil end
    return s
end

local function fullName(obj)
    local s = nil
    if obj ~= nil then pcall(function() s = obj:GetFullName() end) end
    return type(s) == "string" and s or ""
end

local function asNumber(v)
    if type(v) == "number" then return v end
    local n = nil
    pcall(function() n = tonumber(tostring(v)) end)
    return n
end

local function getXYFromVector(v)
    if v == nil then return nil end
    local x, y = nil, nil
    pcall(function() x = asNumber(v.X or v.x) end)
    pcall(function() y = asNumber(v.Y or v.y) end)
    if type(x) ~= "number" or type(y) ~= "number" then return nil end
    return x, y
end

-- Known-safe current-1.x route used by server-side mods: get the actor, then
-- K2_GetActorLocation. Avoid ConcreteModel:GetTransform() on native Linux because
-- by-value FTransform return buffers have caused alignment crashes in UE4SS.
local function dropXY(drop)
    if not alive(drop) then return nil end
    local actor = nil
    pcall(function() actor = drop:GetActor() end)
    if not alive(actor) then return nil end

    local loc = nil
    pcall(function() loc = actor:K2_GetActorLocation() end)
    return getXYFromVector(loc)
end

local function readBaseGeometry(base)
    if not alive(base) then return nil end
    local x, y, r = nil, nil, nil

    -- Read the replicated property directly; do not call GetTransform() on Linux.
    pcall(function()
        local tr = base.Transform
        local t = tr and tr.Translation or nil
        if t then
            x = asNumber(t.X or t.x)
            y = asNumber(t.Y or t.y)
        end
    end)
    pcall(function() r = asNumber(base.AreaRange) end)

    if type(x) ~= "number" or type(y) ~= "number" or type(r) ~= "number" or r <= 0 then
        return nil
    end
    return { obj = base, x = x, y = y, r = r }
end

local function discoverBases()
    local raw = nil
    local ok = pcall(function() raw = FindAllOf("PalBaseCampModel") end)
    if not ok or type(raw) ~= "table" then return {}, 1 end

    local bases = {}
    local errors = 0
    for i = 1, #raw do
        local b = readBaseGeometry(raw[i])
        if b then bases[#bases + 1] = b else errors = errors + 1 end
    end
    return bases, errors
end

local function containingBase(drop, bases)
    local x, y = dropXY(drop)
    if x == nil then return nil end

    local best, bestD2 = nil, nil
    for _, b in ipairs(bases) do
        local dx, dy = x - b.x, y - b.y
        local d2 = dx * dx + dy * dy
        if d2 <= b.r * b.r and (bestD2 == nil or d2 < bestD2) then
            best, bestD2 = b, d2
        end
    end
    return best
end

local function getMapObjectManager()
    local mgr = nil
    pcall(function() mgr = FindFirstOf("PalMapObjectManager") end)
    if alive(mgr) then return mgr end
    return nil
end

local function getStorageModule(base)
    local modules = nil
    pcall(function() modules = base.ModuleArray end)

    for _, m in ipairs(arrayValues(modules)) do
        m = unwrap(m)
        if alive(m) then
            local name = fullName(m)
            if name:find("PalBaseCampModuleItemStorage", 1, true) then
                return m
            end
        end
    end
    return nil
end

local function isGuildChest(container)
    local yes = false
    pcall(function() yes = container.bIsGuildChestContainer == true end)
    return yes
end

-- Resolve exactly the containers registered to THIS base:
-- BaseCampModel.ModuleArray -> PalBaseCampModuleItemStorage.ContainerInfos
-- -> OwnerMapObjectConcreteModelInstanceId -> MapObjectManager.FindConcreteModel
-- -> concrete.GetItemContainerModule -> module.GetContainer.
local function storageContainersForBase(base)
    local out, seen = {}, {}
    local storage = getStorageModule(base.obj)
    if not alive(storage) then return out, "no_storage_module" end

    local infos = nil
    pcall(function() infos = storage.ContainerInfos end)
    local values = arrayValues(infos)
    if #values == 0 then return out, "no_container_infos" end

    local mgr = getMapObjectManager()
    if not alive(mgr) then return out, "no_map_object_manager" end

    for _, info in ipairs(values) do
        local ownerId = nil
        pcall(function() ownerId = info.OwnerMapObjectConcreteModelInstanceId end)
        if ownerId ~= nil then
            local concrete = nil
            pcall(function() concrete = mgr:FindConcreteModel(ownerId) end)
            if alive(concrete) then
                local module = nil
                pcall(function() module = concrete:GetItemContainerModule() end)
                if alive(module) then
                    local container = nil
                    pcall(function() container = module:GetContainer() end)
                    if alive(container) and not (Config.SkipGuildChest and isGuildChest(container)) then
                        local key = addressKey(container) or fullName(container)
                        if key ~= "" and not seen[key] then
                            seen[key] = true
                            out[#out + 1] = container
                        end
                    end
                end
            end
        end
    end

    return out, nil
end

local function slotStaticId(slot)
    if not alive(slot) then return nil end
    local sid = nil
    pcall(function()
        local itemId = slot.ItemId
        local staticId = itemId and itemId.StaticId or nil
        if staticId ~= nil then sid = staticId:ToString() end
    end)
    if type(sid) ~= "string" or sid == "" or sid == "None" then return nil end
    return sid
end

local function slotCount(slot)
    if not alive(slot) then return nil end
    local n = nil
    pcall(function() n = slot:GetStackCount() end)
    n = asNumber(n)
    if type(n) ~= "number" then return nil end
    return math.floor(n)
end

local function slotMax(slot)
    if not alive(slot) then return nil end
    local n = nil
    pcall(function() n = slot:GetMaxStack() end)
    n = asNumber(n)
    if type(n) ~= "number" then return nil end
    return math.floor(n)
end

local function sourceDropInfo(drop)
    if not alive(drop) then return nil, "invalid_drop" end

    local disposed = false
    pcall(function() disposed = drop.bDisposed == true end)
    if disposed then return nil, "disposed" end

    local module = nil
    pcall(function() module = drop:GetItemContainerModule() end)
    if not alive(module) then return nil, "no_drop_module" end

    local container = nil
    pcall(function() container = module:GetContainer() end)
    if not alive(container) then return nil, "no_drop_container" end

    local n = nil
    pcall(function() n = container:Num() end)
    n = math.floor(asNumber(n) or 0)
    if n <= 0 or n > 32 then return nil, "bad_drop_container_size" end

    local found = {}
    for i = 0, n - 1 do
        local slot = nil
        pcall(function() slot = container:Get(i) end)
        if alive(slot) then
            local empty = true
            pcall(function() empty = slot:IsEmpty() end)
            local count = slotCount(slot) or 0
            if not empty and count > 0 then
                found[#found + 1] = slot
            end
        end
    end

    -- Ground resource drops are one stack. Skip compound/odd drops rather than guess.
    if #found ~= 1 then return nil, "complex_drop" end

    local slot = found[1]
    local sid = slotStaticId(slot)
    local count = slotCount(slot)
    local maxStack = slotMax(slot)
    if sid == nil or count == nil or maxStack == nil then return nil, "unreadable_drop" end
    if count <= 0 or count > Config.MaxDropStack then return nil, "unsafe_count" end

    -- Stack-size 1 items are often equipment/schematics/dynamic objects. Leave them alone.
    if maxStack <= 1 then return nil, "non_stackable" end

    return {
        drop = drop,
        container = container,
        slot = slot,
        sid = sid,
        count = count,
        maxStack = maxStack,
    }, nil
end

-- Existing-stack-only is intentional. It automatically respects chest intent:
-- if a chest already contains Wood, more Wood can go there. We never decide that
-- an empty schematic-only / ore-only / food-only chest "looks appropriate."
local function buildMovePlan(containers, sid, wanted)
    local plan = {}
    local remaining = wanted

    for _, container in ipairs(containers) do
        if remaining <= 0 then break end
        if alive(container) then
            local n = nil
            pcall(function() n = container:Num() end)
            n = math.floor(asNumber(n) or 0)

            if n > 0 and n <= 500 then
                for i = 0, n - 1 do
                    if remaining <= 0 then break end

                    local slot = nil
                    pcall(function() slot = container:Get(i) end)
                    if alive(slot) and slotStaticId(slot) == sid then
                        local before = slotCount(slot)
                        local maxStack = slotMax(slot)
                        if before and maxStack and before >= 0 and maxStack > before then
                            local add = math.min(remaining, maxStack - before)
                            if add > 0 then
                                plan[#plan + 1] = {
                                    slot = slot,
                                    container = container,
                                    before = before,
                                    after = before + add,
                                    add = add,
                                }
                                remaining = remaining - add
                            end
                        end
                    end
                end
            end
        end
    end

    return plan, wanted - remaining
end

local function rawWriteStack(slot, value)
    if not alive(slot) then return false, "invalid_slot" end
    local ok, err = pcall(function() slot.StackCount = value end)
    if not ok then return false, tostring(err) end

    local got = slotCount(slot)
    if got ~= value then
        return false, "readback=" .. tostring(got) .. " expected=" .. tostring(value)
    end
    return true, nil
end

local function preflightBatch(sourceOps, plan)
    -- Same-value writes prove all properties are writable before changing counts.
    -- Also re-check exact source values so we never act on a stale scan snapshot.
    for _, op in ipairs(sourceOps) do
        local current = slotCount(op.source.slot)
        if current ~= op.before then
            return false, "source_changed"
        end
        local ok, err = rawWriteStack(op.source.slot, op.before)
        if not ok then return false, "source_not_writable:" .. tostring(err) end
    end

    for _, p in ipairs(plan) do
        local current = slotCount(p.slot)
        if current ~= p.before then
            return false, "dest_changed"
        end
        local ok, err = rawWriteStack(p.slot, p.before)
        if not ok then return false, "dest_not_writable:" .. tostring(err) end
    end
    return true, nil
end

local function rollbackWrites(sourceOps, sourceApplied, plan, destApplied)
    -- No OnRep callbacks have fired yet when rollback is needed.
    -- Restore raw values first; the final state again equals the pre-transaction state.
    for i = sourceApplied, 1, -1 do
        local op = sourceOps[i]
        rawWriteStack(op.source.slot, op.before)
    end
    for i = destApplied, 1, -1 do
        local p = plan[i]
        rawWriteStack(p.slot, p.before)
    end
end

local function makeSourceOps(sources, amount)
    local ops = {}
    local remaining = amount

    for _, source in ipairs(sources) do
        if remaining <= 0 then break end
        local move = math.min(source.count, remaining)
        if move > 0 then
            ops[#ops + 1] = {
                source = source,
                before = source.count,
                after = source.count - move,
                move = move,
            }
            remaining = remaining - move
        end
    end

    return ops, amount - remaining
end

local function applyBatch(sourceOps, plan, amount)
    if amount <= 0 or #sourceOps == 0 or #plan == 0 then
        return false, 0, "nothing_to_move"
    end

    local ok, err = preflightBatch(sourceOps, plan)
    if not ok then return false, 0, err end

    -- Destination first. If the process dies in the tiny window between sides,
    -- duplication is preferable to silently deleting resources from the save.
    local destApplied = 0
    for i, p in ipairs(plan) do
        ok, err = rawWriteStack(p.slot, p.after)
        if not ok then
            rollbackWrites(sourceOps, 0, plan, destApplied)
            return false, 0, "dest_write_failed:" .. tostring(err)
        end
        destApplied = i
    end

    local sourceApplied = 0
    for i, op in ipairs(sourceOps) do
        ok, err = rawWriteStack(op.source.slot, op.after)
        if not ok then
            rollbackWrites(sourceOps, sourceApplied, plan, destApplied)
            return false, 0, "source_write_failed:" .. tostring(err)
        end
        sourceApplied = i
    end

    -- Do NOT manually invoke OnRep_StackCount or OnRep_ItemSlotArray.
    -- Controlled server/client testing confirmed normal replication works without
    -- those calls, and avoiding them keeps the transaction as quiet/minimal as possible.
    --
    -- Palworld's own drop-model callback remains required for canonical source cleanup.
    -- Testing showed that all legitimate visible ground-drop removal paths can produce
    -- the client stacking sound, so this callback is retained for correct lifecycle/save state.
    for _, op in ipairs(sourceOps) do
        pcall(function()
            op.source.drop:OnUpdateItemContainerContentInServer(op.source.container)
        end)
    end

    return true, amount, nil
end

local function baseKey(base)
    return addressKey(base.obj) or fullName(base.obj)
end

local function getCachedStorage(base, cache)
    local key = baseKey(base)
    if key == nil or key == "" then
        return {}, "bad_base_key"
    end

    local cached = cache[key]
    if cached ~= nil then
        return cached.containers, cached.err
    end

    local containers, err = storageContainersForBase(base)
    cache[key] = { containers = containers, err = err }
    return containers, err
end

local function processGroup(group, storageCache, stats)
    local containers, storageErr = getCachedStorage(group.base, storageCache)
    if #containers == 0 then
        stats.noStorage = stats.noStorage + #group.sources
        dlog("base storage unavailable: " .. tostring(storageErr))
        return
    end

    local wanted = 0
    for _, source in ipairs(group.sources) do
        wanted = wanted + source.count
    end

    -- One destination plan for all same-item drops in this base.
    -- Example: 8 separate Wood x1 drops become one +8 destination update.
    local plan, capacityAmount = buildMovePlan(containers, group.sid, wanted)
    if capacityAmount <= 0 then
        stats.noMatch = stats.noMatch + #group.sources
        return
    end

    local sourceOps, amount = makeSourceOps(group.sources, capacityAmount)
    if amount <= 0 then
        stats.noMatch = stats.noMatch + #group.sources
        return
    end

    local ok, moved, err = applyBatch(sourceOps, plan, amount)
    if not ok then
        stats.errors = stats.errors + 1
        log("WARN: " .. group.sid .. " batch transaction aborted safely: " .. tostring(err))
        return
    end

    stats.movedDrops = stats.movedDrops + #sourceOps
    stats.movedItems = stats.movedItems + moved

    local remainder = wanted - moved
    if Config.LogMoves then
        log(string.format(
            "moved %s x%d from %d drop%s to existing base stack%s",
            group.sid,
            moved,
            #sourceOps,
            #sourceOps == 1 and "" or "s",
            remainder > 0 and ("; ground remainder=" .. remainder) or ""
        ))
    end
end

local function tick()
    if not Config.Enabled then return end

    local stats = {
        bases = 0, drops = 0, settled = 0, eligible = 0,
        movedDrops = 0, movedItems = 0, noMatch = 0, noStorage = 0,
        outsideBase = 0, skippedComplex = 0, errors = 0,
    }

    local bases, baseErrors = discoverBases()
    stats.bases = #bases
    stats.errors = stats.errors + (baseErrors or 0)

    local drops = nil
    local okFind = pcall(function() drops = FindAllOf("PalMapObjectDropItemModel") end)
    if not okFind or type(drops) ~= "table" then
        stats.errors = stats.errors + 1
        drops = {}
    end
    stats.drops = #drops

    local seenNow = {}
    local processed = 0
    local groups = {}

    for i = 1, #drops do
        local drop = drops[i]
        if alive(drop) then
            local key = addressKey(drop)
            if key then
                seenNow[key] = true
                local prior = State.seen[key] or 0
                State.seen[key] = prior + 1

                if prior >= Config.SettleScans then
                    stats.settled = stats.settled + 1

                    -- The limit applies ONLY after geometric base membership is known.
                    local base = containingBase(drop, bases)
                    if base then
                        if processed < Config.MaxDropsPerScan then
                            processed = processed + 1

                            local source, why = sourceDropInfo(drop)
                            if source then
                                stats.eligible = stats.eligible + 1

                                local bkey = baseKey(base)
                                if bkey == nil or bkey == "" then
                                    stats.errors = stats.errors + 1
                                else
                                    local gkey = bkey .. "|" .. source.sid
                                    local group = groups[gkey]
                                    if group == nil then
                                        group = {
                                            base = base,
                                            sid = source.sid,
                                            sources = {},
                                        }
                                        groups[gkey] = group
                                    end
                                    group.sources[#group.sources + 1] = source
                                end
                            else
                                if why == "complex_drop" or why == "non_stackable" then
                                    stats.skippedComplex = stats.skippedComplex + 1
                                end
                                dlog("skip drop: " .. tostring(why))
                            end
                        end
                    else
                        stats.outsideBase = stats.outsideBase + 1
                    end
                end
            end
        end
    end

    -- Resolve each base's chest list at most once in this scan, then batch all
    -- same-item drops before touching the destination stack.
    local storageCache = {}
    for _, group in pairs(groups) do
        local ok, err = pcall(processGroup, group, storageCache, stats)
        if not ok then
            stats.errors = stats.errors + 1
            log("WARN: group processing Lua error: " .. tostring(err))
        end
    end

    for key, _ in pairs(State.seen) do
        if not seenNow[key] then State.seen[key] = nil end
    end

    if State.statusCountdown <= 0 or stats.movedDrops > 0 or stats.errors > 0 then
        log(string.format(
            "scan bases=%d drops=%d eligible=%d movedDrops=%d movedItems=%d noMatch=%d noStorage=%d skipped=%d errors=%d",
            stats.bases, stats.drops, stats.eligible, stats.movedDrops, stats.movedItems,
            stats.noMatch, stats.noStorage, stats.skippedComplex, stats.errors))
        State.statusCountdown = Config.StatusIntervalMs
    else
        State.statusCountdown = State.statusCountdown - Config.ScanIntervalMs
    end
end

local scheduleNext
scheduleNext = function(delayMs)
    local ok, err = pcall(function()
        ExecuteInGameThreadWithDelay(delayMs, function()
            local okTick, tickErr = pcall(tick)
            if not okTick then log("ERROR in tick: " .. tostring(tickErr)) end
            scheduleNext(Config.ScanIntervalMs)
        end)
    end)

    if not ok and not State.loggedSchedulerError then
        State.loggedSchedulerError = true
        log("FATAL: ExecuteInGameThreadWithDelay unavailable/failed: " .. tostring(err))
    end
end

local function registerWorldHook()
    local ok, err = pcall(function()
        RegisterHook("/Script/Engine.PlayerController:ServerAcknowledgePossession", function()
            if not State.playerSeen then
                State.playerSeen = true
                log("player possession observed; world is active")
            end
            -- Forget addresses across connection/world churn. Never retain object wrappers.
            State.seen = {}
        end)
    end)
    if not ok then
        log("WARN: world hook failed: " .. tostring(err))
    end
end

loadConfig()
registerWorldHook()

log(string.format("v%s loaded; FINAL SAFE QUICK-STACK mode", VERSION))
log("existing matching stacks only; no empty-slot routing; Guild Chest skipped; no client mod")
log("scheduler=ExecuteInGameThreadWithDelay; scan interval configurable in seconds (minimum 3s)")

State.schedulerArmed = true
scheduleNext(Config.ScanIntervalMs)
