# RandomSpeciesSpawner design target

## Core goal

Run Palworld with the built-in species randomizer off and overlay a controlled randomized ecology:

| Encounter type | Desired behavior |
| --- | --- |
| Ordinary overworld wildlife | random species + species-native level band |
| Dungeons | vanilla species + standard dungeon level |
| Field bosses / BOSS / FBOSS | untouched |
| Unique legendary encounters | untouched; legends excluded from replacement pool |
| Cages / imprisonment | untouched |
| Syndicate / humans / NPCs | untouched |
| Quest / predator / scripted encounters | untouched |
| Unknown source families | fail closed until reviewed |

## Data architecture

Never use one file for all three semantics again.

```text
spawn_allowlist.lua
    WHERE can we intervene?

species_catalog.lua
    WHAT can replace the authored species?

species_bands.lua
    AT WHAT LEVEL should that replacement appear?
```

See [DATA.md](DATA.md) for version coupling and regeneration rules.

## Ecology

The randomized world should feel like a generated ecology, not a reroll on every spawn event.

Current mapping key:

```text
mod seed
+ physical spawner runtime identity
+ SpawnerName
+ original PalId
```

A given physical spawn point therefore tends to keep the same species mapping while a different location can produce a different mapping even when it uses the same Palworld spawn sheet.

Longer term, replace runtime object identity with an explicitly persistent authored/map key if Palworld exposes one cleanly.

## Levels

v0.1.5 preserved the original slot level. That was useful only as a proof of the species hook.

v0.2.0 implements the actual target:

```text
replacement species
    -> canonical species-native band
    -> deterministic level inside that band
```

Natural wild ranges are preferred for the band table; species that are not naturally wild use their lowest real combat encounter baseline.

## Group semantics

The current hook operates on each final selected Pal.

That preserves Palworld's native:
- locations
- counts
- weights
- day/night/weather restrictions
- spawn/despawn machinery

But independent final-Pal substitution may eventually create group compositions that feel arbitrary.

Future group-aware work can add ecology grammar such as:
- coherent same-species packs
- leader/follower pairs
- biome pools
- weighted rarity
- predator/prey-style composition

Do not solve that by returning to unsafe constructor-time `SpawnGroupList` mutation.

## Proven interception architecture

Working native boundary:

```text
SpawnGroup selection
    -> Pal selection
    -> vanilla level selection
    -> PalUtility:GetInitializedCharacterSaveParemter(CharacterID, Level, ...)
         ^ mutate CharacterID and Level here
    -> CharacterManager:SpawnNewCharacter
```

This avoids:
- constructor-time world-partition mutation
- delayed UObject retention
- one-wave-late table mutation
- dependence on Blueprint post-hooks

## Superseded experiments

### v0.1.1 — NotifyOnNewObject + SpawnGroupList mutation
Replacement data worked, exclusions worked, but mutating many newly constructed world-partition spawners crashed UE4SS/game load.

### v0.1.2 / v0.1.3 — level-hook post mutation
Stable and proved table writes reached later spawns, but every newly streamed spawner emitted a vanilla first wave.

### v0.1.4 — base BlueprintTick_Spawning pre-hook
No PRESPAWN patches fired; generated BP_PalSpawner_Standard does not dispatch through that base UFunction as assumed.

### v0.1.5 — CharacterID native pre-hook
First clean success: fresh-start species replacement works without crash. Original slot level was intentionally preserved.

### v0.2.0 — separated data + CharacterID/Level native pre-hook
Current implementation. Species source and level semantics are now independent from source-spawner safety.

## Next work after v0.2.0 validation

1. Verify species-native level writes in standalone.
2. Verify Linux dedicated-server authority and replication with Steam PC + PS5 clients.
3. Replace runtime full-object identity with a more explicitly persistent map key if available.
4. Add group-aware ecology only if independent substitution produces undesirable packs.
5. Build a repeatable data-generation pipeline so Palworld content updates can regenerate:
   - source spawn metadata -> reviewed allowlist
   - master CharacterIDs -> replacement catalog candidates
   - spawn/acquisition data -> species bands
6. Re-review exclusions after every major Palworld content update.
