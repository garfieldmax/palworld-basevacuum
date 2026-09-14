# Palworld BaseVacuum

A conservative **server-side Palworld mod** that moves physical ground drops inside a base into **existing matching storage stacks**.

The goal is simple: reduce transport clutter without turning base storage into a magical unrestricted router.

## What it does

- Scans physical `PalMapObjectDropItemModel` ground drops **inside base boundaries only**.
- Quick-stacks them into an **already-existing matching item stack** in registered base storage.
- Batches same-item drops per base.
- Requires **no client-side mod**; tested with Steam PC and PS5 clients connecting to a dedicated server.
- Leaves a drop on the ground when no matching stack with free capacity exists.

## What it deliberately does not do

- It does **not** create new stacks in empty chest slots.
- It does **not** vacuum items outside a base.
- It skips the shared **Guild Chest**.
- It does not handle production held internally by mining/logging/oil structures; this mod is for physical ground drops.
- It does not globally intercept item creation.

## Tested environment

The v1.0.0 build was tested on:

- Palworld dedicated server `v1.0.4.102642`
- Ubuntu Linux dedicated server
- native Linux UE4SS / Lua mod loading
- Steam PC + PS5 clients

Future Palworld or UE4SS updates may require adjustments.

## Install

The repository layout is already the UE4SS mod layout:

```text
BaseVacuum104/
├── enabled.txt
├── config.txt
└── scripts/
    └── main.lua
```

Copy `BaseVacuum104` into your server's UE4SS `Mods` directory, for example:

```bash
/home/palworld/server/Mods/BaseVacuum104
```

Then restart the Palworld server. A successful startup contains log lines such as:

```text
[BaseVacuum104] v1.0.0 loaded; FINAL SAFE QUICK-STACK mode
[BaseVacuum104] config loaded: Enabled=true Scan=15.0s MaxDrops=50 ...
```

## Configuration

Edit `BaseVacuum104/config.txt`.

| Setting | Default | Meaning |
| --- | ---: | --- |
| `Enabled` | `1` | Enable/disable the mod |
| `ScanIntervalSeconds` | `15` | Seconds between scans; minimum enforced value is 3 |
| `MaxDropsPerScan` | `50` | Maximum physical ground-drop objects processed in one scan |
| `SettleScans` | `1` | Number of prior scans a new drop must survive before processing |
| `MaxDropStack` | `9999` | Safety limit for the count inside one physical drop stack |
| `SkipGuildChest` | `1` | Leave Guild Chest untouched |
| `LogMoves` | `1` | Log successful transfers |
| `Debug` | `0` | Extra diagnostics |

With the defaults, a newly-created drop normally remains for roughly one scan interval before it becomes eligible.

## Example

If your base already contains a non-full Wood stack:

```text
Wood ground drop inside base
        ↓
existing Wood stack found
        ↓
stack is increased
        ↓
ground drop is removed through Palworld's normal drop-model cleanup
```

If no matching stack exists, the drop stays where it is.

Typical log output:

```text
[BaseVacuum104] moved Wood x12 from 12 drops to existing base stack
[BaseVacuum104] scan bases=1 drops=74 eligible=12 movedDrops=12 movedItems=12 noMatch=0 noStorage=0 skipped=0 errors=0
```

## Design / safety choices

The mod intentionally uses a narrow transaction model:

- exact `StaticItemId` match
- existing stacks only
- simple/stackable physical drops only
- destination writes happen before source writes
- same-value preflight and readback
- rollback on write failure before source cleanup
- no empty-slot `FName` construction
- no player-inventory bridge
- no global item-spawn interception

The final source cleanup uses Palworld's own:

```text
PalMapObjectDropItemModel:OnUpdateItemContainerContentInServer()
```

During development, alternate legitimate removal paths (`DisposeSelf_ServerInternal` and `RequestPickup_ServerInternal`) were tested as well. All produced the same client-side stacking/removal sound, so v1.0.0 keeps the canonical drop-model cleanup rather than using broader or riskier workarounds.

## License

MIT. See [LICENSE](LICENSE).
