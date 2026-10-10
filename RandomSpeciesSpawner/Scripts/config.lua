return {
    Enabled = true,

    -- Regenerates the deterministic local ecology.
    Seed = 13371337,

    -- Do not map an authored species back to itself when alternatives exist.
    AvoidOriginal = true,

    -- v0.2.0 target behavior: replacement species gets its own native band.
    -- Set false only for diagnostics to preserve the original vanilla slot level.
    NativeLevels = true,

    Debug = true,
    MaxDebugLogs = 250
}
