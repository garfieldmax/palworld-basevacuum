# RandomSpeciesSpawner v0.2.0

UE4SS Lua prototype for a Palworld world with **randomized ordinary overworld species and species-native levels**, while authored bosses, dungeons and scripted encounters remain under vanilla control.

## Current architecture

The runtime uses three independent data layers:

- `Scripts/spawn_allowlist.lua` — WHERE randomization is allowed
- `Scripts/species_catalog.lua` — WHAT species may be selected
- `Scripts/species_bands.lua` — AT WHAT LEVEL the replacement appears

See [DATA.md](DATA.md) for provenance and update policy and [DESIGN.md](DESIGN.md) for the longer-term target.

## Runtime hook

The working interception point is:

```text
/Script/Pal.PalUtility:GetInitializedCharacterSaveParemter
```

The Standard spawner has already selected an authored Pal by this point, but Palworld has not yet built the final character save parameter. The native pre-hook can therefore safely replace:

```text
CharacterID -> deterministic replacement species
Level       -> deterministic value in that species' native band
```

before Palworld resolves/spawns the character.

No `SpawnGroupList` mutation is used.

## Target behavior implemented in v0.2.0

```text
ordinary overworld:
    random eligible non-legendary species
    + replacement species-native level band

dungeons:
    vanilla

field bosses / BOSS / FBOSS:
    vanilla

unique legends:
    vanilla and excluded from replacement pool

cages / Syndicate / humans / NPCs:
    vanilla

quest / predator / scripted encounters:
    vanilla
```

The source gate remains fail-closed.

## Stable local ecology

Species mapping is deterministic from:

```text
Seed
+ physical spawner runtime identity
+ SpawnerName
+ original PalId
```

So the same physical spawn point should repeatedly map an authored Pal to the same replacement during normal operation, while another physical location using the same sheet may map differently.

Level is chosen deterministically within the replacement's band and also incorporates the incoming vanilla level, allowing normal slot-level variation to create some variation inside the native band.

## Data counts

At this revision:

- source snapshot: 1,102 curated ordinary-wildlife rows
- unique allowed source pairs: 1095
- species bands: 302 CharacterIDs
- replacement catalog: 290 eligible CharacterIDs

The replacement catalog deliberately does not come from the source allowlist anymore.

## Install

```text
RandomSpeciesSpawner/
├── enabled.txt
├── README.md
├── DATA.md
├── DESIGN.md
└── Scripts/
    ├── main.lua
    ├── config.lua
    ├── spawn_allowlist.lua
    ├── species_catalog.lua
    └── species_bands.lua
```

Use with:

```text
RandomizerType=None
```

Disable the older RandomSpawnLevels experiment while validating this build.

## Expected log

```text
DATA | SourcePairs=1095 | SpeciesBands=302 | CandidatePool=290 | MissingBands=0

REPLACE | INITPRE | Sheet=green_A |
    PinkCat -> VolcanoDragon |
    VanillaLevel=3 |
    NativeBand=32..34 |
    FinalLevel=33
```

## Status

v0.1.5 established that CharacterID replacement at this pre-hook works correctly from a fresh start.

v0.2.0 adds the separated data model and native level rewrite. The level write is the new part that needs runtime validation.

If the level mutation unexpectedly fails, the code attempts to roll CharacterID back to the original species rather than leaving a powerful replacement at the original low level.

MIT license via the repository root.
