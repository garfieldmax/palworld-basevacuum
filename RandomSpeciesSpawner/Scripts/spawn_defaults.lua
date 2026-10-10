-- GlobalRandomSpawnLevels
-- Known-safe ordinary wild Pal spawn allowlist.
--
-- GENERATED FROM the current spawn_defaults.lua supplied for this mod
-- and the parsed SpawnSheet_PalId_Assignments metadata.
--
-- Fail-closed policy:
--   Only rows retained in this file are eligible for level randomization.
--
-- Explicitly excluded during generation include:
--   * Field bosses and their companion Pals
--   * Other BOSS / FBOSS spawn sheets
--   * Quest / predator / scripted encounter rows
--   * Human / NPC spawn sheets visible in the source data
--   * Enemy-basecamp-style sources visible in the source data
--   * Special/unknown families that are not proven ordinary wildlife
--   * Linked regional Sweepa/Swee encounter sheets: yellow_E, snow_orange_G
--   * Placeholder rows such as RowName
--
-- Reviewed exception:
--   * 1_15_plain_mopking remains allowed; its extracted rows behave like
--     independent normal lottery entries rather than a linked Sweepa family.
--
-- Unknown sources are intentionally absent.

return {
    -- 1_15_plain_mopking
    { SpawnerName = "1_15_plain_mopking", PalId = "DarkCrow", MinLevel = 15, MaxLevel = 18 },
    { SpawnerName = "1_15_plain_mopking", PalId = "Garm", MinLevel = 12, MaxLevel = 14 },
    { SpawnerName = "1_15_plain_mopking", PalId = "MimicDog", MinLevel = 12, MaxLevel = 14 },
    { SpawnerName = "1_15_plain_mopking", PalId = "MopBaby", MinLevel = 10, MaxLevel = 12 },
    { SpawnerName = "1_15_plain_mopking", PalId = "MopBaby", MinLevel = 12, MaxLevel = 14 },
    { SpawnerName = "1_15_plain_mopking", PalId = "MopKing", MinLevel = 15, MaxLevel = 18 },
    { SpawnerName = "1_15_plain_mopking", PalId = "PlantSlime", MinLevel = 12, MaxLevel = 14 },
    { SpawnerName = "1_15_plain_mopking", PalId = "PlantSlime_Flower", MinLevel = 12, MaxLevel = 14 },
    { SpawnerName = "1_15_plain_mopking", PalId = "Werewolf", MinLevel = 15, MaxLevel = 18 },
    { SpawnerName = "1_15_plain_mopking", PalId = "WoolFox", MinLevel = 12, MaxLevel = 14 },

    -- 3_1_volcano_1
    { SpawnerName = "3_1_volcano_1", PalId = "BirdDragon", MinLevel = 27, MaxLevel = 30 },
    { SpawnerName = "3_1_volcano_1", PalId = "FireKirin", MinLevel = 28, MaxLevel = 32 },
    { SpawnerName = "3_1_volcano_1", PalId = "FireKirin_Dark", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "3_1_volcano_1", PalId = "FoxMage", MinLevel = 27, MaxLevel = 31 },
    { SpawnerName = "3_1_volcano_1", PalId = "Kelpie_Fire", MinLevel = 24, MaxLevel = 29 },
    { SpawnerName = "3_1_volcano_1", PalId = "LavaGirl", MinLevel = 24, MaxLevel = 28 },
    { SpawnerName = "3_1_volcano_1", PalId = "Manticore_Dark", MinLevel = 33, MaxLevel = 37 },
    { SpawnerName = "3_1_volcano_1", PalId = "MimicDog", MinLevel = 28, MaxLevel = 34 },
    { SpawnerName = "3_1_volcano_1", PalId = "VolcanicMonster", MinLevel = 34, MaxLevel = 37 },

    -- blue_A
    { SpawnerName = "blue_A", PalId = "CatBat", MinLevel = 12, MaxLevel = 14 },
    { SpawnerName = "blue_A", PalId = "ElecCat", MinLevel = 10, MaxLevel = 12 },
    { SpawnerName = "blue_A", PalId = "Garm", MinLevel = 10, MaxLevel = 11 },
    { SpawnerName = "blue_A", PalId = "GhostBlackCat", MinLevel = 11, MaxLevel = 12 },

    -- blue_B
    { SpawnerName = "blue_B", PalId = "Alpaca", MinLevel = 10, MaxLevel = 11 },
    { SpawnerName = "blue_B", PalId = "Boar", MinLevel = 10, MaxLevel = 11 },
    { SpawnerName = "blue_B", PalId = "CatBat", MinLevel = 12, MaxLevel = 14 },
    { SpawnerName = "blue_B", PalId = "Deer", MinLevel = 11, MaxLevel = 12 },
    { SpawnerName = "blue_B", PalId = "FlameBambi", MinLevel = 9, MaxLevel = 10 },
    { SpawnerName = "blue_B", PalId = "GhostBlackCat", MinLevel = 11, MaxLevel = 12 },
    { SpawnerName = "blue_B", PalId = "HawkBird", MinLevel = 12, MaxLevel = 13 },
    { SpawnerName = "blue_B", PalId = "Monkey", MinLevel = 10, MaxLevel = 12 },
    { SpawnerName = "blue_B", PalId = "Monkey_Fire", MinLevel = 10, MaxLevel = 12 },

    -- blue_B_coast
    { SpawnerName = "blue_B_coast", PalId = "FlyingManta", MinLevel = 9, MaxLevel = 10 },
    { SpawnerName = "blue_B_coast", PalId = "Kelpie", MinLevel = 9, MaxLevel = 10 },
    { SpawnerName = "blue_B_coast", PalId = "Penguin", MinLevel = 9, MaxLevel = 10 },

    -- blue_C
    { SpawnerName = "blue_C", PalId = "CatBat", MinLevel = 12, MaxLevel = 14 },
    { SpawnerName = "blue_C", PalId = "Deer", MinLevel = 11, MaxLevel = 13 },
    { SpawnerName = "blue_C", PalId = "GhostBlackCat", MinLevel = 11, MaxLevel = 12 },
    { SpawnerName = "blue_C", PalId = "WindChimes", MinLevel = 9, MaxLevel = 10 },

    -- blue_C_coast
    { SpawnerName = "blue_C_coast", PalId = "BluePlatypus", MinLevel = 10, MaxLevel = 11 },
    { SpawnerName = "blue_C_coast", PalId = "ClioneTwins", MinLevel = 9, MaxLevel = 10 },
    { SpawnerName = "blue_C_coast", PalId = "Kelpie", MinLevel = 9, MaxLevel = 10 },

    -- blue_D
    { SpawnerName = "blue_D", PalId = "CatBat", MinLevel = 12, MaxLevel = 14 },
    { SpawnerName = "blue_D", PalId = "Garm", MinLevel = 10, MaxLevel = 11 },
    { SpawnerName = "blue_D", PalId = "GhostBlackCat", MinLevel = 11, MaxLevel = 12 },
    { SpawnerName = "blue_D", PalId = "WindChimes", MinLevel = 9, MaxLevel = 10 },

    -- blue_E
    { SpawnerName = "blue_E", PalId = "CatBat", MinLevel = 13, MaxLevel = 15 },
    { SpawnerName = "blue_E", PalId = "CowPal", MinLevel = 10, MaxLevel = 11 },
    { SpawnerName = "blue_E", PalId = "Deer", MinLevel = 11, MaxLevel = 13 },
    { SpawnerName = "blue_E", PalId = "Garm", MinLevel = 10, MaxLevel = 11 },
    { SpawnerName = "blue_E", PalId = "GhostBlackCat", MinLevel = 11, MaxLevel = 12 },
    { SpawnerName = "blue_E", PalId = "HawkBird", MinLevel = 12, MaxLevel = 13 },

    -- blue_E_boars
    { SpawnerName = "blue_E_boars", PalId = "Boar", MinLevel = 10, MaxLevel = 12 },

    -- blue_E_Kelpie
    { SpawnerName = "blue_E_Kelpie", PalId = "Kelpie", MinLevel = 9, MaxLevel = 10 },

    -- blue_E_Mantas
    { SpawnerName = "blue_E_Mantas", PalId = "FlyingManta", MinLevel = 9, MaxLevel = 10 },

    -- blue_F
    { SpawnerName = "blue_F", PalId = "BluePlatypus", MinLevel = 10, MaxLevel = 12 },
    { SpawnerName = "blue_F", PalId = "KendoFrog", MinLevel = 10, MaxLevel = 12 },

    -- blue_G
    { SpawnerName = "blue_G", PalId = "DarkCrow", MinLevel = 14, MaxLevel = 16 },
    { SpawnerName = "blue_G", PalId = "DarkCrow", MinLevel = 19, MaxLevel = 20 },
    { SpawnerName = "blue_G", PalId = "Deer", MinLevel = 11, MaxLevel = 13 },
    { SpawnerName = "blue_G", PalId = "Garm", MinLevel = 10, MaxLevel = 11 },
    { SpawnerName = "blue_G", PalId = "GrassMammoth", MinLevel = 30, MaxLevel = 33 },
    { SpawnerName = "blue_G", PalId = "HawkBird", MinLevel = 12, MaxLevel = 13 },
    { SpawnerName = "blue_G", PalId = "MimicDog", MinLevel = 10, MaxLevel = 15 },
    { SpawnerName = "blue_G", PalId = "NegativeKoala", MinLevel = 13, MaxLevel = 14 },
    { SpawnerName = "blue_G", PalId = "SweetsSheep", MinLevel = 9, MaxLevel = 10 },
    { SpawnerName = "blue_G", PalId = "Werewolf", MinLevel = 14, MaxLevel = 16 },

    -- blue_G_Lazydragons
    { SpawnerName = "blue_G_Lazydragons", PalId = "LazyDragon", MinLevel = 40, MaxLevel = 43 },

    -- blue_G_platypuses
    { SpawnerName = "blue_G_platypuses", PalId = "BluePlatypus", MinLevel = 10, MaxLevel = 14 },

    -- blue_G_serpents
    { SpawnerName = "blue_G_serpents", PalId = "Serpent", MinLevel = 12, MaxLevel = 16 },

    -- blue_H
    { SpawnerName = "blue_H", PalId = "DarkCrow", MinLevel = 14, MaxLevel = 16 },
    { SpawnerName = "blue_H", PalId = "DarkCrow", MinLevel = 19, MaxLevel = 20 },
    { SpawnerName = "blue_H", PalId = "GrassMammoth", MinLevel = 26, MaxLevel = 29 },
    { SpawnerName = "blue_H", PalId = "HawkBird", MinLevel = 12, MaxLevel = 16 },
    { SpawnerName = "blue_H", PalId = "MimicDog", MinLevel = 10, MaxLevel = 15 },
    { SpawnerName = "blue_H", PalId = "NegativeKoala", MinLevel = 13, MaxLevel = 14 },
    { SpawnerName = "blue_H", PalId = "Werewolf", MinLevel = 14, MaxLevel = 16 },

    -- blue_I
    { SpawnerName = "blue_I", PalId = "Boar", MinLevel = 10, MaxLevel = 13 },
    { SpawnerName = "blue_I", PalId = "Carbunclo", MinLevel = 10, MaxLevel = 13 },
    { SpawnerName = "blue_I", PalId = "DreamDemon", MinLevel = 12, MaxLevel = 16 },
    { SpawnerName = "blue_I", PalId = "Garm", MinLevel = 11, MaxLevel = 14 },

    -- blue_I_Carbunclos
    { SpawnerName = "blue_I_Carbunclos", PalId = "Carbunclo", MinLevel = 10, MaxLevel = 14 },

    -- blue_I_Kelpie
    { SpawnerName = "blue_I_Kelpie", PalId = "Kelpie", MinLevel = 10, MaxLevel = 14 },

    -- blue_I_Mantas
    { SpawnerName = "blue_I_Mantas", PalId = "FlyingManta", MinLevel = 10, MaxLevel = 14 },

    -- blue_J
    { SpawnerName = "blue_J", PalId = "DarkCrow", MinLevel = 15, MaxLevel = 18 },
    { SpawnerName = "blue_J", PalId = "Eagle", MinLevel = 11, MaxLevel = 15 },
    { SpawnerName = "blue_J", PalId = "Garm", MinLevel = 11, MaxLevel = 14 },
    { SpawnerName = "blue_J", PalId = "LeafMomonga", MinLevel = 10, MaxLevel = 15 },
    { SpawnerName = "blue_J", PalId = "MimicDog", MinLevel = 12, MaxLevel = 14 },
    { SpawnerName = "blue_J", PalId = "Werewolf", MinLevel = 15, MaxLevel = 18 },

    -- blue_J_hawkbirds
    { SpawnerName = "blue_J_hawkbirds", PalId = "HawkBird", MinLevel = 12, MaxLevel = 16 },

    -- blue_J_Kelpie
    { SpawnerName = "blue_J_Kelpie", PalId = "Kelpie", MinLevel = 10, MaxLevel = 14 },

    -- blue_K
    { SpawnerName = "blue_K", PalId = "DarkCrow", MinLevel = 15, MaxLevel = 18 },
    { SpawnerName = "blue_K", PalId = "FlyingManta", MinLevel = 10, MaxLevel = 12 },
    { SpawnerName = "blue_K", PalId = "Kelpie", MinLevel = 10, MaxLevel = 12 },
    { SpawnerName = "blue_K", PalId = "PinkRabbit", MinLevel = 10, MaxLevel = 12 },
    { SpawnerName = "blue_K", PalId = "SharkKid", MinLevel = 14, MaxLevel = 17 },
    { SpawnerName = "blue_K", PalId = "Werewolf", MinLevel = 15, MaxLevel = 18 },

    -- desert_orange_A
    { SpawnerName = "desert_orange_A", PalId = "ColorfulBird", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "desert_orange_A", PalId = "CuteMole", MinLevel = 31, MaxLevel = 34 },
    { SpawnerName = "desert_orange_A", PalId = "DarkCrow", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "desert_orange_A", PalId = "DarkScorpion", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "desert_orange_A", PalId = "DrillGame", MinLevel = 33, MaxLevel = 37 },
    { SpawnerName = "desert_orange_A", PalId = "FlowerDinosaur_Electric", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "desert_orange_A", PalId = "LizardMan", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "desert_orange_A", PalId = "MimicDog", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "desert_orange_A", PalId = "PinkLizard", MinLevel = 33, MaxLevel = 37 },
    { SpawnerName = "desert_orange_A", PalId = "RobinHood_Ground", MinLevel = 33, MaxLevel = 36 },
    { SpawnerName = "desert_orange_A", PalId = "Ronin", MinLevel = 33, MaxLevel = 37 },
    { SpawnerName = "desert_orange_A", PalId = "ThunderBird", MinLevel = 34, MaxLevel = 38 },

    -- desert_orange_B
    { SpawnerName = "desert_orange_B", PalId = "ColorfulBird", MinLevel = 33, MaxLevel = 36 },
    { SpawnerName = "desert_orange_B", PalId = "CuteMole", MinLevel = 33, MaxLevel = 36 },
    { SpawnerName = "desert_orange_B", PalId = "DarkCrow", MinLevel = 33, MaxLevel = 37 },
    { SpawnerName = "desert_orange_B", PalId = "DarkScorpion", MinLevel = 36, MaxLevel = 40 },
    { SpawnerName = "desert_orange_B", PalId = "DrillGame", MinLevel = 35, MaxLevel = 39 },
    { SpawnerName = "desert_orange_B", PalId = "FlowerDinosaur_Electric", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "desert_orange_B", PalId = "Gorilla_Ground", MinLevel = 35, MaxLevel = 39 },
    { SpawnerName = "desert_orange_B", PalId = "LizardMan", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "desert_orange_B", PalId = "MimicDog", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "desert_orange_B", PalId = "PinkLizard", MinLevel = 36, MaxLevel = 40 },
    { SpawnerName = "desert_orange_B", PalId = "RobinHood_Ground", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "desert_orange_B", PalId = "Ronin", MinLevel = 36, MaxLevel = 40 },

    -- desert_orange_C
    { SpawnerName = "desert_orange_C", PalId = "CactusDoll", MinLevel = 31, MaxLevel = 34 },
    { SpawnerName = "desert_orange_C", PalId = "CactusDoll_Dark", MinLevel = 33, MaxLevel = 36 },
    { SpawnerName = "desert_orange_C", PalId = "ColorfulBird", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "desert_orange_C", PalId = "CubeTurtle", MinLevel = 48, MaxLevel = 52 },
    { SpawnerName = "desert_orange_C", PalId = "DarkCrow", MinLevel = 31, MaxLevel = 34 },
    { SpawnerName = "desert_orange_C", PalId = "DarkScorpion", MinLevel = 31, MaxLevel = 35 },
    { SpawnerName = "desert_orange_C", PalId = "DrillGame", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "desert_orange_C", PalId = "FeatherOstrich", MinLevel = 31, MaxLevel = 35 },
    { SpawnerName = "desert_orange_C", PalId = "FlowerDinosaur_Electric", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "desert_orange_C", PalId = "LizardMan", MinLevel = 31, MaxLevel = 34 },
    { SpawnerName = "desert_orange_C", PalId = "MimicDog", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "desert_orange_C", PalId = "MummyPal", MinLevel = 39, MaxLevel = 44 },
    { SpawnerName = "desert_orange_C", PalId = "PinkLizard", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "desert_orange_C", PalId = "RobinHood_Ground", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "desert_orange_C", PalId = "Ronin", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "desert_orange_C", PalId = "Sekhmet", MinLevel = 37, MaxLevel = 42 },
    { SpawnerName = "desert_orange_C", PalId = "Serpent_Ground", MinLevel = 31, MaxLevel = 35 },
    { SpawnerName = "desert_orange_C", PalId = "ThunderBird", MinLevel = 35, MaxLevel = 38 },

    -- desert_orange_C_CuteMoles
    { SpawnerName = "desert_orange_C_CuteMoles", PalId = "CuteMole", MinLevel = 31, MaxLevel = 36 },

    -- desert_orange_D
    { SpawnerName = "desert_orange_D", PalId = "ColorfulBird", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "desert_orange_D", PalId = "CuteMole", MinLevel = 31, MaxLevel = 34 },
    { SpawnerName = "desert_orange_D", PalId = "DarkCrow", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "desert_orange_D", PalId = "DarkScorpion", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "desert_orange_D", PalId = "DrillGame", MinLevel = 33, MaxLevel = 37 },
    { SpawnerName = "desert_orange_D", PalId = "FlowerDinosaur_Electric", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "desert_orange_D", PalId = "LizardMan", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "desert_orange_D", PalId = "MimicDog", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "desert_orange_D", PalId = "PinkLizard", MinLevel = 33, MaxLevel = 37 },
    { SpawnerName = "desert_orange_D", PalId = "RaijinDaughter", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "desert_orange_D", PalId = "RobinHood_Ground", MinLevel = 33, MaxLevel = 36 },
    { SpawnerName = "desert_orange_D", PalId = "Ronin", MinLevel = 33, MaxLevel = 37 },
    { SpawnerName = "desert_orange_D", PalId = "ThunderBird", MinLevel = 34, MaxLevel = 38 },

    -- desert_orange_E
    { SpawnerName = "desert_orange_E", PalId = "ColorfulBird", MinLevel = 33, MaxLevel = 36 },
    { SpawnerName = "desert_orange_E", PalId = "CuteMole", MinLevel = 32, MaxLevel = 34 },
    { SpawnerName = "desert_orange_E", PalId = "DarkCrow", MinLevel = 33, MaxLevel = 37 },
    { SpawnerName = "desert_orange_E", PalId = "DarkScorpion", MinLevel = 37, MaxLevel = 40 },
    { SpawnerName = "desert_orange_E", PalId = "DrillGame", MinLevel = 35, MaxLevel = 39 },
    { SpawnerName = "desert_orange_E", PalId = "FlowerDinosaur_Electric", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "desert_orange_E", PalId = "Gorilla_Ground", MinLevel = 35, MaxLevel = 39 },
    { SpawnerName = "desert_orange_E", PalId = "LizardMan", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "desert_orange_E", PalId = "MimicDog", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "desert_orange_E", PalId = "PinkLizard", MinLevel = 36, MaxLevel = 40 },
    { SpawnerName = "desert_orange_E", PalId = "RaijinDaughter", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "desert_orange_E", PalId = "RobinHood_Ground", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "desert_orange_E", PalId = "Ronin", MinLevel = 36, MaxLevel = 40 },

    -- desert_orange_F
    { SpawnerName = "desert_orange_F", PalId = "ColorfulBird", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "desert_orange_F", PalId = "CuteMole", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "desert_orange_F", PalId = "DarkCrow", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "desert_orange_F", PalId = "DarkScorpion", MinLevel = 38, MaxLevel = 42 },
    { SpawnerName = "desert_orange_F", PalId = "DrillGame", MinLevel = 33, MaxLevel = 37 },
    { SpawnerName = "desert_orange_F", PalId = "FlowerDinosaur_Electric", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "desert_orange_F", PalId = "LizardMan", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "desert_orange_F", PalId = "MimicDog", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "desert_orange_F", PalId = "PinkLizard", MinLevel = 33, MaxLevel = 37 },
    { SpawnerName = "desert_orange_F", PalId = "RobinHood_Ground", MinLevel = 33, MaxLevel = 36 },
    { SpawnerName = "desert_orange_F", PalId = "Ronin", MinLevel = 33, MaxLevel = 37 },

    -- desert_orange_G
    { SpawnerName = "desert_orange_G", PalId = "ColorfulBird", MinLevel = 33, MaxLevel = 36 },
    { SpawnerName = "desert_orange_G", PalId = "CuteMole", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "desert_orange_G", PalId = "DarkCrow", MinLevel = 33, MaxLevel = 37 },
    { SpawnerName = "desert_orange_G", PalId = "DarkScorpion", MinLevel = 39, MaxLevel = 43 },
    { SpawnerName = "desert_orange_G", PalId = "DrillGame", MinLevel = 35, MaxLevel = 39 },
    { SpawnerName = "desert_orange_G", PalId = "FlowerDinosaur_Electric", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "desert_orange_G", PalId = "Gorilla_Ground", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "desert_orange_G", PalId = "LizardMan", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "desert_orange_G", PalId = "MimicDog", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "desert_orange_G", PalId = "PinkLizard", MinLevel = 36, MaxLevel = 40 },
    { SpawnerName = "desert_orange_G", PalId = "RobinHood_Ground", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "desert_orange_G", PalId = "Ronin", MinLevel = 38, MaxLevel = 42 },

    -- desert_orange_H_DrillGames
    { SpawnerName = "desert_orange_H_DrillGames", PalId = "DrillGame", MinLevel = 40, MaxLevel = 44 },

    -- desert_orange_Oasis
    { SpawnerName = "desert_orange_Oasis", PalId = "CactusDoll", MinLevel = 31, MaxLevel = 34 },
    { SpawnerName = "desert_orange_Oasis", PalId = "FlowerDinosaur", MinLevel = 32, MaxLevel = 34 },
    { SpawnerName = "desert_orange_Oasis", PalId = "FlowerDinosaur_Electric", MinLevel = 36, MaxLevel = 38 },
    { SpawnerName = "desert_orange_Oasis", PalId = "MimicDog", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "desert_orange_Oasis", PalId = "Plesiosaur", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "desert_orange_Oasis", PalId = "TropicalOstrich", MinLevel = 34, MaxLevel = 38 },

    -- desert_orange_Oasis_Paripi_Lazydragons
    { SpawnerName = "desert_orange_Oasis_Paripi_Lazydragons", PalId = "LazyDragon", MinLevel = 40, MaxLevel = 43 },
    { SpawnerName = "desert_orange_Oasis_Paripi_Lazydragons", PalId = "LazyDragon_Electric", MinLevel = 48, MaxLevel = 50 },

    -- desert_orange_Oasis_Suzakus
    { SpawnerName = "desert_orange_Oasis_Suzakus", PalId = "Suzaku", MinLevel = 40, MaxLevel = 44 },

    -- desert_yellow_A
    { SpawnerName = "desert_yellow_A", PalId = "ColorfulBird", MinLevel = 25, MaxLevel = 29 },
    { SpawnerName = "desert_yellow_A", PalId = "DarkCrow", MinLevel = 28, MaxLevel = 31 },
    { SpawnerName = "desert_yellow_A", PalId = "FlyingManta_Thunder", MinLevel = 26, MaxLevel = 29 },
    { SpawnerName = "desert_yellow_A", PalId = "LizardMan", MinLevel = 28, MaxLevel = 31 },
    { SpawnerName = "desert_yellow_A", PalId = "MimicDog", MinLevel = 25, MaxLevel = 29 },
    { SpawnerName = "desert_yellow_A", PalId = "NegativeOctopus_Neutral", MinLevel = 24, MaxLevel = 28 },
    { SpawnerName = "desert_yellow_A", PalId = "PinkLizard", MinLevel = 30, MaxLevel = 33 },
    { SpawnerName = "desert_yellow_A", PalId = "Ronin", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "desert_yellow_A", PalId = "Serpent", MinLevel = 24, MaxLevel = 28 },

    -- desertisland_1
    { SpawnerName = "desertisland_1", PalId = "Anubis", MinLevel = 68, MaxLevel = 72 },
    { SpawnerName = "desertisland_1", PalId = "ScorpionMan_Electric", MinLevel = 65, MaxLevel = 68 },
    { SpawnerName = "desertisland_1", PalId = "Sekhmet", MinLevel = 65, MaxLevel = 68 },

    -- desertisland_2
    { SpawnerName = "desertisland_2", PalId = "CactusDoll", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "desertisland_2", PalId = "DrillGame", MinLevel = 35, MaxLevel = 40 },

    -- desertisland_3
    { SpawnerName = "desertisland_3", PalId = "IceSeal_Ground", MinLevel = 55, MaxLevel = 60 },
    { SpawnerName = "desertisland_3", PalId = "SweetsSheep_Ground", MinLevel = 55, MaxLevel = 60 },

    -- green_A
    { SpawnerName = "green_A", PalId = "BerryGoat", MinLevel = 14, MaxLevel = 17 },
    { SpawnerName = "green_A", PalId = "ChickenPal", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_A", PalId = "DreamDemon", MinLevel = 4, MaxLevel = 7 },
    { SpawnerName = "green_A", PalId = "GrassMammoth", MinLevel = 33, MaxLevel = 35 },
    { SpawnerName = "green_A", PalId = "PinkCat", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_A", PalId = "SheepBall", MinLevel = 1, MaxLevel = 3 },

    -- green_A_coast
    { SpawnerName = "green_A_coast", PalId = "FlyingManta", MinLevel = 2, MaxLevel = 4 },

    -- green_A_Penguin
    { SpawnerName = "green_A_Penguin", PalId = "Penguin", MinLevel = 2, MaxLevel = 4 },

    -- green_A_PlantSlime
    { SpawnerName = "green_A_PlantSlime", PalId = "BerryGoat", MinLevel = 14, MaxLevel = 17 },
    { SpawnerName = "green_A_PlantSlime", PalId = "ChickenPal", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_A_PlantSlime", PalId = "DreamDemon", MinLevel = 4, MaxLevel = 7 },
    { SpawnerName = "green_A_PlantSlime", PalId = "GrassMammoth", MinLevel = 33, MaxLevel = 35 },
    { SpawnerName = "green_A_PlantSlime", PalId = "PinkCat", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_A_PlantSlime", PalId = "PlantSlime", MinLevel = 2, MaxLevel = 4 },
    { SpawnerName = "green_A_PlantSlime", PalId = "PlantSlime_Flower", MinLevel = 2, MaxLevel = 4 },
    { SpawnerName = "green_A_PlantSlime", PalId = "SamuraiDog", MinLevel = 2, MaxLevel = 4 },

    -- green_A_river
    { SpawnerName = "green_A_river", PalId = "Ganesha", MinLevel = 2, MaxLevel = 4 },

    -- green_A_SheepBall
    { SpawnerName = "green_A_SheepBall", PalId = "SheepBall", MinLevel = 1, MaxLevel = 3 },

    -- green_B
    { SpawnerName = "green_B", PalId = "BerryGoat", MinLevel = 14, MaxLevel = 17 },
    { SpawnerName = "green_B", PalId = "Carbunclo", MinLevel = 5, MaxLevel = 7 },
    { SpawnerName = "green_B", PalId = "ChickenPal", MinLevel = 3, MaxLevel = 5 },
    { SpawnerName = "green_B", PalId = "CowPal", MinLevel = 9, MaxLevel = 11 },
    { SpawnerName = "green_B", PalId = "GrassMammoth", MinLevel = 33, MaxLevel = 35 },
    { SpawnerName = "green_B", PalId = "KendoFrog", MinLevel = 4, MaxLevel = 6 },
    { SpawnerName = "green_B", PalId = "Kitsunebi", MinLevel = 5, MaxLevel = 7 },
    { SpawnerName = "green_B", PalId = "Penguin", MinLevel = 4, MaxLevel = 6 },
    { SpawnerName = "green_B", PalId = "PinkCat", MinLevel = 3, MaxLevel = 5 },
    { SpawnerName = "green_B", PalId = "PlantSlime", MinLevel = 5, MaxLevel = 7 },
    { SpawnerName = "green_B", PalId = "SheepBall", MinLevel = 3, MaxLevel = 5 },
    { SpawnerName = "green_B", PalId = "WizardOwl", MinLevel = 5, MaxLevel = 8 },

    -- green_B_coast
    { SpawnerName = "green_B_coast", PalId = "FlyingManta", MinLevel = 4, MaxLevel = 6 },
    { SpawnerName = "green_B_coast", PalId = "KendoFrog", MinLevel = 4, MaxLevel = 6 },
    { SpawnerName = "green_B_coast", PalId = "Penguin", MinLevel = 4, MaxLevel = 6 },

    -- green_B_river
    { SpawnerName = "green_B_river", PalId = "KendoFrog", MinLevel = 4, MaxLevel = 6 },
    { SpawnerName = "green_B_river", PalId = "Penguin", MinLevel = 4, MaxLevel = 6 },

    -- green_C
    { SpawnerName = "green_C", PalId = "BerryGoat", MinLevel = 14, MaxLevel = 17 },
    { SpawnerName = "green_C", PalId = "ChickenPal", MinLevel = 3, MaxLevel = 5 },
    { SpawnerName = "green_C", PalId = "CloverFairy", MinLevel = 3, MaxLevel = 5 },
    { SpawnerName = "green_C", PalId = "CuteFox", MinLevel = 5, MaxLevel = 7 },
    { SpawnerName = "green_C", PalId = "Deer", MinLevel = 9, MaxLevel = 11 },
    { SpawnerName = "green_C", PalId = "GrassMammoth", MinLevel = 33, MaxLevel = 35 },
    { SpawnerName = "green_C", PalId = "KendoFrog", MinLevel = 4, MaxLevel = 6 },
    { SpawnerName = "green_C", PalId = "Kitsunebi", MinLevel = 5, MaxLevel = 7 },
    { SpawnerName = "green_C", PalId = "LeafMomonga", MinLevel = 5, MaxLevel = 7 },
    { SpawnerName = "green_C", PalId = "NightFox", MinLevel = 5, MaxLevel = 8 },
    { SpawnerName = "green_C", PalId = "Penguin", MinLevel = 4, MaxLevel = 6 },
    { SpawnerName = "green_C", PalId = "PinkCat", MinLevel = 3, MaxLevel = 5 },
    { SpawnerName = "green_C", PalId = "SheepBall", MinLevel = 3, MaxLevel = 5 },

    -- green_C_river
    { SpawnerName = "green_C_river", PalId = "KendoFrog", MinLevel = 4, MaxLevel = 6 },
    { SpawnerName = "green_C_river", PalId = "Penguin", MinLevel = 4, MaxLevel = 6 },

    -- green_D
    { SpawnerName = "green_D", PalId = "Alpaca", MinLevel = 7, MaxLevel = 9 },
    { SpawnerName = "green_D", PalId = "BerryGoat", MinLevel = 14, MaxLevel = 17 },
    { SpawnerName = "green_D", PalId = "Boar", MinLevel = 5, MaxLevel = 7 },
    { SpawnerName = "green_D", PalId = "ChickenPal", MinLevel = 3, MaxLevel = 5 },
    { SpawnerName = "green_D", PalId = "CloverFairy", MinLevel = 3, MaxLevel = 5 },
    { SpawnerName = "green_D", PalId = "GrassMammoth", MinLevel = 33, MaxLevel = 35 },
    { SpawnerName = "green_D", PalId = "Kitsunebi", MinLevel = 5, MaxLevel = 7 },
    { SpawnerName = "green_D", PalId = "NegativeKoala", MinLevel = 5, MaxLevel = 8 },
    { SpawnerName = "green_D", PalId = "PinkCat", MinLevel = 3, MaxLevel = 5 },
    { SpawnerName = "green_D", PalId = "SheepBall", MinLevel = 3, MaxLevel = 5 },

    -- green_E
    { SpawnerName = "green_E", PalId = "ChickenPal", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_E", PalId = "DreamDemon", MinLevel = 4, MaxLevel = 7 },
    { SpawnerName = "green_E", PalId = "FlowerDinosaur", MinLevel = 25, MaxLevel = 28 },
    { SpawnerName = "green_E", PalId = "GrassMammoth", MinLevel = 33, MaxLevel = 35 },
    { SpawnerName = "green_E", PalId = "PinkRabbit", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_E", PalId = "SheepBall", MinLevel = 1, MaxLevel = 3 },

    -- green_G
    { SpawnerName = "green_G", PalId = "Alpaca", MinLevel = 14, MaxLevel = 17 },
    { SpawnerName = "green_G", PalId = "CuteFox", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_G", PalId = "FlowerDinosaur", MinLevel = 25, MaxLevel = 28 },
    { SpawnerName = "green_G", PalId = "Penguin", MinLevel = 4, MaxLevel = 7 },
    { SpawnerName = "green_G", PalId = "PinkCat", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_G", PalId = "Plesiosaur", MinLevel = 33, MaxLevel = 35 },
    { SpawnerName = "green_G", PalId = "SheepBall", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_G", PalId = "WizardOwl", MinLevel = 4, MaxLevel = 7 },

    -- green_G_coast
    { SpawnerName = "green_G_coast", PalId = "FlyingManta", MinLevel = 2, MaxLevel = 4 },

    -- green_G_river
    { SpawnerName = "green_G_river", PalId = "Penguin", MinLevel = 2, MaxLevel = 4 },

    -- green_H
    { SpawnerName = "green_H", PalId = "FlameBambi", MinLevel = 4, MaxLevel = 6 },
    { SpawnerName = "green_H", PalId = "Monkey", MinLevel = 4, MaxLevel = 6 },

    -- green_I
    { SpawnerName = "green_I", PalId = "Alpaca", MinLevel = 14, MaxLevel = 17 },
    { SpawnerName = "green_I", PalId = "FlowerDinosaur", MinLevel = 25, MaxLevel = 28 },
    { SpawnerName = "green_I", PalId = "Ganesha", MinLevel = 2, MaxLevel = 4 },
    { SpawnerName = "green_I", PalId = "PinkCat", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_I", PalId = "Plesiosaur", MinLevel = 33, MaxLevel = 35 },
    { SpawnerName = "green_I", PalId = "SheepBall", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_I", PalId = "WizardOwl", MinLevel = 4, MaxLevel = 7 },
    { SpawnerName = "green_I", PalId = "WoolFox", MinLevel = 1, MaxLevel = 3 },

    -- green_I_coast
    { SpawnerName = "green_I_coast", PalId = "FlyingManta", MinLevel = 2, MaxLevel = 4 },

    -- green_I_river
    { SpawnerName = "green_I_river", PalId = "Ganesha", MinLevel = 2, MaxLevel = 4 },

    -- green_J
    { SpawnerName = "green_J", PalId = "Carbunclo", MinLevel = 4, MaxLevel = 6 },
    { SpawnerName = "green_J", PalId = "LavaGirl", MinLevel = 4, MaxLevel = 6 },

    -- green_K
    { SpawnerName = "green_K", PalId = "Alpaca", MinLevel = 14, MaxLevel = 17 },
    { SpawnerName = "green_K", PalId = "ChickenPal", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_K", PalId = "FlowerDinosaur", MinLevel = 25, MaxLevel = 28 },
    { SpawnerName = "green_K", PalId = "NegativeKoala", MinLevel = 4, MaxLevel = 7 },
    { SpawnerName = "green_K", PalId = "Penguin", MinLevel = 2, MaxLevel = 4 },
    { SpawnerName = "green_K", PalId = "PinkRabbit", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_K", PalId = "SakuraSaurus", MinLevel = 33, MaxLevel = 35 },
    { SpawnerName = "green_K", PalId = "SheepBall", MinLevel = 1, MaxLevel = 3 },

    -- green_K_river
    { SpawnerName = "green_K_river", PalId = "Ganesha", MinLevel = 2, MaxLevel = 4 },

    -- green_L
    { SpawnerName = "green_L", PalId = "LavaGirl", MinLevel = 4, MaxLevel = 6 },
    { SpawnerName = "green_L", PalId = "PlantSlime", MinLevel = 4, MaxLevel = 6 },

    -- green_M
    { SpawnerName = "green_M", PalId = "Alpaca", MinLevel = 14, MaxLevel = 17 },
    { SpawnerName = "green_M", PalId = "Carbunclo", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_M", PalId = "FlameBambi", MinLevel = 4, MaxLevel = 6 },
    { SpawnerName = "green_M", PalId = "FlowerDinosaur", MinLevel = 25, MaxLevel = 28 },
    { SpawnerName = "green_M", PalId = "Ganesha", MinLevel = 2, MaxLevel = 4 },
    { SpawnerName = "green_M", PalId = "NegativeKoala", MinLevel = 4, MaxLevel = 7 },
    { SpawnerName = "green_M", PalId = "PinkRabbit", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_M", PalId = "PlantSlime", MinLevel = 4, MaxLevel = 6 },
    { SpawnerName = "green_M", PalId = "SakuraSaurus", MinLevel = 33, MaxLevel = 35 },
    { SpawnerName = "green_M", PalId = "WoolFox", MinLevel = 1, MaxLevel = 3 },

    -- green_M_coast
    { SpawnerName = "green_M_coast", PalId = "FlyingManta", MinLevel = 2, MaxLevel = 4 },

    -- green_M_river
    { SpawnerName = "green_M_river", PalId = "Ganesha", MinLevel = 2, MaxLevel = 4 },

    -- green_N
    { SpawnerName = "green_N", PalId = "BerryGoat", MinLevel = 20, MaxLevel = 28 },
    { SpawnerName = "green_N", PalId = "Ganesha", MinLevel = 2, MaxLevel = 4 },
    { SpawnerName = "green_N", PalId = "NightFox", MinLevel = 4, MaxLevel = 7 },
    { SpawnerName = "green_N", PalId = "PinkCat", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_N", PalId = "PinkRabbit", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_N", PalId = "Plesiosaur", MinLevel = 33, MaxLevel = 35 },
    { SpawnerName = "green_N", PalId = "WoolFox", MinLevel = 1, MaxLevel = 3 },

    -- green_N_coast
    { SpawnerName = "green_N_coast", PalId = "FlyingManta", MinLevel = 2, MaxLevel = 4 },

    -- green_N_river
    { SpawnerName = "green_N_river", PalId = "Ganesha", MinLevel = 2, MaxLevel = 4 },

    -- green_O
    { SpawnerName = "green_O", PalId = "LavaGirl", MinLevel = 4, MaxLevel = 6 },
    { SpawnerName = "green_O", PalId = "Monkey", MinLevel = 4, MaxLevel = 6 },

    -- green_P
    { SpawnerName = "green_P", PalId = "BerryGoat", MinLevel = 20, MaxLevel = 28 },
    { SpawnerName = "green_P", PalId = "NightFox", MinLevel = 4, MaxLevel = 7 },
    { SpawnerName = "green_P", PalId = "Penguin", MinLevel = 2, MaxLevel = 4 },
    { SpawnerName = "green_P", PalId = "PinkCat", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_P", PalId = "PinkRabbit", MinLevel = 1, MaxLevel = 3 },
    { SpawnerName = "green_P", PalId = "Plesiosaur", MinLevel = 33, MaxLevel = 35 },
    { SpawnerName = "green_P", PalId = "WoolFox", MinLevel = 1, MaxLevel = 3 },

    -- green_P_coast
    { SpawnerName = "green_P_coast", PalId = "FlyingManta", MinLevel = 2, MaxLevel = 4 },

    -- green_P_river
    { SpawnerName = "green_P_river", PalId = "Penguin", MinLevel = 2, MaxLevel = 4 },

    -- green_Q
    { SpawnerName = "green_Q", PalId = "Carbunclo", MinLevel = 4, MaxLevel = 6 },
    { SpawnerName = "green_Q", PalId = "FlameBambi", MinLevel = 4, MaxLevel = 6 },

    -- green_R
    { SpawnerName = "green_R", PalId = "Hedgehog", MinLevel = 4, MaxLevel = 8 },

    -- orange_A
    { SpawnerName = "orange_A", PalId = "CatMage", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "orange_A", PalId = "HadesBird", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "orange_A", PalId = "MimicDog", MinLevel = 30, MaxLevel = 36 },
    { SpawnerName = "orange_A", PalId = "NaughtyCat", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "orange_A", PalId = "PurpleSpider", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "orange_A", PalId = "QueenBee", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "orange_A", PalId = "SoldierBee", MinLevel = 28, MaxLevel = 33 },
    { SpawnerName = "orange_A", PalId = "Werewolf", MinLevel = 34, MaxLevel = 37 },

    -- orange_A_HerculesBeetles
    { SpawnerName = "orange_A_HerculesBeetles", PalId = "HerculesBeetle", MinLevel = 34, MaxLevel = 38 },

    -- orange_ALL_Ice_BirdDragons
    { SpawnerName = "orange_ALL_Ice_BirdDragons", PalId = "BirdDragon_Ice", MinLevel = 30, MaxLevel = 34 },

    -- orange_ALL_Paripi_Lazydragons
    { SpawnerName = "orange_ALL_Paripi_Lazydragons", PalId = "LazyDragon_Electric", MinLevel = 48, MaxLevel = 53 },

    -- orange_C
    { SpawnerName = "orange_C", PalId = "CatMage", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "orange_C", PalId = "GrassPanda", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "orange_C", PalId = "HadesBird", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "orange_C", PalId = "MimicDog", MinLevel = 30, MaxLevel = 36 },
    { SpawnerName = "orange_C", PalId = "NaughtyCat", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "orange_C", PalId = "PandaGirl", MinLevel = 28, MaxLevel = 30 },
    { SpawnerName = "orange_C", PalId = "RobinHood", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "orange_C", PalId = "Werewolf", MinLevel = 34, MaxLevel = 38 },

    -- orange_D
    { SpawnerName = "orange_D", PalId = "CatMage", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "orange_D", PalId = "Gorilla", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "orange_D", PalId = "HadesBird", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "orange_D", PalId = "MimicDog", MinLevel = 30, MaxLevel = 36 },
    { SpawnerName = "orange_D", PalId = "NaughtyCat", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "orange_D", PalId = "ThunderBird", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "orange_D", PalId = "Werewolf", MinLevel = 34, MaxLevel = 37 },

    -- orange_E
    { SpawnerName = "orange_E", PalId = "CatMage", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "orange_E", PalId = "HadesBird", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "orange_E", PalId = "LazyDragon", MinLevel = 30, MaxLevel = 35 },
    { SpawnerName = "orange_E", PalId = "MimicDog", MinLevel = 30, MaxLevel = 36 },
    { SpawnerName = "orange_E", PalId = "NaughtyCat", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "orange_E", PalId = "Serpent", MinLevel = 30, MaxLevel = 35 },
    { SpawnerName = "orange_E", PalId = "Werewolf", MinLevel = 34, MaxLevel = 37 },

    -- orange_F
    { SpawnerName = "orange_F", PalId = "BirdDragon", MinLevel = 30, MaxLevel = 35 },
    { SpawnerName = "orange_F", PalId = "BirdDragon_Ice", MinLevel = 33, MaxLevel = 37 },
    { SpawnerName = "orange_F", PalId = "DarkCrow", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "orange_F", PalId = "LazyDragon", MinLevel = 30, MaxLevel = 35 },
    { SpawnerName = "orange_F", PalId = "MimicDog", MinLevel = 30, MaxLevel = 36 },
    { SpawnerName = "orange_F", PalId = "Werewolf", MinLevel = 32, MaxLevel = 35 },

    -- orange_G
    { SpawnerName = "orange_G", PalId = "BirdDragon", MinLevel = 30, MaxLevel = 35 },
    { SpawnerName = "orange_G", PalId = "BirdDragon_Ice", MinLevel = 33, MaxLevel = 37 },
    { SpawnerName = "orange_G", PalId = "DarkCrow", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "orange_G", PalId = "GrassMammoth", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "orange_G", PalId = "MimicDog", MinLevel = 30, MaxLevel = 36 },
    { SpawnerName = "orange_G", PalId = "Werewolf", MinLevel = 32, MaxLevel = 35 },

    -- orange_H
    { SpawnerName = "orange_H", PalId = "AmaterasuWolf", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "orange_H", PalId = "FairyDragon_Water", MinLevel = 33, MaxLevel = 37 },
    { SpawnerName = "orange_H", PalId = "IceDeer", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "orange_H", PalId = "IceFox", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "orange_H", PalId = "MimicDog", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "orange_H", PalId = "SmallYeti", MinLevel = 32, MaxLevel = 34 },

    -- orange_I
    { SpawnerName = "orange_I", PalId = "ColorfulBird", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "orange_I", PalId = "CuteMole", MinLevel = 28, MaxLevel = 31 },
    { SpawnerName = "orange_I", PalId = "DrillGame", MinLevel = 33, MaxLevel = 37 },
    { SpawnerName = "orange_I", PalId = "LazyCatfish", MinLevel = 32, MaxLevel = 37 },
    { SpawnerName = "orange_I", PalId = "MimicDog", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "orange_I", PalId = "PinkLizard", MinLevel = 34, MaxLevel = 37 },
    { SpawnerName = "orange_I", PalId = "PinkLizard", MinLevel = 38, MaxLevel = 42 },
    { SpawnerName = "orange_I", PalId = "RaijinDaughter", MinLevel = 30, MaxLevel = 33 },

    -- orange_I_coast
    { SpawnerName = "orange_I_coast", PalId = "SwordCutlassfish", MinLevel = 30, MaxLevel = 34 },

    -- orange_J
    { SpawnerName = "orange_J", PalId = "FlameBambi", MinLevel = 10, MaxLevel = 14 },
    { SpawnerName = "orange_J", PalId = "FoxMage", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "orange_J", PalId = "LavaGirl", MinLevel = 10, MaxLevel = 14 },

    -- purple_A
    { SpawnerName = "purple_A", PalId = "CatMage", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "purple_A", PalId = "HadesBird", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "purple_A", PalId = "MimicDog", MinLevel = 30, MaxLevel = 36 },
    { SpawnerName = "purple_A", PalId = "NaughtyCat", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "purple_A", PalId = "SakuraSaurus", MinLevel = 48, MaxLevel = 54 },
    { SpawnerName = "purple_A", PalId = "Werewolf", MinLevel = 34, MaxLevel = 37 },

    -- purple_A_SakuraSaurus_Water
    { SpawnerName = "purple_A_SakuraSaurus_Water", PalId = "SakuraSaurus_Water", MinLevel = 51, MaxLevel = 55 },

    -- red_A_Ice_BirdDragons
    { SpawnerName = "red_A_Ice_BirdDragons", PalId = "BirdDragon_Ice", MinLevel = 40, MaxLevel = 44 },

    -- remainsIsland_1
    { SpawnerName = "remainsIsland_1", PalId = "GhostRabbit_Grass", MinLevel = 50, MaxLevel = 54 },

    -- remainsIsland_2
    { SpawnerName = "remainsIsland_2", PalId = "BlackPuppy_Ice", MinLevel = 62, MaxLevel = 64 },

    -- sakura_purple_A
    { SpawnerName = "sakura_purple_A", PalId = "CandleGhost", MinLevel = 51, MaxLevel = 55 },
    { SpawnerName = "sakura_purple_A", PalId = "GrassRabbitMan", MinLevel = 52, MaxLevel = 53 },
    { SpawnerName = "sakura_purple_A", PalId = "MimicDog", MinLevel = 51, MaxLevel = 55 },
    { SpawnerName = "sakura_purple_A", PalId = "Ronin", MinLevel = 51, MaxLevel = 55 },
    { SpawnerName = "sakura_purple_A", PalId = "Ronin_Dark", MinLevel = 51, MaxLevel = 55 },
    { SpawnerName = "sakura_purple_A", PalId = "SkyDragon_Grass", MinLevel = 53, MaxLevel = 55 },
    { SpawnerName = "sakura_purple_A", PalId = "Yeti_Grass", MinLevel = 53, MaxLevel = 55 },

    -- sakura_purple_B
    { SpawnerName = "sakura_purple_B", PalId = "CandleGhost", MinLevel = 51, MaxLevel = 56 },
    { SpawnerName = "sakura_purple_B", PalId = "GuardianDog", MinLevel = 53, MaxLevel = 56 },
    { SpawnerName = "sakura_purple_B", PalId = "MimicDog", MinLevel = 51, MaxLevel = 56 },
    { SpawnerName = "sakura_purple_B", PalId = "Ronin", MinLevel = 53, MaxLevel = 56 },
    { SpawnerName = "sakura_purple_B", PalId = "Ronin_Dark", MinLevel = 53, MaxLevel = 56 },
    { SpawnerName = "sakura_purple_B", PalId = "SifuDog", MinLevel = 53, MaxLevel = 56 },
    { SpawnerName = "sakura_purple_B", PalId = "SumoDog", MinLevel = 53, MaxLevel = 56 },
    { SpawnerName = "sakura_purple_B", PalId = "WeaselDragon_Fire", MinLevel = 53, MaxLevel = 56 },

    -- sakura_purple_D
    { SpawnerName = "sakura_purple_D", PalId = "CandleGhost", MinLevel = 55, MaxLevel = 59 },
    { SpawnerName = "sakura_purple_D", PalId = "FlowerDoll", MinLevel = 55, MaxLevel = 57 },
    { SpawnerName = "sakura_purple_D", PalId = "LeafPrincess", MinLevel = 55, MaxLevel = 57 },
    { SpawnerName = "sakura_purple_D", PalId = "MimicDog", MinLevel = 55, MaxLevel = 59 },
    { SpawnerName = "sakura_purple_D", PalId = "Ronin", MinLevel = 55, MaxLevel = 59 },
    { SpawnerName = "sakura_purple_D", PalId = "Ronin_Dark", MinLevel = 55, MaxLevel = 59 },
    { SpawnerName = "sakura_purple_D", PalId = "VioletFairy", MinLevel = 55, MaxLevel = 57 },

    -- sakura_red_A
    { SpawnerName = "sakura_red_A", PalId = "CandleGhost", MinLevel = 46, MaxLevel = 49 },
    { SpawnerName = "sakura_red_A", PalId = "KendoFrog", MinLevel = 47, MaxLevel = 49 },
    { SpawnerName = "sakura_red_A", PalId = "MimicDog", MinLevel = 46, MaxLevel = 49 },
    { SpawnerName = "sakura_red_A", PalId = "MushroomDragon", MinLevel = 47, MaxLevel = 49 },
    { SpawnerName = "sakura_red_A", PalId = "MushroomDragon_Dark", MinLevel = 47, MaxLevel = 49 },
    { SpawnerName = "sakura_red_A", PalId = "NaughtyCat", MinLevel = 46, MaxLevel = 48 },
    { SpawnerName = "sakura_red_A", PalId = "Ronin", MinLevel = 48, MaxLevel = 49 },
    { SpawnerName = "sakura_red_A", PalId = "Ronin_Dark", MinLevel = 48, MaxLevel = 49 },

    -- sakura_red_A_kazyDragon
    { SpawnerName = "sakura_red_A_kazyDragon", PalId = "LazyDragon", MinLevel = 47, MaxLevel = 48 },
    { SpawnerName = "sakura_red_A_kazyDragon", PalId = "LazyDragon_Electric", MinLevel = 48, MaxLevel = 49 },

    -- sakura_red_B
    { SpawnerName = "sakura_red_B", PalId = "CandleGhost", MinLevel = 46, MaxLevel = 49 },
    { SpawnerName = "sakura_red_B", PalId = "ColorfulBird", MinLevel = 46, MaxLevel = 47 },
    { SpawnerName = "sakura_red_B", PalId = "FeatherOstrich", MinLevel = 47, MaxLevel = 48 },
    { SpawnerName = "sakura_red_B", PalId = "FoxMage_Dark", MinLevel = 46, MaxLevel = 49 },
    { SpawnerName = "sakura_red_B", PalId = "HadesBird_Electric", MinLevel = 47, MaxLevel = 48 },
    { SpawnerName = "sakura_red_B", PalId = "LazyCatfish_Gold", MinLevel = 48, MaxLevel = 49 },
    { SpawnerName = "sakura_red_B", PalId = "MimicDog", MinLevel = 46, MaxLevel = 49 },
    { SpawnerName = "sakura_red_B", PalId = "Ronin", MinLevel = 47, MaxLevel = 49 },
    { SpawnerName = "sakura_red_B", PalId = "Ronin_Dark", MinLevel = 47, MaxLevel = 49 },

    -- sakura_red_C
    { SpawnerName = "sakura_red_C", PalId = "CandleGhost", MinLevel = 46, MaxLevel = 49 },
    { SpawnerName = "sakura_red_C", PalId = "ColorfulBird", MinLevel = 46, MaxLevel = 47 },
    { SpawnerName = "sakura_red_C", PalId = "FoxMage_Dark", MinLevel = 46, MaxLevel = 49 },
    { SpawnerName = "sakura_red_C", PalId = "MimicDog", MinLevel = 46, MaxLevel = 49 },
    { SpawnerName = "sakura_red_C", PalId = "Ronin", MinLevel = 47, MaxLevel = 49 },
    { SpawnerName = "sakura_red_C", PalId = "Ronin_Dark", MinLevel = 47, MaxLevel = 49 },
    { SpawnerName = "sakura_red_C", PalId = "ScorpionMan", MinLevel = 48, MaxLevel = 49 },
    { SpawnerName = "sakura_red_C", PalId = "SmallArmadillo", MinLevel = 46, MaxLevel = 48 },
    { SpawnerName = "sakura_red_C", PalId = "TentacleTurtle_Ground", MinLevel = 46, MaxLevel = 48 },

    -- sakura_Waterfront_purple_A
    { SpawnerName = "sakura_Waterfront_purple_A", PalId = "CandleGhost", MinLevel = 51, MaxLevel = 55 },
    { SpawnerName = "sakura_Waterfront_purple_A", PalId = "FairyDragon_Water", MinLevel = 53, MaxLevel = 55 },
    { SpawnerName = "sakura_Waterfront_purple_A", PalId = "FoxMage_Dark", MinLevel = 51, MaxLevel = 55 },
    { SpawnerName = "sakura_Waterfront_purple_A", PalId = "GrassRabbitMan", MinLevel = 52, MaxLevel = 53 },
    { SpawnerName = "sakura_Waterfront_purple_A", PalId = "MimicDog", MinLevel = 51, MaxLevel = 55 },
    { SpawnerName = "sakura_Waterfront_purple_A", PalId = "Ronin", MinLevel = 51, MaxLevel = 55 },
    { SpawnerName = "sakura_Waterfront_purple_A", PalId = "Ronin_Dark", MinLevel = 51, MaxLevel = 55 },
    { SpawnerName = "sakura_Waterfront_purple_A", PalId = "Yeti_Grass", MinLevel = 53, MaxLevel = 55 },

    -- sanctuary_1_forest
    { SpawnerName = "sanctuary_1_forest", PalId = "CaptainPenguin", MinLevel = 20, MaxLevel = 23 },
    { SpawnerName = "sanctuary_1_forest", PalId = "Deer_Ground", MinLevel = 20, MaxLevel = 23 },
    { SpawnerName = "sanctuary_1_forest", PalId = "FairyDragon", MinLevel = 20, MaxLevel = 23 },
    { SpawnerName = "sanctuary_1_forest", PalId = "GrassMinotaur", MinLevel = 24, MaxLevel = 26 },
    { SpawnerName = "sanctuary_1_forest", PalId = "Mutant", MinLevel = 25, MaxLevel = 28 },
    { SpawnerName = "sanctuary_1_forest", PalId = "VioletFairy", MinLevel = 20, MaxLevel = 23 },

    -- sanctuary_2_volcano
    { SpawnerName = "sanctuary_2_volcano", PalId = "AmaterasuWolf", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "sanctuary_2_volcano", PalId = "Baphomet_Dark", MinLevel = 37, MaxLevel = 39 },
    { SpawnerName = "sanctuary_2_volcano", PalId = "CandleGhost", MinLevel = 45, MaxLevel = 48 },
    { SpawnerName = "sanctuary_2_volcano", PalId = "DarkFlameFox", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "sanctuary_2_volcano", PalId = "FireKirin_Dark", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "sanctuary_2_volcano", PalId = "Manticore_Dark", MinLevel = 40, MaxLevel = 44 },

    -- sanctuary_3_dessert
    { SpawnerName = "sanctuary_3_dessert", PalId = "BlackGriffon", MinLevel = 50, MaxLevel = 55 },
    { SpawnerName = "sanctuary_3_dessert", PalId = "DarkScorpion_Ground", MinLevel = 48, MaxLevel = 52 },
    { SpawnerName = "sanctuary_3_dessert", PalId = "FengyunDeeper", MinLevel = 45, MaxLevel = 50 },
    { SpawnerName = "sanctuary_3_dessert", PalId = "Ronin", MinLevel = 50, MaxLevel = 55 },
    { SpawnerName = "sanctuary_3_dessert", PalId = "VenusFlytrap", MinLevel = 45, MaxLevel = 48 },
    { SpawnerName = "sanctuary_3_dessert", PalId = "WingGolem", MinLevel = 55, MaxLevel = 60 },

    -- skyisland_8_01_A_meadow
    { SpawnerName = "skyisland_8_01_A_meadow", PalId = "ElecPomeranian", MinLevel = 64, MaxLevel = 65 },
    { SpawnerName = "skyisland_8_01_A_meadow", PalId = "MimicDog", MinLevel = 66, MaxLevel = 67 },
    { SpawnerName = "skyisland_8_01_A_meadow", PalId = "RedFlowerBird", MinLevel = 66, MaxLevel = 67 },
    { SpawnerName = "skyisland_8_01_A_meadow", PalId = "RockBeast_Ice", MinLevel = 68, MaxLevel = 69 },
    { SpawnerName = "skyisland_8_01_A_meadow", PalId = "SkyDragon", MinLevel = 70, MaxLevel = 70 },
    { SpawnerName = "skyisland_8_01_A_meadow", PalId = "SnowPeafowl", MinLevel = 65, MaxLevel = 67 },
    { SpawnerName = "skyisland_8_01_A_meadow", PalId = "Suzaku_Water", MinLevel = 68, MaxLevel = 69 },

    -- skyisland_8_02_A_palcrystal
    { SpawnerName = "skyisland_8_02_A_palcrystal", PalId = "KingSunfish", MinLevel = 66, MaxLevel = 67 },
    { SpawnerName = "skyisland_8_02_A_palcrystal", PalId = "SwordCutlassfish", MinLevel = 65, MaxLevel = 66 },

    -- skyisland_8_03_B_meadow
    { SpawnerName = "skyisland_8_03_B_meadow", PalId = "FluffyBird", MinLevel = 64, MaxLevel = 65 },
    { SpawnerName = "skyisland_8_03_B_meadow", PalId = "SnowPeafowl", MinLevel = 65, MaxLevel = 68 },

    -- skyisland_8_03w_B_meadow
    { SpawnerName = "skyisland_8_03w_B_meadow", PalId = "ClioneTwins", MinLevel = 64, MaxLevel = 65 },
    { SpawnerName = "skyisland_8_03w_B_meadow", PalId = "OctopusGirl_Neutral", MinLevel = 65, MaxLevel = 66 },

    -- skyisland_8_04_B_higland
    { SpawnerName = "skyisland_8_04_B_higland", PalId = "HoodGhost", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "skyisland_8_04_B_higland", PalId = "MimicDog", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "skyisland_8_04_B_higland", PalId = "OniGhostGirl", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "skyisland_8_04_B_higland", PalId = "RaijinDaughter_Water", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "skyisland_8_04_B_higland", PalId = "SkyDragon", MinLevel = 70, MaxLevel = 70 },
    { SpawnerName = "skyisland_8_04_B_higland", PalId = "ThunderFluffyBird", MinLevel = 66, MaxLevel = 67 },

    -- skyisland_8_07_G_mountain
    { SpawnerName = "skyisland_8_07_G_mountain", PalId = "DandelionGirl", MinLevel = 64, MaxLevel = 65 },
    { SpawnerName = "skyisland_8_07_G_mountain", PalId = "HoodGhost", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "skyisland_8_07_G_mountain", PalId = "MimicDog", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "skyisland_8_07_G_mountain", PalId = "OniGhostGirl", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "skyisland_8_07_G_mountain", PalId = "PandaGirl", MinLevel = 67, MaxLevel = 68 },
    { SpawnerName = "skyisland_8_07_G_mountain", PalId = "SkyDragon", MinLevel = 70, MaxLevel = 70 },

    -- skyisland_8_09_D_forest
    { SpawnerName = "skyisland_8_09_D_forest", PalId = "BrownRabbit", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "skyisland_8_09_D_forest", PalId = "HoodGhost", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "skyisland_8_09_D_forest", PalId = "MimicDog", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "skyisland_8_09_D_forest", PalId = "OniGhostGirl", MinLevel = 65, MaxLevel = 66 },

    -- skyisland_8_09w_D_forest
    { SpawnerName = "skyisland_8_09w_D_forest", PalId = "ElecLizard", MinLevel = 65, MaxLevel = 66 },

    -- skyisland_8_10_D_swamp
    { SpawnerName = "skyisland_8_10_D_swamp", PalId = "ElecLizard", MinLevel = 65, MaxLevel = 66 },

    -- skyisland_8_11_E_meadow
    { SpawnerName = "skyisland_8_11_E_meadow", PalId = "ElecSnail", MinLevel = 64, MaxLevel = 65 },
    { SpawnerName = "skyisland_8_11_E_meadow", PalId = "LongCat", MinLevel = 64, MaxLevel = 65 },
    { SpawnerName = "skyisland_8_11_E_meadow", PalId = "MimicDog", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "skyisland_8_11_E_meadow", PalId = "SkyDragon", MinLevel = 70, MaxLevel = 70 },

    -- skyisland_8_12_E_unique
    { SpawnerName = "skyisland_8_12_E_unique", PalId = "ClioneTwins", MinLevel = 64, MaxLevel = 65 },
    { SpawnerName = "skyisland_8_12_E_unique", PalId = "OctopusGirl_Neutral", MinLevel = 65, MaxLevel = 66 },

    -- skyisland_8_13_F_meadow
    { SpawnerName = "skyisland_8_13_F_meadow", PalId = "Horus_Water", MinLevel = 67, MaxLevel = 69 },
    { SpawnerName = "skyisland_8_13_F_meadow", PalId = "MimicDog", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "skyisland_8_13_F_meadow", PalId = "SkyDragon", MinLevel = 70, MaxLevel = 70 },
    { SpawnerName = "skyisland_8_13_F_meadow", PalId = "SleeveRabbit", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "skyisland_8_13_F_meadow", PalId = "SnowPeafowl", MinLevel = 65, MaxLevel = 66 },

    -- snow_5_1_snow_1
    { SpawnerName = "snow_5_1_snow_1", PalId = "Bastet_Ice", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "snow_5_1_snow_1", PalId = "BirdDragon_Ice", MinLevel = 36, MaxLevel = 40 },
    { SpawnerName = "snow_5_1_snow_1", PalId = "GhostBeast", MinLevel = 36, MaxLevel = 40 },
    { SpawnerName = "snow_5_1_snow_1", PalId = "GrassMammoth_Ice", MinLevel = 41, MaxLevel = 43 },
    { SpawnerName = "snow_5_1_snow_1", PalId = "MimicDog", MinLevel = 38, MaxLevel = 42 },
    { SpawnerName = "snow_5_1_snow_1", PalId = "WhiteMoth", MinLevel = 36, MaxLevel = 40 },
    { SpawnerName = "snow_5_1_snow_1", PalId = "WhiteTiger", MinLevel = 36, MaxLevel = 40 },
    { SpawnerName = "snow_5_1_snow_1", PalId = "WindChimes_Ice", MinLevel = 33, MaxLevel = 35 },
    { SpawnerName = "snow_5_1_snow_1", PalId = "Yeti", MinLevel = 41, MaxLevel = 43 },

    -- snow_5_2_SnowGrass
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "Bastet_Ice", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "BerryGoat", MinLevel = 39, MaxLevel = 41 },
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "BirdDragon_Ice", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "FlameBuffalo", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "GrassMammoth", MinLevel = 38, MaxLevel = 40 },
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "IceDeer", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "MimicDog", MinLevel = 38, MaxLevel = 42 },
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "Penguin", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "WeaselDragon", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "WindChimes_Ice", MinLevel = 33, MaxLevel = 35 },

    -- snow_orange_A
    { SpawnerName = "snow_orange_A", PalId = "GhostBeast", MinLevel = 40, MaxLevel = 45 },
    { SpawnerName = "snow_orange_A", PalId = "IceSeal", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "snow_orange_A", PalId = "MimicDog", MinLevel = 38, MaxLevel = 42 },
    { SpawnerName = "snow_orange_A", PalId = "NegativeOctopus", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "snow_orange_A", PalId = "Ronin", MinLevel = 38, MaxLevel = 42 },
    { SpawnerName = "snow_orange_A", PalId = "TentacleTurtle", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "snow_orange_A", PalId = "WindChimes_Ice", MinLevel = 32, MaxLevel = 36 },

    -- snow_orange_ALL_Ice_BirdDragons
    { SpawnerName = "snow_orange_ALL_Ice_BirdDragons", PalId = "BirdDragon_Ice", MinLevel = 36, MaxLevel = 40 },

    -- snow_orange_B
    { SpawnerName = "snow_orange_B", PalId = "CaptainPenguin", MinLevel = 39, MaxLevel = 44 },
    { SpawnerName = "snow_orange_B", PalId = "GhostBeast", MinLevel = 40, MaxLevel = 45 },
    { SpawnerName = "snow_orange_B", PalId = "GrassMammoth", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "snow_orange_B", PalId = "MimicDog", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "snow_orange_B", PalId = "Ronin", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "snow_orange_B", PalId = "ThunderDog", MinLevel = 31, MaxLevel = 35 },
    { SpawnerName = "snow_orange_B", PalId = "WeaselDragon", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "snow_orange_B", PalId = "Werewolf_Ice", MinLevel = 40, MaxLevel = 45 },
    { SpawnerName = "snow_orange_B", PalId = "WindChimes_Ice", MinLevel = 32, MaxLevel = 36 },

    -- snow_orange_C
    { SpawnerName = "snow_orange_C", PalId = "CatMage", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "snow_orange_C", PalId = "GhostBeast", MinLevel = 40, MaxLevel = 45 },
    { SpawnerName = "snow_orange_C", PalId = "GrassGolem", MinLevel = 46, MaxLevel = 50 },
    { SpawnerName = "snow_orange_C", PalId = "MimicDog", MinLevel = 38, MaxLevel = 42 },
    { SpawnerName = "snow_orange_C", PalId = "Mutant", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "snow_orange_C", PalId = "Ronin", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "snow_orange_C", PalId = "SkyDragon", MinLevel = 40, MaxLevel = 44 },
    { SpawnerName = "snow_orange_C", PalId = "Werewolf_Ice", MinLevel = 40, MaxLevel = 45 },
    { SpawnerName = "snow_orange_C", PalId = "WindChimes_Ice", MinLevel = 32, MaxLevel = 36 },

    -- snow_orange_D
    { SpawnerName = "snow_orange_D", PalId = "CaptainPenguin", MinLevel = 39, MaxLevel = 44 },
    { SpawnerName = "snow_orange_D", PalId = "GhostBeast", MinLevel = 40, MaxLevel = 45 },
    { SpawnerName = "snow_orange_D", PalId = "GrassMammoth", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "snow_orange_D", PalId = "MimicDog", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "snow_orange_D", PalId = "Ronin", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "snow_orange_D", PalId = "SkyDragon", MinLevel = 40, MaxLevel = 44 },
    { SpawnerName = "snow_orange_D", PalId = "SkyDragon", MinLevel = 45, MaxLevel = 48 },
    { SpawnerName = "snow_orange_D", PalId = "SkyDragon_Grass", MinLevel = 45, MaxLevel = 48 },
    { SpawnerName = "snow_orange_D", PalId = "ThunderDog", MinLevel = 31, MaxLevel = 35 },
    { SpawnerName = "snow_orange_D", PalId = "WeaselDragon", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "snow_orange_D", PalId = "Werewolf_Ice", MinLevel = 40, MaxLevel = 45 },
    { SpawnerName = "snow_orange_D", PalId = "WindChimes_Ice", MinLevel = 32, MaxLevel = 36 },

    -- snow_orange_E
    { SpawnerName = "snow_orange_E", PalId = "GhostBeast", MinLevel = 40, MaxLevel = 45 },
    { SpawnerName = "snow_orange_E", PalId = "GrassMammoth", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "snow_orange_E", PalId = "GrassMammoth_Ice", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "snow_orange_E", PalId = "MimicDog", MinLevel = 34, MaxLevel = 37 },
    { SpawnerName = "snow_orange_E", PalId = "Ronin", MinLevel = 35, MaxLevel = 39 },
    { SpawnerName = "snow_orange_E", PalId = "SkyDragon", MinLevel = 45, MaxLevel = 48 },
    { SpawnerName = "snow_orange_E", PalId = "Werewolf_Ice", MinLevel = 40, MaxLevel = 45 },

    -- snow_orange_F
    { SpawnerName = "snow_orange_F", PalId = "GhostBeast", MinLevel = 43, MaxLevel = 47 },
    { SpawnerName = "snow_orange_F", PalId = "GrassMammoth_Ice", MinLevel = 38, MaxLevel = 42 },
    { SpawnerName = "snow_orange_F", PalId = "IceFox", MinLevel = 34, MaxLevel = 36 },
    { SpawnerName = "snow_orange_F", PalId = "MimicDog", MinLevel = 34, MaxLevel = 37 },
    { SpawnerName = "snow_orange_F", PalId = "Ronin", MinLevel = 37, MaxLevel = 40 },
    { SpawnerName = "snow_orange_F", PalId = "SkyDragon", MinLevel = 45, MaxLevel = 48 },
    { SpawnerName = "snow_orange_F", PalId = "ThunderDog_Ice", MinLevel = 35, MaxLevel = 37 },
    { SpawnerName = "snow_orange_F", PalId = "Werewolf_Ice", MinLevel = 43, MaxLevel = 47 },
    { SpawnerName = "snow_orange_F", PalId = "WindChimes_Ice", MinLevel = 35, MaxLevel = 38 },

    -- snow_orange_F_IceSeals
    { SpawnerName = "snow_orange_F_IceSeals", PalId = "IceSeal", MinLevel = 33, MaxLevel = 37 },

    -- snow_orange_G_IceCrocodiles
    { SpawnerName = "snow_orange_G_IceCrocodiles", PalId = "IceCrocodile", MinLevel = 32, MaxLevel = 35 },

    -- snow_orange_H
    { SpawnerName = "snow_orange_H", PalId = "GhostBeast", MinLevel = 45, MaxLevel = 48 },
    { SpawnerName = "snow_orange_H", PalId = "GrassMammoth_Ice", MinLevel = 37, MaxLevel = 42 },
    { SpawnerName = "snow_orange_H", PalId = "IceDeer", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "snow_orange_H", PalId = "IceFox", MinLevel = 35, MaxLevel = 37 },
    { SpawnerName = "snow_orange_H", PalId = "MimicDog", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "snow_orange_H", PalId = "Ronin", MinLevel = 39, MaxLevel = 42 },
    { SpawnerName = "snow_orange_H", PalId = "SkyDragon", MinLevel = 45, MaxLevel = 48 },
    { SpawnerName = "snow_orange_H", PalId = "ThunderDog_Ice", MinLevel = 36, MaxLevel = 38 },
    { SpawnerName = "snow_orange_H", PalId = "Werewolf_Ice", MinLevel = 45, MaxLevel = 48 },
    { SpawnerName = "snow_orange_H", PalId = "WindChimes_Ice", MinLevel = 37, MaxLevel = 40 },

    -- snow_orange_I
    { SpawnerName = "snow_orange_I", PalId = "BirdDragon_Ice", MinLevel = 36, MaxLevel = 40 },
    { SpawnerName = "snow_orange_I", PalId = "GhostBeast", MinLevel = 46, MaxLevel = 49 },
    { SpawnerName = "snow_orange_I", PalId = "IceFox", MinLevel = 35, MaxLevel = 37 },
    { SpawnerName = "snow_orange_I", PalId = "MimicDog", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "snow_orange_I", PalId = "Ronin", MinLevel = 42, MaxLevel = 45 },
    { SpawnerName = "snow_orange_I", PalId = "SkyDragon", MinLevel = 45, MaxLevel = 48 },
    { SpawnerName = "snow_orange_I", PalId = "Werewolf_Ice", MinLevel = 46, MaxLevel = 49 },
    { SpawnerName = "snow_orange_I", PalId = "WhiteMoth", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "snow_orange_I", PalId = "WindChimes_Ice", MinLevel = 37, MaxLevel = 40 },

    -- snow_red_A
    { SpawnerName = "snow_red_A", PalId = "Yeti", MinLevel = 45, MaxLevel = 48 },

    -- snow_red_ALL_Ice_BirdDragons
    { SpawnerName = "snow_red_ALL_Ice_BirdDragons", PalId = "BirdDragon_Ice", MinLevel = 42, MaxLevel = 46 },

    -- snow_red_B
    { SpawnerName = "snow_red_B", PalId = "CatMage", MinLevel = 43, MaxLevel = 46 },
    { SpawnerName = "snow_red_B", PalId = "GhostBeast", MinLevel = 52, MaxLevel = 55 },
    { SpawnerName = "snow_red_B", PalId = "IceWitch", MinLevel = 45, MaxLevel = 48 },
    { SpawnerName = "snow_red_B", PalId = "MimicDog", MinLevel = 45, MaxLevel = 48 },
    { SpawnerName = "snow_red_B", PalId = "Mutant", MinLevel = 46, MaxLevel = 49 },
    { SpawnerName = "snow_red_B", PalId = "Ronin", MinLevel = 49, MaxLevel = 53 },
    { SpawnerName = "snow_red_B", PalId = "SkyDragon", MinLevel = 52, MaxLevel = 56 },
    { SpawnerName = "snow_red_B", PalId = "Werewolf_Ice", MinLevel = 52, MaxLevel = 55 },
    { SpawnerName = "snow_red_B", PalId = "WhiteTiger", MinLevel = 46, MaxLevel = 49 },

    -- snow_red_C
    { SpawnerName = "snow_red_C", PalId = "GhostBeast", MinLevel = 52, MaxLevel = 55 },
    { SpawnerName = "snow_red_C", PalId = "IceWitch", MinLevel = 45, MaxLevel = 48 },
    { SpawnerName = "snow_red_C", PalId = "MimicDog", MinLevel = 45, MaxLevel = 48 },
    { SpawnerName = "snow_red_C", PalId = "Ronin", MinLevel = 49, MaxLevel = 53 },
    { SpawnerName = "snow_red_C", PalId = "SkyDragon", MinLevel = 52, MaxLevel = 56 },
    { SpawnerName = "snow_red_C", PalId = "Werewolf_Ice", MinLevel = 52, MaxLevel = 55 },
    { SpawnerName = "snow_red_C", PalId = "WhiteTiger", MinLevel = 44, MaxLevel = 48 },
    { SpawnerName = "snow_red_C", PalId = "Yeti", MinLevel = 46, MaxLevel = 49 },

    -- snow_red_E
    { SpawnerName = "snow_red_E", PalId = "GhostBeast", MinLevel = 54, MaxLevel = 59 },
    { SpawnerName = "snow_red_E", PalId = "MimicDog", MinLevel = 47, MaxLevel = 49 },
    { SpawnerName = "snow_red_E", PalId = "Ronin", MinLevel = 53, MaxLevel = 56 },
    { SpawnerName = "snow_red_E", PalId = "SkyDragon", MinLevel = 54, MaxLevel = 59 },
    { SpawnerName = "snow_red_E", PalId = "VolcanicMonster_Ice", MinLevel = 48, MaxLevel = 53 },
    { SpawnerName = "snow_red_E", PalId = "Werewolf_Ice", MinLevel = 54, MaxLevel = 59 },
    { SpawnerName = "snow_red_E", PalId = "Yeti", MinLevel = 48, MaxLevel = 52 },

    -- volcano_orange_B
    { SpawnerName = "volcano_orange_B", PalId = "FireKirin_Dark", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "volcano_orange_B", PalId = "FoxMage", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "volcano_orange_B", PalId = "Manticore_Dark", MinLevel = 38, MaxLevel = 42 },
    { SpawnerName = "volcano_orange_B", PalId = "MimicDog", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "volcano_orange_B", PalId = "Ronin", MinLevel = 30, MaxLevel = 34 },

    -- volcano_orange_C
    { SpawnerName = "volcano_orange_C", PalId = "Baphomet", MinLevel = 33, MaxLevel = 36 },
    { SpawnerName = "volcano_orange_C", PalId = "FireKirin", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "volcano_orange_C", PalId = "FireKirin_Dark", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "volcano_orange_C", PalId = "Manticore", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "volcano_orange_C", PalId = "Manticore_Dark", MinLevel = 40, MaxLevel = 43 },
    { SpawnerName = "volcano_orange_C", PalId = "MimicDog", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "volcano_orange_C", PalId = "RedArmorBird", MinLevel = 33, MaxLevel = 36 },
    { SpawnerName = "volcano_orange_C", PalId = "Ronin", MinLevel = 34, MaxLevel = 36 },
    { SpawnerName = "volcano_orange_C", PalId = "VolcanoDragon", MinLevel = 32, MaxLevel = 34 },

    -- volcano_orange_D
    { SpawnerName = "volcano_orange_D", PalId = "Baphomet", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "volcano_orange_D", PalId = "FireKirin", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "volcano_orange_D", PalId = "FireKirin_Dark", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "volcano_orange_D", PalId = "Manticore_Dark", MinLevel = 40, MaxLevel = 43 },
    { SpawnerName = "volcano_orange_D", PalId = "MimicDog", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "volcano_orange_D", PalId = "RedArmorBird", MinLevel = 32, MaxLevel = 34 },
    { SpawnerName = "volcano_orange_D", PalId = "Ronin", MinLevel = 34, MaxLevel = 36 },
    { SpawnerName = "volcano_orange_D", PalId = "VolcanoDragon", MinLevel = 35, MaxLevel = 38 },

    -- volcano_orange_D_RedArmorBirds
    { SpawnerName = "volcano_orange_D_RedArmorBirds", PalId = "RedArmorBird", MinLevel = 32, MaxLevel = 36 },

    -- volcano_orange_D_VolcanicMonsters
    { SpawnerName = "volcano_orange_D_VolcanicMonsters", PalId = "VolcanicMonster", MinLevel = 46, MaxLevel = 48 },

    -- volcano_orange_E
    { SpawnerName = "volcano_orange_E", PalId = "FireKirin_Dark", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "volcano_orange_E", PalId = "FlameBuffalo", MinLevel = 25, MaxLevel = 27 },    { SpawnerName = "volcano_orange_E", PalId = "LavaGirl", MinLevel = 22, MaxLevel = 24 },
    { SpawnerName = "volcano_orange_E", PalId = "LizardMan_Fire", MinLevel = 28, MaxLevel = 30 },
    { SpawnerName = "volcano_orange_E", PalId = "Manticore_Dark", MinLevel = 40, MaxLevel = 43 },
    { SpawnerName = "volcano_orange_E", PalId = "MimicDog", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "volcano_orange_E", PalId = "Ronin", MinLevel = 32, MaxLevel = 34 },

    -- volcano_orange_F
    { SpawnerName = "volcano_orange_F", PalId = "BirdDragon", MinLevel = 30, MaxLevel = 32 },
    { SpawnerName = "volcano_orange_F", PalId = "FireKirin_Dark", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "volcano_orange_F", PalId = "LizardMan", MinLevel = 30, MaxLevel = 32 },
    { SpawnerName = "volcano_orange_F", PalId = "Manticore_Dark", MinLevel = 40, MaxLevel = 43 },
    { SpawnerName = "volcano_orange_F", PalId = "MimicDog", MinLevel = 30, MaxLevel = 34 },
    { SpawnerName = "volcano_orange_F", PalId = "Ronin", MinLevel = 32, MaxLevel = 34 },

    -- volcano_orange_G
    { SpawnerName = "volcano_orange_G", PalId = "FireKirin_Dark", MinLevel = 38, MaxLevel = 42 },
    { SpawnerName = "volcano_orange_G", PalId = "LavaGirl", MinLevel = 32, MaxLevel = 33 },
    { SpawnerName = "volcano_orange_G", PalId = "LizardMan_Fire", MinLevel = 34, MaxLevel = 36 },
    { SpawnerName = "volcano_orange_G", PalId = "Manticore_Dark", MinLevel = 43, MaxLevel = 47 },
    { SpawnerName = "volcano_orange_G", PalId = "MimicDog", MinLevel = 32, MaxLevel = 35 },
    { SpawnerName = "volcano_orange_G", PalId = "Ronin", MinLevel = 34, MaxLevel = 36 },

    -- volcano_orange_G_coast
    { SpawnerName = "volcano_orange_G_coast", PalId = "LazyCatfish", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "volcano_orange_G_coast", PalId = "LazyCatfish_Gold", MinLevel = 40, MaxLevel = 44 },
    { SpawnerName = "volcano_orange_G_coast", PalId = "TentacleTurtle", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "volcano_orange_G_coast", PalId = "TentacleTurtle_Ground", MinLevel = 40, MaxLevel = 44 },

    -- volcano_orange_H
    { SpawnerName = "volcano_orange_H", PalId = "FireKirin", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "volcano_orange_H", PalId = "FireKirin_Dark", MinLevel = 38, MaxLevel = 42 },
    { SpawnerName = "volcano_orange_H", PalId = "Manticore_Dark", MinLevel = 43, MaxLevel = 47 },
    { SpawnerName = "volcano_orange_H", PalId = "MimicDog", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "volcano_orange_H", PalId = "RedArmorBird", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "volcano_orange_H", PalId = "Ronin", MinLevel = 36, MaxLevel = 40 },

    -- volcano_orange_I
    { SpawnerName = "volcano_orange_I", PalId = "BluePlatypus_Fire", MinLevel = 32, MaxLevel = 36 },
    { SpawnerName = "volcano_orange_I", PalId = "FireKirin_Dark", MinLevel = 38, MaxLevel = 42 },
    { SpawnerName = "volcano_orange_I", PalId = "LavaGirl", MinLevel = 30, MaxLevel = 32 },
    { SpawnerName = "volcano_orange_I", PalId = "Manticore_Dark", MinLevel = 45, MaxLevel = 47 },
    { SpawnerName = "volcano_orange_I", PalId = "MimicDog", MinLevel = 36, MaxLevel = 38 },
    { SpawnerName = "volcano_orange_I", PalId = "Ronin", MinLevel = 38, MaxLevel = 42 },
    { SpawnerName = "volcano_orange_I", PalId = "SharkKid_Fire", MinLevel = 34, MaxLevel = 38 },

    -- volcano_orange_I_coast
    { SpawnerName = "volcano_orange_I_coast", PalId = "LazyCatfish", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "volcano_orange_I_coast", PalId = "LazyCatfish_Gold", MinLevel = 42, MaxLevel = 45 },
    { SpawnerName = "volcano_orange_I_coast", PalId = "TentacleTurtle", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "volcano_orange_I_coast", PalId = "TentacleTurtle_Ground", MinLevel = 42, MaxLevel = 45 },

    -- volcano_orange_J
    { SpawnerName = "volcano_orange_J", PalId = "Baphomet", MinLevel = 36, MaxLevel = 40 },
    { SpawnerName = "volcano_orange_J", PalId = "FireKirin_Dark", MinLevel = 38, MaxLevel = 42 },
    { SpawnerName = "volcano_orange_J", PalId = "Manticore_Dark", MinLevel = 46, MaxLevel = 48 },
    { SpawnerName = "volcano_orange_J", PalId = "MimicDog", MinLevel = 35, MaxLevel = 39 },
    { SpawnerName = "volcano_orange_J", PalId = "RedArmorBird", MinLevel = 34, MaxLevel = 38 },
    { SpawnerName = "volcano_orange_J", PalId = "Ronin", MinLevel = 39, MaxLevel = 43 },
    { SpawnerName = "volcano_orange_J", PalId = "SharkKid_Fire", MinLevel = 36, MaxLevel = 39 },

    -- volcano_orange_J_coast
    { SpawnerName = "volcano_orange_J_coast", PalId = "GhostAnglerfish", MinLevel = 50, MaxLevel = 54 },
    { SpawnerName = "volcano_orange_J_coast", PalId = "LazyCatfish", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "volcano_orange_J_coast", PalId = "LazyCatfish_Gold", MinLevel = 42, MaxLevel = 45 },
    { SpawnerName = "volcano_orange_J_coast", PalId = "TentacleTurtle", MinLevel = 36, MaxLevel = 39 },
    { SpawnerName = "volcano_orange_J_coast", PalId = "TentacleTurtle_Ground", MinLevel = 42, MaxLevel = 45 },

    -- volcano_yellow_A
    { SpawnerName = "volcano_yellow_A", PalId = "FireKirin_Dark", MinLevel = 34, MaxLevel = 36 },
    { SpawnerName = "volcano_yellow_A", PalId = "FlameBuffalo", MinLevel = 20, MaxLevel = 22 },
    { SpawnerName = "volcano_yellow_A", PalId = "LavaGirl", MinLevel = 18, MaxLevel = 20 },
    { SpawnerName = "volcano_yellow_A", PalId = "LizardMan", MinLevel = 21, MaxLevel = 23 },
    { SpawnerName = "volcano_yellow_A", PalId = "Manticore_Dark", MinLevel = 35, MaxLevel = 39 },
    { SpawnerName = "volcano_yellow_A", PalId = "MimicDog", MinLevel = 20, MaxLevel = 24 },
    { SpawnerName = "volcano_yellow_A", PalId = "Ronin", MinLevel = 25, MaxLevel = 28 },

    -- volcano_yellow_A_coast
    { SpawnerName = "volcano_yellow_A_coast", PalId = "LazyCatfish", MinLevel = 20, MaxLevel = 24 },
    { SpawnerName = "volcano_yellow_A_coast", PalId = "LazyCatfish_Gold", MinLevel = 25, MaxLevel = 30 },
    { SpawnerName = "volcano_yellow_A_coast", PalId = "SharkKid", MinLevel = 22, MaxLevel = 26 },

    -- volcano_yellow_ALL_Lazydragons
    { SpawnerName = "volcano_yellow_ALL_Lazydragons", PalId = "LazyDragon", MinLevel = 40, MaxLevel = 43 },

    -- volcano_yellow_B
    { SpawnerName = "volcano_yellow_B", PalId = "FireKirin_Dark", MinLevel = 34, MaxLevel = 36 },
    { SpawnerName = "volcano_yellow_B", PalId = "FlameBuffalo", MinLevel = 20, MaxLevel = 22 },
    { SpawnerName = "volcano_yellow_B", PalId = "LavaGirl", MinLevel = 18, MaxLevel = 20 },
    { SpawnerName = "volcano_yellow_B", PalId = "LizardMan", MinLevel = 21, MaxLevel = 23 },
    { SpawnerName = "volcano_yellow_B", PalId = "Manticore_Dark", MinLevel = 35, MaxLevel = 39 },
    { SpawnerName = "volcano_yellow_B", PalId = "MimicDog", MinLevel = 20, MaxLevel = 24 },
    { SpawnerName = "volcano_yellow_B", PalId = "Ronin", MinLevel = 25, MaxLevel = 28 },

    -- volcano_yellow_B_coast
    { SpawnerName = "volcano_yellow_B_coast", PalId = "LazyCatfish", MinLevel = 20, MaxLevel = 24 },
    { SpawnerName = "volcano_yellow_B_coast", PalId = "LazyCatfish_Gold", MinLevel = 25, MaxLevel = 30 },

    -- volcano_yellow_C
    { SpawnerName = "volcano_yellow_C", PalId = "FireKirin_Dark", MinLevel = 34, MaxLevel = 36 },
    { SpawnerName = "volcano_yellow_C", PalId = "FoxMage", MinLevel = 23, MaxLevel = 27 },
    { SpawnerName = "volcano_yellow_C", PalId = "Manticore_Dark", MinLevel = 35, MaxLevel = 39 },
    { SpawnerName = "volcano_yellow_C", PalId = "MimicDog", MinLevel = 22, MaxLevel = 26 },
    { SpawnerName = "volcano_yellow_C", PalId = "Mutant", MinLevel = 25, MaxLevel = 29 },
    { SpawnerName = "volcano_yellow_C", PalId = "Ronin", MinLevel = 28, MaxLevel = 32 },

    -- volcano_yellow_C_coast
    { SpawnerName = "volcano_yellow_C_coast", PalId = "LazyCatfish", MinLevel = 22, MaxLevel = 26 },
    { SpawnerName = "volcano_yellow_C_coast", PalId = "LazyCatfish_Gold", MinLevel = 27, MaxLevel = 32 },

    -- volcano_yellow_D
    { SpawnerName = "volcano_yellow_D", PalId = "FireKirin_Dark", MinLevel = 34, MaxLevel = 36 },
    { SpawnerName = "volcano_yellow_D", PalId = "LizardMan", MinLevel = 22, MaxLevel = 25 },
    { SpawnerName = "volcano_yellow_D", PalId = "Manticore_Dark", MinLevel = 35, MaxLevel = 39 },
    { SpawnerName = "volcano_yellow_D", PalId = "MimicDog", MinLevel = 24, MaxLevel = 28 },
    { SpawnerName = "volcano_yellow_D", PalId = "Ronin", MinLevel = 27, MaxLevel = 30 },

    -- volcano_yellow_D_coast
    { SpawnerName = "volcano_yellow_D_coast", PalId = "Kelpie_Fire", MinLevel = 20, MaxLevel = 22 },
    { SpawnerName = "volcano_yellow_D_coast", PalId = "LazyCatfish", MinLevel = 24, MaxLevel = 28 },
    { SpawnerName = "volcano_yellow_D_coast", PalId = "LazyCatfish_Gold", MinLevel = 28, MaxLevel = 32 },

    -- volcanoiskand_1
    { SpawnerName = "volcanoiskand_1", PalId = "VolcanoDragon", MinLevel = 65, MaxLevel = 68 },
    { SpawnerName = "volcanoiskand_1", PalId = "WingGolem_Fire", MinLevel = 65, MaxLevel = 68 },

    -- volcanoiskand_2
    { SpawnerName = "volcanoiskand_2", PalId = "KingBahamut", MinLevel = 46, MaxLevel = 50 },
    { SpawnerName = "volcanoiskand_2", PalId = "RockBeast", MinLevel = 42, MaxLevel = 46 },
    { SpawnerName = "volcanoiskand_2", PalId = "SwordCutlassfish_Fire", MinLevel = 40, MaxLevel = 44 },

    -- yamijima_beach_purple_A
    { SpawnerName = "yamijima_beach_purple_A", PalId = "BlackPuppy", MinLevel = 50, MaxLevel = 53 },
    { SpawnerName = "yamijima_beach_purple_A", PalId = "GhostAnglerfish", MinLevel = 50, MaxLevel = 54 },
    { SpawnerName = "yamijima_beach_purple_A", PalId = "JellyfishFairy", MinLevel = 50, MaxLevel = 54 },
    { SpawnerName = "yamijima_beach_purple_A", PalId = "JellyfishGhost", MinLevel = 50, MaxLevel = 55 },
    { SpawnerName = "yamijima_beach_purple_A", PalId = "MimicDog", MinLevel = 50, MaxLevel = 55 },
    { SpawnerName = "yamijima_beach_purple_A", PalId = "MysteryMask", MinLevel = 51, MaxLevel = 55 },
    { SpawnerName = "yamijima_beach_purple_A", PalId = "Ronin_Dark", MinLevel = 50, MaxLevel = 55 },
    { SpawnerName = "yamijima_beach_purple_A", PalId = "Serpent_Ground", MinLevel = 52, MaxLevel = 55 },
    { SpawnerName = "yamijima_beach_purple_A", PalId = "WhiteDeer", MinLevel = 54, MaxLevel = 55 },

    -- yamijima_beach_purple_B
    { SpawnerName = "yamijima_beach_purple_B", PalId = "BlackPuppy", MinLevel = 50, MaxLevel = 53 },
    { SpawnerName = "yamijima_beach_purple_B", PalId = "GhostAnglerfish", MinLevel = 50, MaxLevel = 54 },
    { SpawnerName = "yamijima_beach_purple_B", PalId = "JellyfishGhost", MinLevel = 50, MaxLevel = 55 },
    { SpawnerName = "yamijima_beach_purple_B", PalId = "MimicDog", MinLevel = 50, MaxLevel = 55 },
    { SpawnerName = "yamijima_beach_purple_B", PalId = "MysteryMask", MinLevel = 51, MaxLevel = 55 },
    { SpawnerName = "yamijima_beach_purple_B", PalId = "OctopusGirl", MinLevel = 50, MaxLevel = 54 },
    { SpawnerName = "yamijima_beach_purple_B", PalId = "Ronin_Dark", MinLevel = 50, MaxLevel = 55 },
    { SpawnerName = "yamijima_beach_purple_B", PalId = "Serpent_Ground", MinLevel = 52, MaxLevel = 55 },
    { SpawnerName = "yamijima_beach_purple_B", PalId = "WhiteDeer", MinLevel = 54, MaxLevel = 55 },

    -- yamijima_beach_purple_C
    { SpawnerName = "yamijima_beach_purple_C", PalId = "BlackPuppy", MinLevel = 50, MaxLevel = 53 },
    { SpawnerName = "yamijima_beach_purple_C", PalId = "JellyfishFairy", MinLevel = 50, MaxLevel = 54 },
    { SpawnerName = "yamijima_beach_purple_C", PalId = "JellyfishGhost", MinLevel = 50, MaxLevel = 55 },
    { SpawnerName = "yamijima_beach_purple_C", PalId = "MimicDog", MinLevel = 50, MaxLevel = 55 },
    { SpawnerName = "yamijima_beach_purple_C", PalId = "MysteryMask", MinLevel = 51, MaxLevel = 55 },
    { SpawnerName = "yamijima_beach_purple_C", PalId = "RaijinDaughter_Water", MinLevel = 50, MaxLevel = 54 },
    { SpawnerName = "yamijima_beach_purple_C", PalId = "Ronin_Dark", MinLevel = 50, MaxLevel = 55 },
    { SpawnerName = "yamijima_beach_purple_C", PalId = "Serpent_Ground", MinLevel = 52, MaxLevel = 55 },
    { SpawnerName = "yamijima_beach_purple_C", PalId = "WhiteDeer", MinLevel = 54, MaxLevel = 55 },

    -- yamijima_forest_pink_D
    { SpawnerName = "yamijima_forest_pink_D", PalId = "BlackPuppy", MinLevel = 60, MaxLevel = 63 },
    { SpawnerName = "yamijima_forest_pink_D", PalId = "GoldenHorse", MinLevel = 62, MaxLevel = 64 },
    { SpawnerName = "yamijima_forest_pink_D", PalId = "HerculesBeetle_Ground", MinLevel = 62, MaxLevel = 64 },
    { SpawnerName = "yamijima_forest_pink_D", PalId = "MimicDog", MinLevel = 60, MaxLevel = 65 },
    { SpawnerName = "yamijima_forest_pink_D", PalId = "MysteryMask", MinLevel = 61, MaxLevel = 63 },
    { SpawnerName = "yamijima_forest_pink_D", PalId = "NightBlueHorse", MinLevel = 60, MaxLevel = 64 },
    { SpawnerName = "yamijima_forest_pink_D", PalId = "Ronin_Dark", MinLevel = 60, MaxLevel = 64 },

    -- yamijima_forest_purple_A
    { SpawnerName = "yamijima_forest_purple_A", PalId = "BlackPuppy", MinLevel = 50, MaxLevel = 53 },
    { SpawnerName = "yamijima_forest_purple_A", PalId = "BlueberryFairy", MinLevel = 52, MaxLevel = 54 },
    { SpawnerName = "yamijima_forest_purple_A", PalId = "GoldenHorse", MinLevel = 53, MaxLevel = 56 },
    { SpawnerName = "yamijima_forest_purple_A", PalId = "MimicDog", MinLevel = 50, MaxLevel = 55 },
    { SpawnerName = "yamijima_forest_purple_A", PalId = "MysteryMask", MinLevel = 52, MaxLevel = 55 },
    { SpawnerName = "yamijima_forest_purple_A", PalId = "NightBlueHorse", MinLevel = 53, MaxLevel = 55 },
    { SpawnerName = "yamijima_forest_purple_A", PalId = "Ronin_Dark", MinLevel = 53, MaxLevel = 55 },
    { SpawnerName = "yamijima_forest_purple_A", PalId = "ThunderDog", MinLevel = 52, MaxLevel = 54 },
    { SpawnerName = "yamijima_forest_purple_A", PalId = "WhiteDeer", MinLevel = 55, MaxLevel = 56 },

    -- yamijima_forest_purple_B
    { SpawnerName = "yamijima_forest_purple_B", PalId = "BerryGoat_Dark", MinLevel = 52, MaxLevel = 54 },
    { SpawnerName = "yamijima_forest_purple_B", PalId = "BlackPuppy", MinLevel = 50, MaxLevel = 53 },
    { SpawnerName = "yamijima_forest_purple_B", PalId = "BlueberryFairy", MinLevel = 52, MaxLevel = 54 },
    { SpawnerName = "yamijima_forest_purple_B", PalId = "HerculesBeetle_Ground", MinLevel = 53, MaxLevel = 56 },
    { SpawnerName = "yamijima_forest_purple_B", PalId = "MimicDog", MinLevel = 50, MaxLevel = 55 },
    { SpawnerName = "yamijima_forest_purple_B", PalId = "MysteryMask", MinLevel = 52, MaxLevel = 55 },
    { SpawnerName = "yamijima_forest_purple_B", PalId = "NightBlueHorse", MinLevel = 53, MaxLevel = 55 },
    { SpawnerName = "yamijima_forest_purple_B", PalId = "Ronin_Dark", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_forest_purple_B", PalId = "WhiteDeer", MinLevel = 55, MaxLevel = 56 },

    -- yamijima_forest_purple_C
    { SpawnerName = "yamijima_forest_purple_C", PalId = "BerryGoat_Dark", MinLevel = 56, MaxLevel = 58 },
    { SpawnerName = "yamijima_forest_purple_C", PalId = "BlackPuppy", MinLevel = 56, MaxLevel = 57 },
    { SpawnerName = "yamijima_forest_purple_C", PalId = "HerculesBeetle_Ground", MinLevel = 57, MaxLevel = 59 },
    { SpawnerName = "yamijima_forest_purple_C", PalId = "MimicDog", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_forest_purple_C", PalId = "MysteryMask", MinLevel = 57, MaxLevel = 59 },
    { SpawnerName = "yamijima_forest_purple_C", PalId = "NightBlueHorse", MinLevel = 57, MaxLevel = 59 },
    { SpawnerName = "yamijima_forest_purple_C", PalId = "Ronin_Dark", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_forest_purple_C", PalId = "ThunderDog", MinLevel = 56, MaxLevel = 58 },
    { SpawnerName = "yamijima_forest_purple_C", PalId = "WhiteDeer", MinLevel = 58, MaxLevel = 59 },

    -- yamijima_IceLand_pink_A
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "BirdDragon_Ice", MinLevel = 65, MaxLevel = 67 },
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "BlackPuppy", MinLevel = 62, MaxLevel = 63 },
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "CandleGhost", MinLevel = 64, MaxLevel = 67 },
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "CatVampire", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "GhostRabbit", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "MimicDog", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "MysteryMask", MinLevel = 64, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "Ronin_Dark", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "Werewolf_Ice", MinLevel = 64, MaxLevel = 65 },
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "WhiteDeer", MinLevel = 65, MaxLevel = 65 },

    -- yamijima_IceLand_pink_A_LazyDragon
    { SpawnerName = "yamijima_IceLand_pink_A_LazyDragon", PalId = "LazyDragon", MinLevel = 66, MaxLevel = 67 },
    { SpawnerName = "yamijima_IceLand_pink_A_LazyDragon", PalId = "LazyDragon_Electric", MinLevel = 68, MaxLevel = 68 },

    -- yamijima_IceLand_pink_B
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "BlackPuppy", MinLevel = 62, MaxLevel = 63 },
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "CandleGhost", MinLevel = 64, MaxLevel = 67 },
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "CatVampire", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "Horus_Water", MinLevel = 65, MaxLevel = 67 },
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "MimicDog", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "MushroomDragon_Dark", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "MysteryMask", MinLevel = 64, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "Ronin_Dark", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "Werewolf_Ice", MinLevel = 64, MaxLevel = 65 },
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "WhiteDeer", MinLevel = 65, MaxLevel = 65 },

    -- yamijima_IceLand_pink_B_LazyDragon
    { SpawnerName = "yamijima_IceLand_pink_B_LazyDragon", PalId = "LazyDragon", MinLevel = 67, MaxLevel = 68 },
    { SpawnerName = "yamijima_IceLand_pink_B_LazyDragon", PalId = "LazyDragon_Electric", MinLevel = 69, MaxLevel = 69 },

    -- yamijima_IceLand_pink_C
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "BirdDragon_Ice", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "BlackPuppy", MinLevel = 62, MaxLevel = 63 },
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "CandleGhost", MinLevel = 64, MaxLevel = 67 },
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "GhostRabbit", MinLevel = 66, MaxLevel = 67 },
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "Manticore_Dark", MinLevel = 66, MaxLevel = 67 },
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "MimicDog", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "MushroomDragon_Dark", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "MysteryMask", MinLevel = 64, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "Ronin_Dark", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "WhiteDeer", MinLevel = 65, MaxLevel = 65 },

    -- yamijima_IceLand_pink_D
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "BlackPuppy", MinLevel = 62, MaxLevel = 63 },
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "BlueThunderHorse", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "CandleGhost", MinLevel = 64, MaxLevel = 67 },
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "Horus_Water", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "Manticore_Dark", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "MimicDog", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "MysteryMask", MinLevel = 64, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "Ronin_Dark", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "VolcanicMonster_Ice", MinLevel = 66, MaxLevel = 67 },
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "WhiteDeer", MinLevel = 65, MaxLevel = 65 },

    -- yamijima_IceLand_pink_F
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "BirdDragon_Ice", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "BlackPuppy", MinLevel = 62, MaxLevel = 63 },
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "BlueThunderHorse", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "CandleGhost", MinLevel = 64, MaxLevel = 67 },
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "MimicDog", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "MushroomDragon_Dark", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "MysteryMask", MinLevel = 64, MaxLevel = 66 },
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "Ronin_Dark", MinLevel = 65, MaxLevel = 65 },
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "VolcanicMonster_Ice", MinLevel = 66, MaxLevel = 67 },
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "WhiteDeer", MinLevel = 65, MaxLevel = 65 },

    -- yamijima_lava_pink_A
    { SpawnerName = "yamijima_lava_pink_A", PalId = "BlackPuppy", MinLevel = 64, MaxLevel = 66 },
    { SpawnerName = "yamijima_lava_pink_A", PalId = "Manticore", MinLevel = 65, MaxLevel = 67 },
    { SpawnerName = "yamijima_lava_pink_A", PalId = "MimicDog", MinLevel = 65, MaxLevel = 67 },
    { SpawnerName = "yamijima_lava_pink_A", PalId = "MysteryMask", MinLevel = 65, MaxLevel = 66 },
    { SpawnerName = "yamijima_lava_pink_A", PalId = "NightBlueHorse", MinLevel = 65, MaxLevel = 67 },
    { SpawnerName = "yamijima_lava_pink_A", PalId = "RedArmorBird", MinLevel = 65, MaxLevel = 67 },
    { SpawnerName = "yamijima_lava_pink_A", PalId = "Ronin_Dark", MinLevel = 65, MaxLevel = 67 },
    { SpawnerName = "yamijima_lava_pink_A", PalId = "Umihebi_Fire", MinLevel = 66, MaxLevel = 67 },
    { SpawnerName = "yamijima_lava_pink_A", PalId = "WhiteDeer", MinLevel = 67, MaxLevel = 68 },

    -- yamijima_plateau_pink_A_LazyDragon
    { SpawnerName = "yamijima_plateau_pink_A_LazyDragon", PalId = "LazyDragon", MinLevel = 60, MaxLevel = 62 },
    { SpawnerName = "yamijima_plateau_pink_A_LazyDragon", PalId = "LazyDragon_Electric", MinLevel = 63, MaxLevel = 65 },

    -- yamijima_plateau_pink_B_LazyDragon
    { SpawnerName = "yamijima_plateau_pink_B_LazyDragon", PalId = "LazyDragon", MinLevel = 60, MaxLevel = 62 },
    { SpawnerName = "yamijima_plateau_pink_B_LazyDragon", PalId = "LazyDragon_Electric", MinLevel = 63, MaxLevel = 65 },

    -- yamijima_plateau_pink_D
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "AmaterasuWolf_Dark", MinLevel = 61, MaxLevel = 63 },
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "BlackPuppy", MinLevel = 59, MaxLevel = 62 },
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "BlueberryFairy", MinLevel = 61, MaxLevel = 63 },
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "GrimGirl", MinLevel = 60, MaxLevel = 65 },
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "HadesBird", MinLevel = 62, MaxLevel = 64 },
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "KendoFrog_Dark", MinLevel = 61, MaxLevel = 62 },
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "MimicDog", MinLevel = 60, MaxLevel = 65 },
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "MysteryMask", MinLevel = 61, MaxLevel = 62 },
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "Ronin_Dark", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "WhiteDeer", MinLevel = 64, MaxLevel = 64 },

    -- yamijima_plateau_pink_D_LazyDragon
    { SpawnerName = "yamijima_plateau_pink_D_LazyDragon", PalId = "LazyDragon", MinLevel = 62, MaxLevel = 63 },
    { SpawnerName = "yamijima_plateau_pink_D_LazyDragon", PalId = "LazyDragon_Electric", MinLevel = 64, MaxLevel = 66 },

    -- yamijima_plateau_pink_E
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "BlackPuppy", MinLevel = 59, MaxLevel = 62 },
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "BlueberryFairy", MinLevel = 61, MaxLevel = 63 },
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "GoldenHorse", MinLevel = 61, MaxLevel = 63 },
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "GrimGirl", MinLevel = 60, MaxLevel = 65 },
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "HadesBird", MinLevel = 62, MaxLevel = 64 },
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "KendoFrog_Dark", MinLevel = 61, MaxLevel = 62 },
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "MimicDog", MinLevel = 60, MaxLevel = 65 },
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "MysteryMask", MinLevel = 61, MaxLevel = 62 },
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "Ronin_Dark", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "WhiteDeer", MinLevel = 64, MaxLevel = 64 },

    -- yamijima_plateau_pink_E_LazyDragon
    { SpawnerName = "yamijima_plateau_pink_E_LazyDragon", PalId = "LazyDragon", MinLevel = 64, MaxLevel = 66 },
    { SpawnerName = "yamijima_plateau_pink_E_LazyDragon", PalId = "LazyDragon_Electric", MinLevel = 67, MaxLevel = 68 },

    -- yamijima_plateau_pink_F
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "AmaterasuWolf_Dark", MinLevel = 61, MaxLevel = 63 },
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "BlackPuppy", MinLevel = 59, MaxLevel = 62 },
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "BlueberryFairy", MinLevel = 61, MaxLevel = 63 },
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "GrimGirl", MinLevel = 60, MaxLevel = 65 },
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "HadesBird", MinLevel = 62, MaxLevel = 64 },
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "KendoFrog_Dark", MinLevel = 61, MaxLevel = 62 },
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "MimicDog", MinLevel = 60, MaxLevel = 65 },
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "MysteryMask", MinLevel = 61, MaxLevel = 62 },
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "Ronin_Dark", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "WhiteDeer", MinLevel = 64, MaxLevel = 64 },

    -- yamijima_plateau_pink_G
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "AmaterasuWolf_Dark", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "BlackPuppy", MinLevel = 62, MaxLevel = 63 },
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "BlueberryFairy", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "GoldenHorse", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "GrimGirl", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "HadesBird", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "MimicDog", MinLevel = 60, MaxLevel = 65 },
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "MysteryMask", MinLevel = 63, MaxLevel = 64 },
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "Ronin_Dark", MinLevel = 63, MaxLevel = 66 },
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "WhiteDeer", MinLevel = 65, MaxLevel = 65 },

    -- yamijima_plateau_purple_A
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "BadCatgirl", MinLevel = 56, MaxLevel = 58 },
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "BlackPuppy", MinLevel = 55, MaxLevel = 56 },
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "DarkCrow", MinLevel = 56, MaxLevel = 57 },
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "FengyunDeeper_Electric", MinLevel = 57, MaxLevel = 58 },
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "GrimGirl", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "MimicDog", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "MysteryMask", MinLevel = 57, MaxLevel = 59 },
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "RaijinDaughter_Water", MinLevel = 56, MaxLevel = 57 },
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "Ronin_Dark", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "WhiteDeer", MinLevel = 58, MaxLevel = 59 },

    -- yamijima_plateau_purple_B
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "BadCatgirl", MinLevel = 56, MaxLevel = 58 },
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "BirdDragon", MinLevel = 57, MaxLevel = 57 },
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "BlackPuppy", MinLevel = 55, MaxLevel = 56 },
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "DarkCrow", MinLevel = 56, MaxLevel = 57 },
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "FengyunDeeper_Electric", MinLevel = 57, MaxLevel = 59 },
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "GrimGirl", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "MimicDog", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "MysteryMask", MinLevel = 57, MaxLevel = 59 },
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "Ronin_Dark", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "WhiteDeer", MinLevel = 58, MaxLevel = 59 },

    -- yamijima_plateau_purple_C
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "BadCatgirl", MinLevel = 56, MaxLevel = 58 },
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "BirdDragon", MinLevel = 57, MaxLevel = 57 },
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "BlackPuppy", MinLevel = 55, MaxLevel = 56 },
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "DarkCrow", MinLevel = 56, MaxLevel = 57 },
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "FengyunDeeper_Electric", MinLevel = 57, MaxLevel = 59 },
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "GrimGirl", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "MimicDog", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "MysteryMask", MinLevel = 57, MaxLevel = 59 },
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "Ronin_Dark", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "WhiteDeer", MinLevel = 58, MaxLevel = 59 },

    -- yamijima_rock_pink_B_LazyDragon
    { SpawnerName = "yamijima_rock_pink_B_LazyDragon", PalId = "LazyDragon", MinLevel = 60, MaxLevel = 62 },
    { SpawnerName = "yamijima_rock_pink_B_LazyDragon", PalId = "LazyDragon_Electric", MinLevel = 63, MaxLevel = 65 },

    -- yamijima_rock_pink_D
    { SpawnerName = "yamijima_rock_pink_D", PalId = "BlackPuppy", MinLevel = 60, MaxLevel = 62 },
    { SpawnerName = "yamijima_rock_pink_D", PalId = "JellyfishGhost", MinLevel = 60, MaxLevel = 63 },
    { SpawnerName = "yamijima_rock_pink_D", PalId = "MimicDog", MinLevel = 60, MaxLevel = 65 },
    { SpawnerName = "yamijima_rock_pink_D", PalId = "MysteryMask", MinLevel = 61, MaxLevel = 63 },
    { SpawnerName = "yamijima_rock_pink_D", PalId = "NegativeOctopus", MinLevel = 60, MaxLevel = 62 },
    { SpawnerName = "yamijima_rock_pink_D", PalId = "Ronin_Dark", MinLevel = 60, MaxLevel = 63 },
    { SpawnerName = "yamijima_rock_pink_D", PalId = "Serpent_Ground", MinLevel = 61, MaxLevel = 63 },
    { SpawnerName = "yamijima_rock_pink_D", PalId = "WhiteDeer", MinLevel = 65, MaxLevel = 65 },
    { SpawnerName = "yamijima_rock_pink_D", PalId = "WhiteTiger_Ground", MinLevel = 62, MaxLevel = 64 },

    -- yamijima_rock_pink_E
    { SpawnerName = "yamijima_rock_pink_E", PalId = "BirdDragon", MinLevel = 61, MaxLevel = 63 },
    { SpawnerName = "yamijima_rock_pink_E", PalId = "BlackPuppy", MinLevel = 60, MaxLevel = 62 },
    { SpawnerName = "yamijima_rock_pink_E", PalId = "JellyfishGhost", MinLevel = 60, MaxLevel = 63 },
    { SpawnerName = "yamijima_rock_pink_E", PalId = "MimicDog", MinLevel = 60, MaxLevel = 65 },
    { SpawnerName = "yamijima_rock_pink_E", PalId = "MysteryMask", MinLevel = 61, MaxLevel = 63 },
    { SpawnerName = "yamijima_rock_pink_E", PalId = "OctopusGirl", MinLevel = 60, MaxLevel = 62 },
    { SpawnerName = "yamijima_rock_pink_E", PalId = "Ronin_Dark", MinLevel = 60, MaxLevel = 63 },
    { SpawnerName = "yamijima_rock_pink_E", PalId = "WhiteDeer", MinLevel = 65, MaxLevel = 65 },
    { SpawnerName = "yamijima_rock_pink_E", PalId = "WhiteTiger_Ground", MinLevel = 62, MaxLevel = 64 },

    -- yamijima_rock_purple_A
    { SpawnerName = "yamijima_rock_purple_A", PalId = "BirdDragon", MinLevel = 58, MaxLevel = 59 },
    { SpawnerName = "yamijima_rock_purple_A", PalId = "BlackPuppy", MinLevel = 56, MaxLevel = 57 },
    { SpawnerName = "yamijima_rock_purple_A", PalId = "JellyfishGhost", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_rock_purple_A", PalId = "MimicDog", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_rock_purple_A", PalId = "MysteryMask", MinLevel = 57, MaxLevel = 59 },
    { SpawnerName = "yamijima_rock_purple_A", PalId = "NegativeOctopus", MinLevel = 56, MaxLevel = 58 },
    { SpawnerName = "yamijima_rock_purple_A", PalId = "OctopusGirl", MinLevel = 56, MaxLevel = 58 },
    { SpawnerName = "yamijima_rock_purple_A", PalId = "Ronin_Dark", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_rock_purple_A", PalId = "WhiteDeer", MinLevel = 59, MaxLevel = 59 },

    -- yamijima_rock_purple_B
    { SpawnerName = "yamijima_rock_purple_B", PalId = "BirdDragon", MinLevel = 58, MaxLevel = 59 },
    { SpawnerName = "yamijima_rock_purple_B", PalId = "BlackPuppy", MinLevel = 56, MaxLevel = 57 },
    { SpawnerName = "yamijima_rock_purple_B", PalId = "JellyfishFairy", MinLevel = 56, MaxLevel = 58 },
    { SpawnerName = "yamijima_rock_purple_B", PalId = "JellyfishGhost", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_rock_purple_B", PalId = "MimicDog", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_rock_purple_B", PalId = "MysteryMask", MinLevel = 57, MaxLevel = 59 },
    { SpawnerName = "yamijima_rock_purple_B", PalId = "OctopusGirl", MinLevel = 56, MaxLevel = 58 },
    { SpawnerName = "yamijima_rock_purple_B", PalId = "Ronin_Dark", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_rock_purple_B", PalId = "WhiteDeer", MinLevel = 59, MaxLevel = 59 },

    -- yamijima_rock_purple_C
    { SpawnerName = "yamijima_rock_purple_C", PalId = "BirdDragon", MinLevel = 58, MaxLevel = 59 },
    { SpawnerName = "yamijima_rock_purple_C", PalId = "BlackPuppy", MinLevel = 56, MaxLevel = 57 },
    { SpawnerName = "yamijima_rock_purple_C", PalId = "GhostAnglerfish", MinLevel = 56, MaxLevel = 58 },
    { SpawnerName = "yamijima_rock_purple_C", PalId = "JellyfishGhost", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_rock_purple_C", PalId = "MimicDog", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_rock_purple_C", PalId = "MysteryMask", MinLevel = 57, MaxLevel = 59 },
    { SpawnerName = "yamijima_rock_purple_C", PalId = "OctopusGirl", MinLevel = 56, MaxLevel = 58 },
    { SpawnerName = "yamijima_rock_purple_C", PalId = "Ronin_Dark", MinLevel = 56, MaxLevel = 59 },
    { SpawnerName = "yamijima_rock_purple_C", PalId = "WhiteDeer", MinLevel = 59, MaxLevel = 59 },

    -- yellow_A
    { SpawnerName = "yellow_A", PalId = "CatMage", MinLevel = 25, MaxLevel = 28 },
    { SpawnerName = "yellow_A", PalId = "CuteButterfly", MinLevel = 16, MaxLevel = 18 },
    { SpawnerName = "yellow_A", PalId = "Eagle", MinLevel = 16, MaxLevel = 18 },
    { SpawnerName = "yellow_A", PalId = "FairyDragon", MinLevel = 25, MaxLevel = 28 },
    { SpawnerName = "yellow_A", PalId = "FluffyBird", MinLevel = 15, MaxLevel = 16 },
    { SpawnerName = "yellow_A", PalId = "HadesBird", MinLevel = 25, MaxLevel = 28 },
    { SpawnerName = "yellow_A", PalId = "LittleBriarRose", MinLevel = 16, MaxLevel = 18 },
    { SpawnerName = "yellow_A", PalId = "MimicDog", MinLevel = 18, MaxLevel = 20 },
    { SpawnerName = "yellow_A", PalId = "NaughtyCat", MinLevel = 25, MaxLevel = 28 },
    { SpawnerName = "yellow_A", PalId = "SakuraSaurus", MinLevel = 34, MaxLevel = 36 },
    { SpawnerName = "yellow_A", PalId = "Werewolf", MinLevel = 25, MaxLevel = 28 },

    -- yellow_A_cliff
    { SpawnerName = "yellow_A_cliff", PalId = "Eagle", MinLevel = 16, MaxLevel = 18 },

    -- yellow_A_flower
    { SpawnerName = "yellow_A_flower", PalId = "CuteButterfly", MinLevel = 16, MaxLevel = 18 },

    -- yellow_B
    { SpawnerName = "yellow_B", PalId = "HadesBird", MinLevel = 24, MaxLevel = 26 },
    { SpawnerName = "yellow_B", PalId = "MimicDog", MinLevel = 20, MaxLevel = 26 },
    { SpawnerName = "yellow_B", PalId = "Serpent", MinLevel = 24, MaxLevel = 26 },
    { SpawnerName = "yellow_B", PalId = "SharkKid", MinLevel = 20, MaxLevel = 22 },
    { SpawnerName = "yellow_B", PalId = "Werewolf", MinLevel = 23, MaxLevel = 24 },

    -- yellow_B_ColorfulBird
    { SpawnerName = "yellow_B_ColorfulBird", PalId = "ColorfulBird", MinLevel = 20, MaxLevel = 22 },

    -- yellow_B_Lazydragons
    { SpawnerName = "yellow_B_Lazydragons", PalId = "LazyDragon", MinLevel = 40, MaxLevel = 43 },

    -- yellow_C
    { SpawnerName = "yellow_C", PalId = "BerryGoat", MinLevel = 20, MaxLevel = 25 },
    { SpawnerName = "yellow_C", PalId = "CatMage", MinLevel = 25, MaxLevel = 28 },
    { SpawnerName = "yellow_C", PalId = "FlameBuffalo", MinLevel = 20, MaxLevel = 25 },
    { SpawnerName = "yellow_C", PalId = "HadesBird", MinLevel = 25, MaxLevel = 28 },
    { SpawnerName = "yellow_C", PalId = "LazyCatfish", MinLevel = 20, MaxLevel = 25 },
    { SpawnerName = "yellow_C", PalId = "MimicDog", MinLevel = 20, MaxLevel = 27 },
    { SpawnerName = "yellow_C", PalId = "NaughtyCat", MinLevel = 25, MaxLevel = 28 },
    { SpawnerName = "yellow_C", PalId = "Werewolf", MinLevel = 25, MaxLevel = 28 },

    -- yellow_C_Lazydragons
    { SpawnerName = "yellow_C_Lazydragons", PalId = "LazyDragon", MinLevel = 40, MaxLevel = 43 },

    -- yellow_C_serpents
    { SpawnerName = "yellow_C_serpents", PalId = "Serpent", MinLevel = 20, MaxLevel = 25 },

    -- yellow_D
    { SpawnerName = "yellow_D", PalId = "BerryGoat", MinLevel = 23, MaxLevel = 26 },
    { SpawnerName = "yellow_D", PalId = "CatMage", MinLevel = 25, MaxLevel = 28 },
    { SpawnerName = "yellow_D", PalId = "FlowerDoll", MinLevel = 28, MaxLevel = 30 },
    { SpawnerName = "yellow_D", PalId = "FlowerRabbit", MinLevel = 22, MaxLevel = 24 },
    { SpawnerName = "yellow_D", PalId = "HadesBird", MinLevel = 25, MaxLevel = 28 },
    { SpawnerName = "yellow_D", PalId = "MimicDog", MinLevel = 18, MaxLevel = 27 },
    { SpawnerName = "yellow_D", PalId = "NaughtyCat", MinLevel = 25, MaxLevel = 28 },
    { SpawnerName = "yellow_D", PalId = "PinkRabbit", MinLevel = 22, MaxLevel = 24 },
    { SpawnerName = "yellow_D", PalId = "PinkRabbit_Grass", MinLevel = 28, MaxLevel = 30 },
    { SpawnerName = "yellow_D", PalId = "Werewolf", MinLevel = 25, MaxLevel = 28 },

    -- yellow_F
    { SpawnerName = "yellow_F", PalId = "DarkCrow", MinLevel = 20, MaxLevel = 26 },
    { SpawnerName = "yellow_F", PalId = "ElecPomeranian", MinLevel = 18, MaxLevel = 21 },
    { SpawnerName = "yellow_F", PalId = "GrassMinotaur", MinLevel = 24, MaxLevel = 26 },
    { SpawnerName = "yellow_F", PalId = "Hedgehog_Ice", MinLevel = 20, MaxLevel = 24 },
    { SpawnerName = "yellow_F", PalId = "LazyCatfish", MinLevel = 22, MaxLevel = 25 },
    { SpawnerName = "yellow_F", PalId = "MimicDog", MinLevel = 18, MaxLevel = 22 },
    { SpawnerName = "yellow_F", PalId = "NegativeKoala", MinLevel = 18, MaxLevel = 24 },
    { SpawnerName = "yellow_F", PalId = "PinkRabbit_Grass", MinLevel = 18, MaxLevel = 22 },
    { SpawnerName = "yellow_F", PalId = "SakuraSaurus", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "yellow_F", PalId = "Werewolf", MinLevel = 20, MaxLevel = 26 },
    { SpawnerName = "yellow_F", PalId = "WizardOwl", MinLevel = 18, MaxLevel = 22 },

    -- yellow_F_BirdDragons
    { SpawnerName = "yellow_F_BirdDragons", PalId = "BirdDragon", MinLevel = 20, MaxLevel = 25 },
    { SpawnerName = "yellow_F_BirdDragons", PalId = "BirdDragon_Ice", MinLevel = 23, MaxLevel = 28 },

    -- yellow_F_BlueDragons
    { SpawnerName = "yellow_F_BlueDragons", PalId = "BlueDragon", MinLevel = 35, MaxLevel = 38 },

    -- yellow_G
    { SpawnerName = "yellow_G", PalId = "DarkCrow", MinLevel = 20, MaxLevel = 26 },
    { SpawnerName = "yellow_G", PalId = "GrassMammoth", MinLevel = 26, MaxLevel = 29 },
    { SpawnerName = "yellow_G", PalId = "Kirin", MinLevel = 20, MaxLevel = 24 },
    { SpawnerName = "yellow_G", PalId = "MimicDog", MinLevel = 18, MaxLevel = 22 },
    { SpawnerName = "yellow_G", PalId = "NegativeKoala", MinLevel = 18, MaxLevel = 24 },
    { SpawnerName = "yellow_G", PalId = "Werewolf", MinLevel = 20, MaxLevel = 26 },
    { SpawnerName = "yellow_G", PalId = "WindChimes", MinLevel = 18, MaxLevel = 22 },
    { SpawnerName = "yellow_G", PalId = "WizardOwl", MinLevel = 18, MaxLevel = 22 },

    -- yellow_H
    { SpawnerName = "yellow_H", PalId = "DarkCrow", MinLevel = 20, MaxLevel = 26 },
    { SpawnerName = "yellow_H", PalId = "MimicDog", MinLevel = 18, MaxLevel = 22 },
    { SpawnerName = "yellow_H", PalId = "NegativeKoala", MinLevel = 18, MaxLevel = 24 },
    { SpawnerName = "yellow_H", PalId = "PinkRabbit", MinLevel = 18, MaxLevel = 20 },
    { SpawnerName = "yellow_H", PalId = "PinkRabbit", MinLevel = 18, MaxLevel = 22 },
    { SpawnerName = "yellow_H", PalId = "PinkRabbit_Grass", MinLevel = 20, MaxLevel = 23 },
    { SpawnerName = "yellow_H", PalId = "PinkRabbit_Grass", MinLevel = 22, MaxLevel = 24 },
    { SpawnerName = "yellow_H", PalId = "SakuraSaurus", MinLevel = 35, MaxLevel = 38 },
    { SpawnerName = "yellow_H", PalId = "Werewolf", MinLevel = 20, MaxLevel = 26 },
    { SpawnerName = "yellow_H", PalId = "WindChimes", MinLevel = 18, MaxLevel = 22 },
    { SpawnerName = "yellow_H", PalId = "WizardOwl", MinLevel = 18, MaxLevel = 22 },
}