# Data model and update policy

RandomSpeciesSpawner intentionally separates three questions that were previously mixed together.

## 1. `spawn_allowlist.lua` — WHERE may the mod intervene?

This is the fail-closed source gate.

It contains reviewed `SpawnerName + original PalId` pairs for ordinary overworld wildlife. It is generated from the earlier curated 1,102-row spawn snapshot, with level columns removed and duplicate pairs collapsed.

The source snapshot explicitly excluded known field bosses, BOSS/FBOSS sheets, quests, predators, scripted encounters, humans/NPCs, enemy-basecamp-style sources, and unreviewed special families.

If Palworld adds a new spawn source and this file is stale, the intended failure mode is simple: **that source remains vanilla**.

### Coupling to Palworld updates

Yes, this file is tied to Palworld's authored spawn data.

It should be regenerated/reviewed after updates that add or restructure:
- regions/islands
- wild spawn sheets
- boss/scripted encounter sheets
- species assigned to ordinary wild sheets

Snapshot provenance:
- curated source snapshot generated 2026-10-04
- Palworld public build checked 2026-10-10: v1.0.5
- v1.0.5 release notes list texture/map-filter bug fixes only, so there is no published spawn/content change after this snapshot

Do not interpret that as permanent compatibility. Re-extract after future content updates.

## 2. `species_catalog.lua` — WHAT may appear as a replacement?

This is the explicit replacement policy.

The input universe is the 302 current Palworld 1.0.x CharacterIDs represented in `species_bands.lua`.

The catalog excludes:
- the seven official Legend-passive Pals
- quest-only aliases
- tower/save-instance aliases
- Yakushima scripted boss IDs

The current eligible replacement count is **290**.

This catalog is intentionally independent of the ordinary-wildlife allowlist. A valid non-legendary Pal does not have to appear in a normal overworld sheet in order to be a possible randomized species.

## 3. `species_bands.lua` — AT WHAT LEVEL should it appear?

This contains 302 species-native baseline bands generated on 2026-10-05 from the then-current Palworld 1.0.x CharacterID map and current spawn/acquisition data.

Generation policy:
- prefer natural wild-spawn level ranges
- for species without a natural wild spawn, use the lowest documented real combat encounter band
- keep this table independent of source-spawner eligibility

This is also version-coupled data. Rebuild it when Palworld adds Pals or materially changes encounter/spawn levels.

## Runtime flow

```text
Palworld selects authored source:
    SpawnerName + original PalId + vanilla level
                |
                v
spawn_allowlist.lua
"may we touch this source pair?"
        | no -> vanilla
        v yes
species_catalog.lua
"choose deterministic replacement species"
                |
                v
species_bands.lua
"choose deterministic level inside replacement's native band"
                |
                v
PalUtility:GetInitializedCharacterSaveParemter
CharacterID + Level are rewritten in the native pre-hook
```

The three datasets should never again be collapsed into a single `spawn_defaults.lua`.
