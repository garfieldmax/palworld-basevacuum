# RandomSpeciesSpawner design target

## Goal

Build a custom Palworld spawn overlay on top of a **non-random vanilla core**.

The mod should provide a randomized overworld ecology without inheriting the progression problems and broad side effects of Palworld's built-in randomizer.

## Target behavior

| Encounter type | Target behavior |
| --- | --- |
| Ordinary overworld wildlife | Random species + **species-native level band** |
| Dungeons | Vanilla species + standard dungeon level |
| Field bosses / BOSS / FBOSS | Untouched |
| Unique legendary encounters | Untouched and excluded from replacement pool |
| Cages / imprisonment | Untouched |
| Syndicate / humans / NPCs | Untouched |
| Quest / predator / scripted encounters | Untouched |
| Other unknown/special spawn families | Fail closed until explicitly reviewed |

Palworld's built-in randomizer remains off.

## Ecology semantics

The desired randomizer is **stable by place**, not a lottery on every respawn.

For a given world/randomizer seed, one physical spawn point should repeatedly produce the same replacement mapping for an authored species. Different physical spawn points that use the same Palworld spawn sheet may map that authored species differently.

Example:

```text
green_A location A:
    SheepBall -> SumoDog

green_A location B:
    SheepBall -> RobinHood
```

Repeated spawns at location A should continue to use SumoDog rather than rerolling every time.

### Current v0.1.5 identity

The current salt is:

```text
Seed
+ physical spawner runtime/full object identity
+ SpawnerName
+ original PalId
```

This is deterministic during normal operation and produced stable duplicate mappings in testing.

Longer term, replace runtime object identity with an explicitly stable map key such as:

```text
World/randomizer seed
+ stable map/grid identity or authored location
+ SpawnerName
+ original PalId
```

so ecology is guaranteed to remain stable across restarts and is less vulnerable to object-path changes after Palworld updates.

## Species pool

v0.1.5 derives the replacement pool from unique Pal IDs present in the curated ordinary-wildlife allowlist.

Current observed size:

```text
EligibleRows = 1102
RandomPool   = 222
```

Advantages:

- naturally excludes many special/internal actors
- uses already-reviewed ordinary-wildlife data
- fail-closed by default

Limitation:

- species that never occur as ordinary wild spawns cannot enter the pool even if they would be valid non-legendary candidates.

Possible future option: build the candidate pool from the current master Pal character table, then explicitly filter humans, internals, bosses, legends, event-only actors, etc. Keep the source-spawner allowlist as the safety gate even if the candidate pool becomes broader.

## Level semantics

### Current v0.1.5 behavior

Species changes, but the incoming vanilla level is untouched.

Therefore:

```text
PinkCat level 2
    -> random species level 2
```

and an authored high-level slot remains high level:

```text
GrassMammoth level 29
    -> random species level 29
```

This proves the species interception layer works, but it is not the intended progression model.

### Target

Each replacement species should receive a **canonical species-native level band**.

Examples conceptually:

```text
Chickpea-like early species -> level 1-3
midgame species             -> its midgame band
late/powerful species       -> its late-game band
```

This prevents powerful late-game species from appearing at level 2 and becoming trivial early captures.

The final band table should be explicit/canonical rather than choosing an arbitrary observed `MinLevel/MaxLevel` pair from one of the species' many vanilla zone entries.

The current CharacterID hook also exposes the `Level` argument, so species and target level can be changed at the same safe native boundary.

## Group semantics

The current hook replaces the final selected Pal ID. This is sufficient for the proof and keeps Palworld's spawn machinery intact.

For the final ecology model, preserve meaningful group semantics where possible:

- same-species packs should remain coherent
- leader/follower compositions should not become arbitrary soup
- day/night/weather restrictions, counts, weights and spawn locations should stay Palworld-native unless intentionally redesigned

A future group-aware mapping layer can derive one ecological replacement plan per authored spawn group rather than making unrelated independent choices.

## Chosen interception architecture

Working v0.1.5 hook:

```text
/Script/Pal.PalUtility:GetInitializedCharacterSaveParemter
```

Standard spawn path:

```text
SpawnGroup selection
    -> Pal/tribe selection
    -> level selection
    -> GetInitializedCharacterSaveParemter(CharacterID, Level, ...)
         ^ native pre-hook mutates CharacterID here
    -> SpawnNewCharacter
```

Why this is preferable:

- native `/Script/` hook has a true UE4SS pre-hook
- first spawn is affected
- no mutation while world-partition actors are being constructed
- no delayed references to UObjects
- no persistent changes to Palworld's `SpawnGroupList`
- Palworld builds the correct final character data after substitution

## Safety gate

The utility hook is broad, so scope must remain narrow:

```text
WorldContextObject has SpawnerName
AND SpawnerName exists in curated ordinary-wildlife allowlist
AND incoming CharacterID is valid for that same sheet
AND server/standalone authority
=> eligible for replacement
```

Everything else passes through untouched.

Do not weaken this gate merely to increase coverage; add new source families only after identifying what they represent.

## Failed / superseded approaches

### v0.1.1: constructor-time spawner mutation

Used `NotifyOnNewObject` on `BP_PalSpawner_Standard_C` and mutated `SpawnGroupList`.

Result:

- replacement data was correct
- FBOSS exclusion worked
- game crashed during world load while large numbers of world-partition spawners were being constructed

Conclusion: do not mutate these spawners from construction notification.

### v0.1.2 / v0.1.3: patch after level hook

Used the proven `GetSpawnLevelRandom_OneTribe` hook, then rewrote the table for future spawns.

Result:

- stable
- replacements appeared
- every newly streamed spawner emitted a vanilla first wave before being patched

Conclusion: safe but inherently one spawn too late.

### v0.1.4: base BlueprintTick_Spawning pre-hook

Attempted to patch the table before the native base tick.

Result:

- level verification hooks fired
- no PRESPAWN patch lines appeared
- generated `BP_PalSpawner_Standard_C` does not dispatch through that base UFunction in the way assumed

Conclusion: wrong hook target.

### v0.1.5: CharacterID initialization pre-hook

Result:

- works from fresh start
- new species dominate immediately
- no constructor crash
- original vanilla slot levels are preserved

This is the current foundation.

## Near-term roadmap

1. Keep v0.1.5 as the known-good species interception baseline.
2. Add an explicit species-native level-band table and mutate `Level` at the same pre-hook.
3. Verify level replacement on standalone.
4. Verify authority and replication on Linux dedicated server with Steam PC + PS5 clients.
5. Replace runtime object identity with a more explicitly persistent map/spawn key.
6. Decide whether the final candidate species pool stays allowlist-derived or expands to all valid non-legendary Pal IDs.
7. Add group-aware ecology semantics if independent final-Pal substitution creates undesirable mixed packs.
8. Revalidate dungeon, boss, cage, scripted and NPC exclusion after every major Palworld data update.
