# RandomSpeciesSpawner v0.1.5

Experimental UE4SS Lua prototype for a Palworld world with **randomized ordinary overworld species** while leaving authored encounters alone.

This is the first version that correctly changes the **first visible spawn** from a fresh world/streamed area without mutating spawner objects during construction.

## Current behavior

- Palworld's built-in randomizer should be **OFF** (`RandomizerType=None`).
- Ordinary overworld wildlife is randomized from the curated non-legendary species pool.
- The replacement is selected deterministically from:
  - mod `Seed`
  - physical spawner runtime identity
  - `SpawnerName`
  - original `PalId`
- The current build changes **species only**.
- The replacement keeps the **vanilla level of the original spawn slot**.

That last point matters. Most starter-area replacements will therefore be level 1-3, but a naturally high-level vanilla slot can still produce a high-level replacement. For example, a level-29 Mammorest/GrassMammoth slot can become a different species at level 29.

This level behavior is useful for validating the hook, but it is **not the final design target**. See [DESIGN.md](DESIGN.md).

## Why this hook

The standard spawner path reaches:

```text
selected SpawnGroup / Pal
    -> GetSpawnLevelRandom_OneTribe
    -> PalUtility:GetInitializedCharacterSaveParemter
    -> CharacterManager:SpawnNewCharacter
```

v0.1.5 hooks the native pre-call:

```text
/Script/Pal.PalUtility:GetInitializedCharacterSaveParemter
```

and changes the incoming `CharacterID` before Palworld constructs the final `FPalIndividualCharacterSaveParameter`.

This gives us the important properties we wanted:

- works on the first spawn
- no constructor-time mutation
- no retained world-partition UObject references
- no delayed callbacks
- no `SpawnGroupList` mutation
- Palworld resolves the replacement Pal normally after the substitution

## Scope / safety gate

`PalUtility:GetInitializedCharacterSaveParemter` is used by many systems, so the mod is deliberately fail-closed.

A replacement happens only when:

1. `WorldContextObject` exposes a `SpawnerName`
2. that `SpawnerName` exists in the curated ordinary-wildlife `spawn_defaults.lua`
3. the original `CharacterID` is also an allowed Pal for that same sheet
4. the process has standalone/server authority

The curated table excludes known field bosses, BOSS/FBOSS sheets, quest/predator/scripted encounters, humans/NPC sources, enemy-basecamp-style sources, and other unproven special families.

Unique legendary IDs are additionally blocked from the replacement pool.

## Install

UE4SS mod layout:

```text
RandomSpeciesSpawner/
├── enabled.txt
├── README.md
├── DESIGN.md
└── Scripts/
    ├── main.lua
    ├── config.lua
    └── spawn_defaults.lua
```

Copy `RandomSpeciesSpawner` into your UE4SS `Mods` directory.

For this validation build:

- set Palworld `RandomizerType=None`
- disable the older `RandomSpawnLevels` test mod
- restart the game/world

Typical successful log:

```text
[RandomSpeciesSpawner v0.1.5-characterid] DATA | EligibleRows=1102 | RandomPool=222 | Scope=ordinary-wildlife
[RandomSpeciesSpawner v0.1.5-characterid] REPLACE | INITPRE | Sheet=green_A | PinkCat -> VolcanoDragon | Level=3
```

## Configuration

Edit `Scripts/config.lua`.

- `Seed`: regenerates the deterministic ecology.
- `AvoidOriginal`: prevents a slot from resolving back to its original Pal when possible.
- `Debug`: enable replacement logs.
- `MaxDebugLogs`: cap detailed log volume.

## Validation status

Validated in standalone play on 2026-10-10 with fresh-world/streamed-area spawns. The CharacterID pre-hook produced replacement species immediately and preserved the original slot level.

Dedicated-server behavior is intended by the authority gate but should be revalidated separately before calling this production-ready.

## Development history

Earlier experiments are documented in [DESIGN.md](DESIGN.md). In short:

- constructor-time `NotifyOnNewObject` mutation worked but crashed during world load
- level-hook post mutation was safe but one spawn too late
- base `BlueprintTick_Spawning` hook did not execute for the generated Standard spawner
- the CharacterID initialization pre-hook is the first clean interception point found so far

MIT license via the repository root.
