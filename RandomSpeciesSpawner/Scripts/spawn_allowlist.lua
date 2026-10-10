-- RandomSpeciesSpawner source allowlist.
-- Generated from the previously curated 1,102-row Palworld 1.0.x spawn snapshot.
--
-- This file answers ONLY:
--   "is this authored SpawnerName + original PalId pair ordinary overworld
--    wildlife that we have reviewed as safe to randomize?"
--
-- MinLevel/MaxLevel were intentionally removed. Level semantics live in
-- species_bands.lua and are keyed by the REPLACEMENT species.
--
-- Fail-closed exclusions in the source snapshot include:
--   * field bosses and companion Pals
--   * BOSS / FBOSS sheets
--   * quest / predator / scripted encounter rows
--   * humans / NPC sheets
--   * enemy-basecamp-style sources
--   * special/unknown families not proven ordinary wildlife
--   * linked regional Sweepa/Swee encounter sheets yellow_E and snow_orange_G
--   * placeholder rows
--
-- Source rows before pair dedupe: 1102
-- Unique allowed SpawnerName + PalId pairs: 1095

return {
    -- 1_15_plain_mopking
    { SpawnerName = "1_15_plain_mopking", PalId = "DarkCrow" },
    { SpawnerName = "1_15_plain_mopking", PalId = "Garm" },
    { SpawnerName = "1_15_plain_mopking", PalId = "MimicDog" },
    { SpawnerName = "1_15_plain_mopking", PalId = "MopBaby" },
    { SpawnerName = "1_15_plain_mopking", PalId = "MopKing" },
    { SpawnerName = "1_15_plain_mopking", PalId = "PlantSlime" },
    { SpawnerName = "1_15_plain_mopking", PalId = "PlantSlime_Flower" },
    { SpawnerName = "1_15_plain_mopking", PalId = "Werewolf" },
    { SpawnerName = "1_15_plain_mopking", PalId = "WoolFox" },

    -- 3_1_volcano_1
    { SpawnerName = "3_1_volcano_1", PalId = "BirdDragon" },
    { SpawnerName = "3_1_volcano_1", PalId = "FireKirin" },
    { SpawnerName = "3_1_volcano_1", PalId = "FireKirin_Dark" },
    { SpawnerName = "3_1_volcano_1", PalId = "FoxMage" },
    { SpawnerName = "3_1_volcano_1", PalId = "Kelpie_Fire" },
    { SpawnerName = "3_1_volcano_1", PalId = "LavaGirl" },
    { SpawnerName = "3_1_volcano_1", PalId = "Manticore_Dark" },
    { SpawnerName = "3_1_volcano_1", PalId = "MimicDog" },
    { SpawnerName = "3_1_volcano_1", PalId = "VolcanicMonster" },

    -- blue_A
    { SpawnerName = "blue_A", PalId = "CatBat" },
    { SpawnerName = "blue_A", PalId = "ElecCat" },
    { SpawnerName = "blue_A", PalId = "Garm" },
    { SpawnerName = "blue_A", PalId = "GhostBlackCat" },

    -- blue_B
    { SpawnerName = "blue_B", PalId = "Alpaca" },
    { SpawnerName = "blue_B", PalId = "Boar" },
    { SpawnerName = "blue_B", PalId = "CatBat" },
    { SpawnerName = "blue_B", PalId = "Deer" },
    { SpawnerName = "blue_B", PalId = "FlameBambi" },
    { SpawnerName = "blue_B", PalId = "GhostBlackCat" },
    { SpawnerName = "blue_B", PalId = "HawkBird" },
    { SpawnerName = "blue_B", PalId = "Monkey" },
    { SpawnerName = "blue_B", PalId = "Monkey_Fire" },

    -- blue_B_coast
    { SpawnerName = "blue_B_coast", PalId = "FlyingManta" },
    { SpawnerName = "blue_B_coast", PalId = "Kelpie" },
    { SpawnerName = "blue_B_coast", PalId = "Penguin" },

    -- blue_C
    { SpawnerName = "blue_C", PalId = "CatBat" },
    { SpawnerName = "blue_C", PalId = "Deer" },
    { SpawnerName = "blue_C", PalId = "GhostBlackCat" },
    { SpawnerName = "blue_C", PalId = "WindChimes" },

    -- blue_C_coast
    { SpawnerName = "blue_C_coast", PalId = "BluePlatypus" },
    { SpawnerName = "blue_C_coast", PalId = "ClioneTwins" },
    { SpawnerName = "blue_C_coast", PalId = "Kelpie" },

    -- blue_D
    { SpawnerName = "blue_D", PalId = "CatBat" },
    { SpawnerName = "blue_D", PalId = "Garm" },
    { SpawnerName = "blue_D", PalId = "GhostBlackCat" },
    { SpawnerName = "blue_D", PalId = "WindChimes" },

    -- blue_E
    { SpawnerName = "blue_E", PalId = "CatBat" },
    { SpawnerName = "blue_E", PalId = "CowPal" },
    { SpawnerName = "blue_E", PalId = "Deer" },
    { SpawnerName = "blue_E", PalId = "Garm" },
    { SpawnerName = "blue_E", PalId = "GhostBlackCat" },
    { SpawnerName = "blue_E", PalId = "HawkBird" },

    -- blue_E_boars
    { SpawnerName = "blue_E_boars", PalId = "Boar" },

    -- blue_E_Kelpie
    { SpawnerName = "blue_E_Kelpie", PalId = "Kelpie" },

    -- blue_E_Mantas
    { SpawnerName = "blue_E_Mantas", PalId = "FlyingManta" },

    -- blue_F
    { SpawnerName = "blue_F", PalId = "BluePlatypus" },
    { SpawnerName = "blue_F", PalId = "KendoFrog" },

    -- blue_G
    { SpawnerName = "blue_G", PalId = "DarkCrow" },
    { SpawnerName = "blue_G", PalId = "Deer" },
    { SpawnerName = "blue_G", PalId = "Garm" },
    { SpawnerName = "blue_G", PalId = "GrassMammoth" },
    { SpawnerName = "blue_G", PalId = "HawkBird" },
    { SpawnerName = "blue_G", PalId = "MimicDog" },
    { SpawnerName = "blue_G", PalId = "NegativeKoala" },
    { SpawnerName = "blue_G", PalId = "SweetsSheep" },
    { SpawnerName = "blue_G", PalId = "Werewolf" },

    -- blue_G_Lazydragons
    { SpawnerName = "blue_G_Lazydragons", PalId = "LazyDragon" },

    -- blue_G_platypuses
    { SpawnerName = "blue_G_platypuses", PalId = "BluePlatypus" },

    -- blue_G_serpents
    { SpawnerName = "blue_G_serpents", PalId = "Serpent" },

    -- blue_H
    { SpawnerName = "blue_H", PalId = "DarkCrow" },
    { SpawnerName = "blue_H", PalId = "GrassMammoth" },
    { SpawnerName = "blue_H", PalId = "HawkBird" },
    { SpawnerName = "blue_H", PalId = "MimicDog" },
    { SpawnerName = "blue_H", PalId = "NegativeKoala" },
    { SpawnerName = "blue_H", PalId = "Werewolf" },

    -- blue_I
    { SpawnerName = "blue_I", PalId = "Boar" },
    { SpawnerName = "blue_I", PalId = "Carbunclo" },
    { SpawnerName = "blue_I", PalId = "DreamDemon" },
    { SpawnerName = "blue_I", PalId = "Garm" },

    -- blue_I_Carbunclos
    { SpawnerName = "blue_I_Carbunclos", PalId = "Carbunclo" },

    -- blue_I_Kelpie
    { SpawnerName = "blue_I_Kelpie", PalId = "Kelpie" },

    -- blue_I_Mantas
    { SpawnerName = "blue_I_Mantas", PalId = "FlyingManta" },

    -- blue_J
    { SpawnerName = "blue_J", PalId = "DarkCrow" },
    { SpawnerName = "blue_J", PalId = "Eagle" },
    { SpawnerName = "blue_J", PalId = "Garm" },
    { SpawnerName = "blue_J", PalId = "LeafMomonga" },
    { SpawnerName = "blue_J", PalId = "MimicDog" },
    { SpawnerName = "blue_J", PalId = "Werewolf" },

    -- blue_J_hawkbirds
    { SpawnerName = "blue_J_hawkbirds", PalId = "HawkBird" },

    -- blue_J_Kelpie
    { SpawnerName = "blue_J_Kelpie", PalId = "Kelpie" },

    -- blue_K
    { SpawnerName = "blue_K", PalId = "DarkCrow" },
    { SpawnerName = "blue_K", PalId = "FlyingManta" },
    { SpawnerName = "blue_K", PalId = "Kelpie" },
    { SpawnerName = "blue_K", PalId = "PinkRabbit" },
    { SpawnerName = "blue_K", PalId = "SharkKid" },
    { SpawnerName = "blue_K", PalId = "Werewolf" },

    -- desert_orange_A
    { SpawnerName = "desert_orange_A", PalId = "ColorfulBird" },
    { SpawnerName = "desert_orange_A", PalId = "CuteMole" },
    { SpawnerName = "desert_orange_A", PalId = "DarkCrow" },
    { SpawnerName = "desert_orange_A", PalId = "DarkScorpion" },
    { SpawnerName = "desert_orange_A", PalId = "DrillGame" },
    { SpawnerName = "desert_orange_A", PalId = "FlowerDinosaur_Electric" },
    { SpawnerName = "desert_orange_A", PalId = "LizardMan" },
    { SpawnerName = "desert_orange_A", PalId = "MimicDog" },
    { SpawnerName = "desert_orange_A", PalId = "PinkLizard" },
    { SpawnerName = "desert_orange_A", PalId = "RobinHood_Ground" },
    { SpawnerName = "desert_orange_A", PalId = "Ronin" },
    { SpawnerName = "desert_orange_A", PalId = "ThunderBird" },

    -- desert_orange_B
    { SpawnerName = "desert_orange_B", PalId = "ColorfulBird" },
    { SpawnerName = "desert_orange_B", PalId = "CuteMole" },
    { SpawnerName = "desert_orange_B", PalId = "DarkCrow" },
    { SpawnerName = "desert_orange_B", PalId = "DarkScorpion" },
    { SpawnerName = "desert_orange_B", PalId = "DrillGame" },
    { SpawnerName = "desert_orange_B", PalId = "FlowerDinosaur_Electric" },
    { SpawnerName = "desert_orange_B", PalId = "Gorilla_Ground" },
    { SpawnerName = "desert_orange_B", PalId = "LizardMan" },
    { SpawnerName = "desert_orange_B", PalId = "MimicDog" },
    { SpawnerName = "desert_orange_B", PalId = "PinkLizard" },
    { SpawnerName = "desert_orange_B", PalId = "RobinHood_Ground" },
    { SpawnerName = "desert_orange_B", PalId = "Ronin" },

    -- desert_orange_C
    { SpawnerName = "desert_orange_C", PalId = "CactusDoll" },
    { SpawnerName = "desert_orange_C", PalId = "CactusDoll_Dark" },
    { SpawnerName = "desert_orange_C", PalId = "ColorfulBird" },
    { SpawnerName = "desert_orange_C", PalId = "CubeTurtle" },
    { SpawnerName = "desert_orange_C", PalId = "DarkCrow" },
    { SpawnerName = "desert_orange_C", PalId = "DarkScorpion" },
    { SpawnerName = "desert_orange_C", PalId = "DrillGame" },
    { SpawnerName = "desert_orange_C", PalId = "FeatherOstrich" },
    { SpawnerName = "desert_orange_C", PalId = "FlowerDinosaur_Electric" },
    { SpawnerName = "desert_orange_C", PalId = "LizardMan" },
    { SpawnerName = "desert_orange_C", PalId = "MimicDog" },
    { SpawnerName = "desert_orange_C", PalId = "MummyPal" },
    { SpawnerName = "desert_orange_C", PalId = "PinkLizard" },
    { SpawnerName = "desert_orange_C", PalId = "RobinHood_Ground" },
    { SpawnerName = "desert_orange_C", PalId = "Ronin" },
    { SpawnerName = "desert_orange_C", PalId = "Sekhmet" },
    { SpawnerName = "desert_orange_C", PalId = "Serpent_Ground" },
    { SpawnerName = "desert_orange_C", PalId = "ThunderBird" },

    -- desert_orange_C_CuteMoles
    { SpawnerName = "desert_orange_C_CuteMoles", PalId = "CuteMole" },

    -- desert_orange_D
    { SpawnerName = "desert_orange_D", PalId = "ColorfulBird" },
    { SpawnerName = "desert_orange_D", PalId = "CuteMole" },
    { SpawnerName = "desert_orange_D", PalId = "DarkCrow" },
    { SpawnerName = "desert_orange_D", PalId = "DarkScorpion" },
    { SpawnerName = "desert_orange_D", PalId = "DrillGame" },
    { SpawnerName = "desert_orange_D", PalId = "FlowerDinosaur_Electric" },
    { SpawnerName = "desert_orange_D", PalId = "LizardMan" },
    { SpawnerName = "desert_orange_D", PalId = "MimicDog" },
    { SpawnerName = "desert_orange_D", PalId = "PinkLizard" },
    { SpawnerName = "desert_orange_D", PalId = "RaijinDaughter" },
    { SpawnerName = "desert_orange_D", PalId = "RobinHood_Ground" },
    { SpawnerName = "desert_orange_D", PalId = "Ronin" },
    { SpawnerName = "desert_orange_D", PalId = "ThunderBird" },

    -- desert_orange_E
    { SpawnerName = "desert_orange_E", PalId = "ColorfulBird" },
    { SpawnerName = "desert_orange_E", PalId = "CuteMole" },
    { SpawnerName = "desert_orange_E", PalId = "DarkCrow" },
    { SpawnerName = "desert_orange_E", PalId = "DarkScorpion" },
    { SpawnerName = "desert_orange_E", PalId = "DrillGame" },
    { SpawnerName = "desert_orange_E", PalId = "FlowerDinosaur_Electric" },
    { SpawnerName = "desert_orange_E", PalId = "Gorilla_Ground" },
    { SpawnerName = "desert_orange_E", PalId = "LizardMan" },
    { SpawnerName = "desert_orange_E", PalId = "MimicDog" },
    { SpawnerName = "desert_orange_E", PalId = "PinkLizard" },
    { SpawnerName = "desert_orange_E", PalId = "RaijinDaughter" },
    { SpawnerName = "desert_orange_E", PalId = "RobinHood_Ground" },
    { SpawnerName = "desert_orange_E", PalId = "Ronin" },

    -- desert_orange_F
    { SpawnerName = "desert_orange_F", PalId = "ColorfulBird" },
    { SpawnerName = "desert_orange_F", PalId = "CuteMole" },
    { SpawnerName = "desert_orange_F", PalId = "DarkCrow" },
    { SpawnerName = "desert_orange_F", PalId = "DarkScorpion" },
    { SpawnerName = "desert_orange_F", PalId = "DrillGame" },
    { SpawnerName = "desert_orange_F", PalId = "FlowerDinosaur_Electric" },
    { SpawnerName = "desert_orange_F", PalId = "LizardMan" },
    { SpawnerName = "desert_orange_F", PalId = "MimicDog" },
    { SpawnerName = "desert_orange_F", PalId = "PinkLizard" },
    { SpawnerName = "desert_orange_F", PalId = "RobinHood_Ground" },
    { SpawnerName = "desert_orange_F", PalId = "Ronin" },

    -- desert_orange_G
    { SpawnerName = "desert_orange_G", PalId = "ColorfulBird" },
    { SpawnerName = "desert_orange_G", PalId = "CuteMole" },
    { SpawnerName = "desert_orange_G", PalId = "DarkCrow" },
    { SpawnerName = "desert_orange_G", PalId = "DarkScorpion" },
    { SpawnerName = "desert_orange_G", PalId = "DrillGame" },
    { SpawnerName = "desert_orange_G", PalId = "FlowerDinosaur_Electric" },
    { SpawnerName = "desert_orange_G", PalId = "Gorilla_Ground" },
    { SpawnerName = "desert_orange_G", PalId = "LizardMan" },
    { SpawnerName = "desert_orange_G", PalId = "MimicDog" },
    { SpawnerName = "desert_orange_G", PalId = "PinkLizard" },
    { SpawnerName = "desert_orange_G", PalId = "RobinHood_Ground" },
    { SpawnerName = "desert_orange_G", PalId = "Ronin" },

    -- desert_orange_H_DrillGames
    { SpawnerName = "desert_orange_H_DrillGames", PalId = "DrillGame" },

    -- desert_orange_Oasis
    { SpawnerName = "desert_orange_Oasis", PalId = "CactusDoll" },
    { SpawnerName = "desert_orange_Oasis", PalId = "FlowerDinosaur" },
    { SpawnerName = "desert_orange_Oasis", PalId = "FlowerDinosaur_Electric" },
    { SpawnerName = "desert_orange_Oasis", PalId = "MimicDog" },
    { SpawnerName = "desert_orange_Oasis", PalId = "Plesiosaur" },
    { SpawnerName = "desert_orange_Oasis", PalId = "TropicalOstrich" },

    -- desert_orange_Oasis_Paripi_Lazydragons
    { SpawnerName = "desert_orange_Oasis_Paripi_Lazydragons", PalId = "LazyDragon" },
    { SpawnerName = "desert_orange_Oasis_Paripi_Lazydragons", PalId = "LazyDragon_Electric" },

    -- desert_orange_Oasis_Suzakus
    { SpawnerName = "desert_orange_Oasis_Suzakus", PalId = "Suzaku" },

    -- desert_yellow_A
    { SpawnerName = "desert_yellow_A", PalId = "ColorfulBird" },
    { SpawnerName = "desert_yellow_A", PalId = "DarkCrow" },
    { SpawnerName = "desert_yellow_A", PalId = "FlyingManta_Thunder" },
    { SpawnerName = "desert_yellow_A", PalId = "LizardMan" },
    { SpawnerName = "desert_yellow_A", PalId = "MimicDog" },
    { SpawnerName = "desert_yellow_A", PalId = "NegativeOctopus_Neutral" },
    { SpawnerName = "desert_yellow_A", PalId = "PinkLizard" },
    { SpawnerName = "desert_yellow_A", PalId = "Ronin" },
    { SpawnerName = "desert_yellow_A", PalId = "Serpent" },

    -- desertisland_1
    { SpawnerName = "desertisland_1", PalId = "Anubis" },
    { SpawnerName = "desertisland_1", PalId = "ScorpionMan_Electric" },
    { SpawnerName = "desertisland_1", PalId = "Sekhmet" },

    -- desertisland_2
    { SpawnerName = "desertisland_2", PalId = "CactusDoll" },
    { SpawnerName = "desertisland_2", PalId = "DrillGame" },

    -- desertisland_3
    { SpawnerName = "desertisland_3", PalId = "IceSeal_Ground" },
    { SpawnerName = "desertisland_3", PalId = "SweetsSheep_Ground" },

    -- green_A
    { SpawnerName = "green_A", PalId = "BerryGoat" },
    { SpawnerName = "green_A", PalId = "ChickenPal" },
    { SpawnerName = "green_A", PalId = "DreamDemon" },
    { SpawnerName = "green_A", PalId = "GrassMammoth" },
    { SpawnerName = "green_A", PalId = "PinkCat" },
    { SpawnerName = "green_A", PalId = "SheepBall" },

    -- green_A_coast
    { SpawnerName = "green_A_coast", PalId = "FlyingManta" },

    -- green_A_Penguin
    { SpawnerName = "green_A_Penguin", PalId = "Penguin" },

    -- green_A_PlantSlime
    { SpawnerName = "green_A_PlantSlime", PalId = "BerryGoat" },
    { SpawnerName = "green_A_PlantSlime", PalId = "ChickenPal" },
    { SpawnerName = "green_A_PlantSlime", PalId = "DreamDemon" },
    { SpawnerName = "green_A_PlantSlime", PalId = "GrassMammoth" },
    { SpawnerName = "green_A_PlantSlime", PalId = "PinkCat" },
    { SpawnerName = "green_A_PlantSlime", PalId = "PlantSlime" },
    { SpawnerName = "green_A_PlantSlime", PalId = "PlantSlime_Flower" },
    { SpawnerName = "green_A_PlantSlime", PalId = "SamuraiDog" },

    -- green_A_river
    { SpawnerName = "green_A_river", PalId = "Ganesha" },

    -- green_A_SheepBall
    { SpawnerName = "green_A_SheepBall", PalId = "SheepBall" },

    -- green_B
    { SpawnerName = "green_B", PalId = "BerryGoat" },
    { SpawnerName = "green_B", PalId = "Carbunclo" },
    { SpawnerName = "green_B", PalId = "ChickenPal" },
    { SpawnerName = "green_B", PalId = "CowPal" },
    { SpawnerName = "green_B", PalId = "GrassMammoth" },
    { SpawnerName = "green_B", PalId = "KendoFrog" },
    { SpawnerName = "green_B", PalId = "Kitsunebi" },
    { SpawnerName = "green_B", PalId = "Penguin" },
    { SpawnerName = "green_B", PalId = "PinkCat" },
    { SpawnerName = "green_B", PalId = "PlantSlime" },
    { SpawnerName = "green_B", PalId = "SheepBall" },
    { SpawnerName = "green_B", PalId = "WizardOwl" },

    -- green_B_coast
    { SpawnerName = "green_B_coast", PalId = "FlyingManta" },
    { SpawnerName = "green_B_coast", PalId = "KendoFrog" },
    { SpawnerName = "green_B_coast", PalId = "Penguin" },

    -- green_B_river
    { SpawnerName = "green_B_river", PalId = "KendoFrog" },
    { SpawnerName = "green_B_river", PalId = "Penguin" },

    -- green_C
    { SpawnerName = "green_C", PalId = "BerryGoat" },
    { SpawnerName = "green_C", PalId = "ChickenPal" },
    { SpawnerName = "green_C", PalId = "CloverFairy" },
    { SpawnerName = "green_C", PalId = "CuteFox" },
    { SpawnerName = "green_C", PalId = "Deer" },
    { SpawnerName = "green_C", PalId = "GrassMammoth" },
    { SpawnerName = "green_C", PalId = "KendoFrog" },
    { SpawnerName = "green_C", PalId = "Kitsunebi" },
    { SpawnerName = "green_C", PalId = "LeafMomonga" },
    { SpawnerName = "green_C", PalId = "NightFox" },
    { SpawnerName = "green_C", PalId = "Penguin" },
    { SpawnerName = "green_C", PalId = "PinkCat" },
    { SpawnerName = "green_C", PalId = "SheepBall" },

    -- green_C_river
    { SpawnerName = "green_C_river", PalId = "KendoFrog" },
    { SpawnerName = "green_C_river", PalId = "Penguin" },

    -- green_D
    { SpawnerName = "green_D", PalId = "Alpaca" },
    { SpawnerName = "green_D", PalId = "BerryGoat" },
    { SpawnerName = "green_D", PalId = "Boar" },
    { SpawnerName = "green_D", PalId = "ChickenPal" },
    { SpawnerName = "green_D", PalId = "CloverFairy" },
    { SpawnerName = "green_D", PalId = "GrassMammoth" },
    { SpawnerName = "green_D", PalId = "Kitsunebi" },
    { SpawnerName = "green_D", PalId = "NegativeKoala" },
    { SpawnerName = "green_D", PalId = "PinkCat" },
    { SpawnerName = "green_D", PalId = "SheepBall" },

    -- green_E
    { SpawnerName = "green_E", PalId = "ChickenPal" },
    { SpawnerName = "green_E", PalId = "DreamDemon" },
    { SpawnerName = "green_E", PalId = "FlowerDinosaur" },
    { SpawnerName = "green_E", PalId = "GrassMammoth" },
    { SpawnerName = "green_E", PalId = "PinkRabbit" },
    { SpawnerName = "green_E", PalId = "SheepBall" },

    -- green_G
    { SpawnerName = "green_G", PalId = "Alpaca" },
    { SpawnerName = "green_G", PalId = "CuteFox" },
    { SpawnerName = "green_G", PalId = "FlowerDinosaur" },
    { SpawnerName = "green_G", PalId = "Penguin" },
    { SpawnerName = "green_G", PalId = "PinkCat" },
    { SpawnerName = "green_G", PalId = "Plesiosaur" },
    { SpawnerName = "green_G", PalId = "SheepBall" },
    { SpawnerName = "green_G", PalId = "WizardOwl" },

    -- green_G_coast
    { SpawnerName = "green_G_coast", PalId = "FlyingManta" },

    -- green_G_river
    { SpawnerName = "green_G_river", PalId = "Penguin" },

    -- green_H
    { SpawnerName = "green_H", PalId = "FlameBambi" },
    { SpawnerName = "green_H", PalId = "Monkey" },

    -- green_I
    { SpawnerName = "green_I", PalId = "Alpaca" },
    { SpawnerName = "green_I", PalId = "FlowerDinosaur" },
    { SpawnerName = "green_I", PalId = "Ganesha" },
    { SpawnerName = "green_I", PalId = "PinkCat" },
    { SpawnerName = "green_I", PalId = "Plesiosaur" },
    { SpawnerName = "green_I", PalId = "SheepBall" },
    { SpawnerName = "green_I", PalId = "WizardOwl" },
    { SpawnerName = "green_I", PalId = "WoolFox" },

    -- green_I_coast
    { SpawnerName = "green_I_coast", PalId = "FlyingManta" },

    -- green_I_river
    { SpawnerName = "green_I_river", PalId = "Ganesha" },

    -- green_J
    { SpawnerName = "green_J", PalId = "Carbunclo" },
    { SpawnerName = "green_J", PalId = "LavaGirl" },

    -- green_K
    { SpawnerName = "green_K", PalId = "Alpaca" },
    { SpawnerName = "green_K", PalId = "ChickenPal" },
    { SpawnerName = "green_K", PalId = "FlowerDinosaur" },
    { SpawnerName = "green_K", PalId = "NegativeKoala" },
    { SpawnerName = "green_K", PalId = "Penguin" },
    { SpawnerName = "green_K", PalId = "PinkRabbit" },
    { SpawnerName = "green_K", PalId = "SakuraSaurus" },
    { SpawnerName = "green_K", PalId = "SheepBall" },

    -- green_K_river
    { SpawnerName = "green_K_river", PalId = "Ganesha" },

    -- green_L
    { SpawnerName = "green_L", PalId = "LavaGirl" },
    { SpawnerName = "green_L", PalId = "PlantSlime" },

    -- green_M
    { SpawnerName = "green_M", PalId = "Alpaca" },
    { SpawnerName = "green_M", PalId = "Carbunclo" },
    { SpawnerName = "green_M", PalId = "FlameBambi" },
    { SpawnerName = "green_M", PalId = "FlowerDinosaur" },
    { SpawnerName = "green_M", PalId = "Ganesha" },
    { SpawnerName = "green_M", PalId = "NegativeKoala" },
    { SpawnerName = "green_M", PalId = "PinkRabbit" },
    { SpawnerName = "green_M", PalId = "PlantSlime" },
    { SpawnerName = "green_M", PalId = "SakuraSaurus" },
    { SpawnerName = "green_M", PalId = "WoolFox" },

    -- green_M_coast
    { SpawnerName = "green_M_coast", PalId = "FlyingManta" },

    -- green_M_river
    { SpawnerName = "green_M_river", PalId = "Ganesha" },

    -- green_N
    { SpawnerName = "green_N", PalId = "BerryGoat" },
    { SpawnerName = "green_N", PalId = "Ganesha" },
    { SpawnerName = "green_N", PalId = "NightFox" },
    { SpawnerName = "green_N", PalId = "PinkCat" },
    { SpawnerName = "green_N", PalId = "PinkRabbit" },
    { SpawnerName = "green_N", PalId = "Plesiosaur" },
    { SpawnerName = "green_N", PalId = "WoolFox" },

    -- green_N_coast
    { SpawnerName = "green_N_coast", PalId = "FlyingManta" },

    -- green_N_river
    { SpawnerName = "green_N_river", PalId = "Ganesha" },

    -- green_O
    { SpawnerName = "green_O", PalId = "LavaGirl" },
    { SpawnerName = "green_O", PalId = "Monkey" },

    -- green_P
    { SpawnerName = "green_P", PalId = "BerryGoat" },
    { SpawnerName = "green_P", PalId = "NightFox" },
    { SpawnerName = "green_P", PalId = "Penguin" },
    { SpawnerName = "green_P", PalId = "PinkCat" },
    { SpawnerName = "green_P", PalId = "PinkRabbit" },
    { SpawnerName = "green_P", PalId = "Plesiosaur" },
    { SpawnerName = "green_P", PalId = "WoolFox" },

    -- green_P_coast
    { SpawnerName = "green_P_coast", PalId = "FlyingManta" },

    -- green_P_river
    { SpawnerName = "green_P_river", PalId = "Penguin" },

    -- green_Q
    { SpawnerName = "green_Q", PalId = "Carbunclo" },
    { SpawnerName = "green_Q", PalId = "FlameBambi" },

    -- green_R
    { SpawnerName = "green_R", PalId = "Hedgehog" },

    -- orange_A
    { SpawnerName = "orange_A", PalId = "CatMage" },
    { SpawnerName = "orange_A", PalId = "HadesBird" },
    { SpawnerName = "orange_A", PalId = "MimicDog" },
    { SpawnerName = "orange_A", PalId = "NaughtyCat" },
    { SpawnerName = "orange_A", PalId = "PurpleSpider" },
    { SpawnerName = "orange_A", PalId = "QueenBee" },
    { SpawnerName = "orange_A", PalId = "SoldierBee" },
    { SpawnerName = "orange_A", PalId = "Werewolf" },

    -- orange_A_HerculesBeetles
    { SpawnerName = "orange_A_HerculesBeetles", PalId = "HerculesBeetle" },

    -- orange_ALL_Ice_BirdDragons
    { SpawnerName = "orange_ALL_Ice_BirdDragons", PalId = "BirdDragon_Ice" },

    -- orange_ALL_Paripi_Lazydragons
    { SpawnerName = "orange_ALL_Paripi_Lazydragons", PalId = "LazyDragon_Electric" },

    -- orange_C
    { SpawnerName = "orange_C", PalId = "CatMage" },
    { SpawnerName = "orange_C", PalId = "GrassPanda" },
    { SpawnerName = "orange_C", PalId = "HadesBird" },
    { SpawnerName = "orange_C", PalId = "MimicDog" },
    { SpawnerName = "orange_C", PalId = "NaughtyCat" },
    { SpawnerName = "orange_C", PalId = "PandaGirl" },
    { SpawnerName = "orange_C", PalId = "RobinHood" },
    { SpawnerName = "orange_C", PalId = "Werewolf" },

    -- orange_D
    { SpawnerName = "orange_D", PalId = "CatMage" },
    { SpawnerName = "orange_D", PalId = "Gorilla" },
    { SpawnerName = "orange_D", PalId = "HadesBird" },
    { SpawnerName = "orange_D", PalId = "MimicDog" },
    { SpawnerName = "orange_D", PalId = "NaughtyCat" },
    { SpawnerName = "orange_D", PalId = "ThunderBird" },
    { SpawnerName = "orange_D", PalId = "Werewolf" },

    -- orange_E
    { SpawnerName = "orange_E", PalId = "CatMage" },
    { SpawnerName = "orange_E", PalId = "HadesBird" },
    { SpawnerName = "orange_E", PalId = "LazyDragon" },
    { SpawnerName = "orange_E", PalId = "MimicDog" },
    { SpawnerName = "orange_E", PalId = "NaughtyCat" },
    { SpawnerName = "orange_E", PalId = "Serpent" },
    { SpawnerName = "orange_E", PalId = "Werewolf" },

    -- orange_F
    { SpawnerName = "orange_F", PalId = "BirdDragon" },
    { SpawnerName = "orange_F", PalId = "BirdDragon_Ice" },
    { SpawnerName = "orange_F", PalId = "DarkCrow" },
    { SpawnerName = "orange_F", PalId = "LazyDragon" },
    { SpawnerName = "orange_F", PalId = "MimicDog" },
    { SpawnerName = "orange_F", PalId = "Werewolf" },

    -- orange_G
    { SpawnerName = "orange_G", PalId = "BirdDragon" },
    { SpawnerName = "orange_G", PalId = "BirdDragon_Ice" },
    { SpawnerName = "orange_G", PalId = "DarkCrow" },
    { SpawnerName = "orange_G", PalId = "GrassMammoth" },
    { SpawnerName = "orange_G", PalId = "MimicDog" },
    { SpawnerName = "orange_G", PalId = "Werewolf" },

    -- orange_H
    { SpawnerName = "orange_H", PalId = "AmaterasuWolf" },
    { SpawnerName = "orange_H", PalId = "FairyDragon_Water" },
    { SpawnerName = "orange_H", PalId = "IceDeer" },
    { SpawnerName = "orange_H", PalId = "IceFox" },
    { SpawnerName = "orange_H", PalId = "MimicDog" },
    { SpawnerName = "orange_H", PalId = "SmallYeti" },

    -- orange_I
    { SpawnerName = "orange_I", PalId = "ColorfulBird" },
    { SpawnerName = "orange_I", PalId = "CuteMole" },
    { SpawnerName = "orange_I", PalId = "DrillGame" },
    { SpawnerName = "orange_I", PalId = "LazyCatfish" },
    { SpawnerName = "orange_I", PalId = "MimicDog" },
    { SpawnerName = "orange_I", PalId = "PinkLizard" },
    { SpawnerName = "orange_I", PalId = "RaijinDaughter" },

    -- orange_I_coast
    { SpawnerName = "orange_I_coast", PalId = "SwordCutlassfish" },

    -- orange_J
    { SpawnerName = "orange_J", PalId = "FlameBambi" },
    { SpawnerName = "orange_J", PalId = "FoxMage" },
    { SpawnerName = "orange_J", PalId = "LavaGirl" },

    -- purple_A
    { SpawnerName = "purple_A", PalId = "CatMage" },
    { SpawnerName = "purple_A", PalId = "HadesBird" },
    { SpawnerName = "purple_A", PalId = "MimicDog" },
    { SpawnerName = "purple_A", PalId = "NaughtyCat" },
    { SpawnerName = "purple_A", PalId = "SakuraSaurus" },
    { SpawnerName = "purple_A", PalId = "Werewolf" },

    -- purple_A_SakuraSaurus_Water
    { SpawnerName = "purple_A_SakuraSaurus_Water", PalId = "SakuraSaurus_Water" },

    -- red_A_Ice_BirdDragons
    { SpawnerName = "red_A_Ice_BirdDragons", PalId = "BirdDragon_Ice" },

    -- remainsIsland_1
    { SpawnerName = "remainsIsland_1", PalId = "GhostRabbit_Grass" },

    -- remainsIsland_2
    { SpawnerName = "remainsIsland_2", PalId = "BlackPuppy_Ice" },

    -- sakura_purple_A
    { SpawnerName = "sakura_purple_A", PalId = "CandleGhost" },
    { SpawnerName = "sakura_purple_A", PalId = "GrassRabbitMan" },
    { SpawnerName = "sakura_purple_A", PalId = "MimicDog" },
    { SpawnerName = "sakura_purple_A", PalId = "Ronin" },
    { SpawnerName = "sakura_purple_A", PalId = "Ronin_Dark" },
    { SpawnerName = "sakura_purple_A", PalId = "SkyDragon_Grass" },
    { SpawnerName = "sakura_purple_A", PalId = "Yeti_Grass" },

    -- sakura_purple_B
    { SpawnerName = "sakura_purple_B", PalId = "CandleGhost" },
    { SpawnerName = "sakura_purple_B", PalId = "GuardianDog" },
    { SpawnerName = "sakura_purple_B", PalId = "MimicDog" },
    { SpawnerName = "sakura_purple_B", PalId = "Ronin" },
    { SpawnerName = "sakura_purple_B", PalId = "Ronin_Dark" },
    { SpawnerName = "sakura_purple_B", PalId = "SifuDog" },
    { SpawnerName = "sakura_purple_B", PalId = "SumoDog" },
    { SpawnerName = "sakura_purple_B", PalId = "WeaselDragon_Fire" },

    -- sakura_purple_D
    { SpawnerName = "sakura_purple_D", PalId = "CandleGhost" },
    { SpawnerName = "sakura_purple_D", PalId = "FlowerDoll" },
    { SpawnerName = "sakura_purple_D", PalId = "LeafPrincess" },
    { SpawnerName = "sakura_purple_D", PalId = "MimicDog" },
    { SpawnerName = "sakura_purple_D", PalId = "Ronin" },
    { SpawnerName = "sakura_purple_D", PalId = "Ronin_Dark" },
    { SpawnerName = "sakura_purple_D", PalId = "VioletFairy" },

    -- sakura_red_A
    { SpawnerName = "sakura_red_A", PalId = "CandleGhost" },
    { SpawnerName = "sakura_red_A", PalId = "KendoFrog" },
    { SpawnerName = "sakura_red_A", PalId = "MimicDog" },
    { SpawnerName = "sakura_red_A", PalId = "MushroomDragon" },
    { SpawnerName = "sakura_red_A", PalId = "MushroomDragon_Dark" },
    { SpawnerName = "sakura_red_A", PalId = "NaughtyCat" },
    { SpawnerName = "sakura_red_A", PalId = "Ronin" },
    { SpawnerName = "sakura_red_A", PalId = "Ronin_Dark" },

    -- sakura_red_A_kazyDragon
    { SpawnerName = "sakura_red_A_kazyDragon", PalId = "LazyDragon" },
    { SpawnerName = "sakura_red_A_kazyDragon", PalId = "LazyDragon_Electric" },

    -- sakura_red_B
    { SpawnerName = "sakura_red_B", PalId = "CandleGhost" },
    { SpawnerName = "sakura_red_B", PalId = "ColorfulBird" },
    { SpawnerName = "sakura_red_B", PalId = "FeatherOstrich" },
    { SpawnerName = "sakura_red_B", PalId = "FoxMage_Dark" },
    { SpawnerName = "sakura_red_B", PalId = "HadesBird_Electric" },
    { SpawnerName = "sakura_red_B", PalId = "LazyCatfish_Gold" },
    { SpawnerName = "sakura_red_B", PalId = "MimicDog" },
    { SpawnerName = "sakura_red_B", PalId = "Ronin" },
    { SpawnerName = "sakura_red_B", PalId = "Ronin_Dark" },

    -- sakura_red_C
    { SpawnerName = "sakura_red_C", PalId = "CandleGhost" },
    { SpawnerName = "sakura_red_C", PalId = "ColorfulBird" },
    { SpawnerName = "sakura_red_C", PalId = "FoxMage_Dark" },
    { SpawnerName = "sakura_red_C", PalId = "MimicDog" },
    { SpawnerName = "sakura_red_C", PalId = "Ronin" },
    { SpawnerName = "sakura_red_C", PalId = "Ronin_Dark" },
    { SpawnerName = "sakura_red_C", PalId = "ScorpionMan" },
    { SpawnerName = "sakura_red_C", PalId = "SmallArmadillo" },
    { SpawnerName = "sakura_red_C", PalId = "TentacleTurtle_Ground" },

    -- sakura_Waterfront_purple_A
    { SpawnerName = "sakura_Waterfront_purple_A", PalId = "CandleGhost" },
    { SpawnerName = "sakura_Waterfront_purple_A", PalId = "FairyDragon_Water" },
    { SpawnerName = "sakura_Waterfront_purple_A", PalId = "FoxMage_Dark" },
    { SpawnerName = "sakura_Waterfront_purple_A", PalId = "GrassRabbitMan" },
    { SpawnerName = "sakura_Waterfront_purple_A", PalId = "MimicDog" },
    { SpawnerName = "sakura_Waterfront_purple_A", PalId = "Ronin" },
    { SpawnerName = "sakura_Waterfront_purple_A", PalId = "Ronin_Dark" },
    { SpawnerName = "sakura_Waterfront_purple_A", PalId = "Yeti_Grass" },

    -- sanctuary_1_forest
    { SpawnerName = "sanctuary_1_forest", PalId = "CaptainPenguin" },
    { SpawnerName = "sanctuary_1_forest", PalId = "Deer_Ground" },
    { SpawnerName = "sanctuary_1_forest", PalId = "FairyDragon" },
    { SpawnerName = "sanctuary_1_forest", PalId = "GrassMinotaur" },
    { SpawnerName = "sanctuary_1_forest", PalId = "Mutant" },
    { SpawnerName = "sanctuary_1_forest", PalId = "VioletFairy" },

    -- sanctuary_2_volcano
    { SpawnerName = "sanctuary_2_volcano", PalId = "AmaterasuWolf" },
    { SpawnerName = "sanctuary_2_volcano", PalId = "Baphomet_Dark" },
    { SpawnerName = "sanctuary_2_volcano", PalId = "CandleGhost" },
    { SpawnerName = "sanctuary_2_volcano", PalId = "DarkFlameFox" },
    { SpawnerName = "sanctuary_2_volcano", PalId = "FireKirin_Dark" },
    { SpawnerName = "sanctuary_2_volcano", PalId = "Manticore_Dark" },

    -- sanctuary_3_dessert
    { SpawnerName = "sanctuary_3_dessert", PalId = "BlackGriffon" },
    { SpawnerName = "sanctuary_3_dessert", PalId = "DarkScorpion_Ground" },
    { SpawnerName = "sanctuary_3_dessert", PalId = "FengyunDeeper" },
    { SpawnerName = "sanctuary_3_dessert", PalId = "Ronin" },
    { SpawnerName = "sanctuary_3_dessert", PalId = "VenusFlytrap" },
    { SpawnerName = "sanctuary_3_dessert", PalId = "WingGolem" },

    -- skyisland_8_01_A_meadow
    { SpawnerName = "skyisland_8_01_A_meadow", PalId = "ElecPomeranian" },
    { SpawnerName = "skyisland_8_01_A_meadow", PalId = "MimicDog" },
    { SpawnerName = "skyisland_8_01_A_meadow", PalId = "RedFlowerBird" },
    { SpawnerName = "skyisland_8_01_A_meadow", PalId = "RockBeast_Ice" },
    { SpawnerName = "skyisland_8_01_A_meadow", PalId = "SkyDragon" },
    { SpawnerName = "skyisland_8_01_A_meadow", PalId = "SnowPeafowl" },
    { SpawnerName = "skyisland_8_01_A_meadow", PalId = "Suzaku_Water" },

    -- skyisland_8_02_A_palcrystal
    { SpawnerName = "skyisland_8_02_A_palcrystal", PalId = "KingSunfish" },
    { SpawnerName = "skyisland_8_02_A_palcrystal", PalId = "SwordCutlassfish" },

    -- skyisland_8_03_B_meadow
    { SpawnerName = "skyisland_8_03_B_meadow", PalId = "FluffyBird" },
    { SpawnerName = "skyisland_8_03_B_meadow", PalId = "SnowPeafowl" },

    -- skyisland_8_03w_B_meadow
    { SpawnerName = "skyisland_8_03w_B_meadow", PalId = "ClioneTwins" },
    { SpawnerName = "skyisland_8_03w_B_meadow", PalId = "OctopusGirl_Neutral" },

    -- skyisland_8_04_B_higland
    { SpawnerName = "skyisland_8_04_B_higland", PalId = "HoodGhost" },
    { SpawnerName = "skyisland_8_04_B_higland", PalId = "MimicDog" },
    { SpawnerName = "skyisland_8_04_B_higland", PalId = "OniGhostGirl" },
    { SpawnerName = "skyisland_8_04_B_higland", PalId = "RaijinDaughter_Water" },
    { SpawnerName = "skyisland_8_04_B_higland", PalId = "SkyDragon" },
    { SpawnerName = "skyisland_8_04_B_higland", PalId = "ThunderFluffyBird" },

    -- skyisland_8_07_G_mountain
    { SpawnerName = "skyisland_8_07_G_mountain", PalId = "DandelionGirl" },
    { SpawnerName = "skyisland_8_07_G_mountain", PalId = "HoodGhost" },
    { SpawnerName = "skyisland_8_07_G_mountain", PalId = "MimicDog" },
    { SpawnerName = "skyisland_8_07_G_mountain", PalId = "OniGhostGirl" },
    { SpawnerName = "skyisland_8_07_G_mountain", PalId = "PandaGirl" },
    { SpawnerName = "skyisland_8_07_G_mountain", PalId = "SkyDragon" },

    -- skyisland_8_09_D_forest
    { SpawnerName = "skyisland_8_09_D_forest", PalId = "BrownRabbit" },
    { SpawnerName = "skyisland_8_09_D_forest", PalId = "HoodGhost" },
    { SpawnerName = "skyisland_8_09_D_forest", PalId = "MimicDog" },
    { SpawnerName = "skyisland_8_09_D_forest", PalId = "OniGhostGirl" },

    -- skyisland_8_09w_D_forest
    { SpawnerName = "skyisland_8_09w_D_forest", PalId = "ElecLizard" },

    -- skyisland_8_10_D_swamp
    { SpawnerName = "skyisland_8_10_D_swamp", PalId = "ElecLizard" },

    -- skyisland_8_11_E_meadow
    { SpawnerName = "skyisland_8_11_E_meadow", PalId = "ElecSnail" },
    { SpawnerName = "skyisland_8_11_E_meadow", PalId = "LongCat" },
    { SpawnerName = "skyisland_8_11_E_meadow", PalId = "MimicDog" },
    { SpawnerName = "skyisland_8_11_E_meadow", PalId = "SkyDragon" },

    -- skyisland_8_12_E_unique
    { SpawnerName = "skyisland_8_12_E_unique", PalId = "ClioneTwins" },
    { SpawnerName = "skyisland_8_12_E_unique", PalId = "OctopusGirl_Neutral" },

    -- skyisland_8_13_F_meadow
    { SpawnerName = "skyisland_8_13_F_meadow", PalId = "Horus_Water" },
    { SpawnerName = "skyisland_8_13_F_meadow", PalId = "MimicDog" },
    { SpawnerName = "skyisland_8_13_F_meadow", PalId = "SkyDragon" },
    { SpawnerName = "skyisland_8_13_F_meadow", PalId = "SleeveRabbit" },
    { SpawnerName = "skyisland_8_13_F_meadow", PalId = "SnowPeafowl" },

    -- snow_5_1_snow_1
    { SpawnerName = "snow_5_1_snow_1", PalId = "Bastet_Ice" },
    { SpawnerName = "snow_5_1_snow_1", PalId = "BirdDragon_Ice" },
    { SpawnerName = "snow_5_1_snow_1", PalId = "GhostBeast" },
    { SpawnerName = "snow_5_1_snow_1", PalId = "GrassMammoth_Ice" },
    { SpawnerName = "snow_5_1_snow_1", PalId = "MimicDog" },
    { SpawnerName = "snow_5_1_snow_1", PalId = "WhiteMoth" },
    { SpawnerName = "snow_5_1_snow_1", PalId = "WhiteTiger" },
    { SpawnerName = "snow_5_1_snow_1", PalId = "WindChimes_Ice" },
    { SpawnerName = "snow_5_1_snow_1", PalId = "Yeti" },

    -- snow_5_2_SnowGrass
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "Bastet_Ice" },
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "BerryGoat" },
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "BirdDragon_Ice" },
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "FlameBuffalo" },
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "GrassMammoth" },
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "IceDeer" },
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "MimicDog" },
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "Penguin" },
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "WeaselDragon" },
    { SpawnerName = "snow_5_2_SnowGrass", PalId = "WindChimes_Ice" },

    -- snow_orange_A
    { SpawnerName = "snow_orange_A", PalId = "GhostBeast" },
    { SpawnerName = "snow_orange_A", PalId = "IceSeal" },
    { SpawnerName = "snow_orange_A", PalId = "MimicDog" },
    { SpawnerName = "snow_orange_A", PalId = "NegativeOctopus" },
    { SpawnerName = "snow_orange_A", PalId = "Ronin" },
    { SpawnerName = "snow_orange_A", PalId = "TentacleTurtle" },
    { SpawnerName = "snow_orange_A", PalId = "WindChimes_Ice" },

    -- snow_orange_ALL_Ice_BirdDragons
    { SpawnerName = "snow_orange_ALL_Ice_BirdDragons", PalId = "BirdDragon_Ice" },

    -- snow_orange_B
    { SpawnerName = "snow_orange_B", PalId = "CaptainPenguin" },
    { SpawnerName = "snow_orange_B", PalId = "GhostBeast" },
    { SpawnerName = "snow_orange_B", PalId = "GrassMammoth" },
    { SpawnerName = "snow_orange_B", PalId = "MimicDog" },
    { SpawnerName = "snow_orange_B", PalId = "Ronin" },
    { SpawnerName = "snow_orange_B", PalId = "ThunderDog" },
    { SpawnerName = "snow_orange_B", PalId = "WeaselDragon" },
    { SpawnerName = "snow_orange_B", PalId = "Werewolf_Ice" },
    { SpawnerName = "snow_orange_B", PalId = "WindChimes_Ice" },

    -- snow_orange_C
    { SpawnerName = "snow_orange_C", PalId = "CatMage" },
    { SpawnerName = "snow_orange_C", PalId = "GhostBeast" },
    { SpawnerName = "snow_orange_C", PalId = "GrassGolem" },
    { SpawnerName = "snow_orange_C", PalId = "MimicDog" },
    { SpawnerName = "snow_orange_C", PalId = "Mutant" },
    { SpawnerName = "snow_orange_C", PalId = "Ronin" },
    { SpawnerName = "snow_orange_C", PalId = "SkyDragon" },
    { SpawnerName = "snow_orange_C", PalId = "Werewolf_Ice" },
    { SpawnerName = "snow_orange_C", PalId = "WindChimes_Ice" },

    -- snow_orange_D
    { SpawnerName = "snow_orange_D", PalId = "CaptainPenguin" },
    { SpawnerName = "snow_orange_D", PalId = "GhostBeast" },
    { SpawnerName = "snow_orange_D", PalId = "GrassMammoth" },
    { SpawnerName = "snow_orange_D", PalId = "MimicDog" },
    { SpawnerName = "snow_orange_D", PalId = "Ronin" },
    { SpawnerName = "snow_orange_D", PalId = "SkyDragon" },
    { SpawnerName = "snow_orange_D", PalId = "SkyDragon_Grass" },
    { SpawnerName = "snow_orange_D", PalId = "ThunderDog" },
    { SpawnerName = "snow_orange_D", PalId = "WeaselDragon" },
    { SpawnerName = "snow_orange_D", PalId = "Werewolf_Ice" },
    { SpawnerName = "snow_orange_D", PalId = "WindChimes_Ice" },

    -- snow_orange_E
    { SpawnerName = "snow_orange_E", PalId = "GhostBeast" },
    { SpawnerName = "snow_orange_E", PalId = "GrassMammoth" },
    { SpawnerName = "snow_orange_E", PalId = "GrassMammoth_Ice" },
    { SpawnerName = "snow_orange_E", PalId = "MimicDog" },
    { SpawnerName = "snow_orange_E", PalId = "Ronin" },
    { SpawnerName = "snow_orange_E", PalId = "SkyDragon" },
    { SpawnerName = "snow_orange_E", PalId = "Werewolf_Ice" },

    -- snow_orange_F
    { SpawnerName = "snow_orange_F", PalId = "GhostBeast" },
    { SpawnerName = "snow_orange_F", PalId = "GrassMammoth_Ice" },
    { SpawnerName = "snow_orange_F", PalId = "IceFox" },
    { SpawnerName = "snow_orange_F", PalId = "MimicDog" },
    { SpawnerName = "snow_orange_F", PalId = "Ronin" },
    { SpawnerName = "snow_orange_F", PalId = "SkyDragon" },
    { SpawnerName = "snow_orange_F", PalId = "ThunderDog_Ice" },
    { SpawnerName = "snow_orange_F", PalId = "Werewolf_Ice" },
    { SpawnerName = "snow_orange_F", PalId = "WindChimes_Ice" },

    -- snow_orange_F_IceSeals
    { SpawnerName = "snow_orange_F_IceSeals", PalId = "IceSeal" },

    -- snow_orange_G_IceCrocodiles
    { SpawnerName = "snow_orange_G_IceCrocodiles", PalId = "IceCrocodile" },

    -- snow_orange_H
    { SpawnerName = "snow_orange_H", PalId = "GhostBeast" },
    { SpawnerName = "snow_orange_H", PalId = "GrassMammoth_Ice" },
    { SpawnerName = "snow_orange_H", PalId = "IceDeer" },
    { SpawnerName = "snow_orange_H", PalId = "IceFox" },
    { SpawnerName = "snow_orange_H", PalId = "MimicDog" },
    { SpawnerName = "snow_orange_H", PalId = "Ronin" },
    { SpawnerName = "snow_orange_H", PalId = "SkyDragon" },
    { SpawnerName = "snow_orange_H", PalId = "ThunderDog_Ice" },
    { SpawnerName = "snow_orange_H", PalId = "Werewolf_Ice" },
    { SpawnerName = "snow_orange_H", PalId = "WindChimes_Ice" },

    -- snow_orange_I
    { SpawnerName = "snow_orange_I", PalId = "BirdDragon_Ice" },
    { SpawnerName = "snow_orange_I", PalId = "GhostBeast" },
    { SpawnerName = "snow_orange_I", PalId = "IceFox" },
    { SpawnerName = "snow_orange_I", PalId = "MimicDog" },
    { SpawnerName = "snow_orange_I", PalId = "Ronin" },
    { SpawnerName = "snow_orange_I", PalId = "SkyDragon" },
    { SpawnerName = "snow_orange_I", PalId = "Werewolf_Ice" },
    { SpawnerName = "snow_orange_I", PalId = "WhiteMoth" },
    { SpawnerName = "snow_orange_I", PalId = "WindChimes_Ice" },

    -- snow_red_A
    { SpawnerName = "snow_red_A", PalId = "Yeti" },

    -- snow_red_ALL_Ice_BirdDragons
    { SpawnerName = "snow_red_ALL_Ice_BirdDragons", PalId = "BirdDragon_Ice" },

    -- snow_red_B
    { SpawnerName = "snow_red_B", PalId = "CatMage" },
    { SpawnerName = "snow_red_B", PalId = "GhostBeast" },
    { SpawnerName = "snow_red_B", PalId = "IceWitch" },
    { SpawnerName = "snow_red_B", PalId = "MimicDog" },
    { SpawnerName = "snow_red_B", PalId = "Mutant" },
    { SpawnerName = "snow_red_B", PalId = "Ronin" },
    { SpawnerName = "snow_red_B", PalId = "SkyDragon" },
    { SpawnerName = "snow_red_B", PalId = "Werewolf_Ice" },
    { SpawnerName = "snow_red_B", PalId = "WhiteTiger" },

    -- snow_red_C
    { SpawnerName = "snow_red_C", PalId = "GhostBeast" },
    { SpawnerName = "snow_red_C", PalId = "IceWitch" },
    { SpawnerName = "snow_red_C", PalId = "MimicDog" },
    { SpawnerName = "snow_red_C", PalId = "Ronin" },
    { SpawnerName = "snow_red_C", PalId = "SkyDragon" },
    { SpawnerName = "snow_red_C", PalId = "Werewolf_Ice" },
    { SpawnerName = "snow_red_C", PalId = "WhiteTiger" },
    { SpawnerName = "snow_red_C", PalId = "Yeti" },

    -- snow_red_E
    { SpawnerName = "snow_red_E", PalId = "GhostBeast" },
    { SpawnerName = "snow_red_E", PalId = "MimicDog" },
    { SpawnerName = "snow_red_E", PalId = "Ronin" },
    { SpawnerName = "snow_red_E", PalId = "SkyDragon" },
    { SpawnerName = "snow_red_E", PalId = "VolcanicMonster_Ice" },
    { SpawnerName = "snow_red_E", PalId = "Werewolf_Ice" },
    { SpawnerName = "snow_red_E", PalId = "Yeti" },

    -- volcano_orange_B
    { SpawnerName = "volcano_orange_B", PalId = "FireKirin_Dark" },
    { SpawnerName = "volcano_orange_B", PalId = "FoxMage" },
    { SpawnerName = "volcano_orange_B", PalId = "Manticore_Dark" },
    { SpawnerName = "volcano_orange_B", PalId = "MimicDog" },
    { SpawnerName = "volcano_orange_B", PalId = "Ronin" },

    -- volcano_orange_C
    { SpawnerName = "volcano_orange_C", PalId = "Baphomet" },
    { SpawnerName = "volcano_orange_C", PalId = "FireKirin" },
    { SpawnerName = "volcano_orange_C", PalId = "FireKirin_Dark" },
    { SpawnerName = "volcano_orange_C", PalId = "Manticore" },
    { SpawnerName = "volcano_orange_C", PalId = "Manticore_Dark" },
    { SpawnerName = "volcano_orange_C", PalId = "MimicDog" },
    { SpawnerName = "volcano_orange_C", PalId = "RedArmorBird" },
    { SpawnerName = "volcano_orange_C", PalId = "Ronin" },
    { SpawnerName = "volcano_orange_C", PalId = "VolcanoDragon" },

    -- volcano_orange_D
    { SpawnerName = "volcano_orange_D", PalId = "Baphomet" },
    { SpawnerName = "volcano_orange_D", PalId = "FireKirin" },
    { SpawnerName = "volcano_orange_D", PalId = "FireKirin_Dark" },
    { SpawnerName = "volcano_orange_D", PalId = "Manticore_Dark" },
    { SpawnerName = "volcano_orange_D", PalId = "MimicDog" },
    { SpawnerName = "volcano_orange_D", PalId = "RedArmorBird" },
    { SpawnerName = "volcano_orange_D", PalId = "Ronin" },
    { SpawnerName = "volcano_orange_D", PalId = "VolcanoDragon" },

    -- volcano_orange_D_RedArmorBirds
    { SpawnerName = "volcano_orange_D_RedArmorBirds", PalId = "RedArmorBird" },

    -- volcano_orange_D_VolcanicMonsters
    { SpawnerName = "volcano_orange_D_VolcanicMonsters", PalId = "VolcanicMonster" },

    -- volcano_orange_E
    { SpawnerName = "volcano_orange_E", PalId = "FireKirin_Dark" },
    { SpawnerName = "volcano_orange_E", PalId = "FlameBuffalo" },
    { SpawnerName = "volcano_orange_E", PalId = "LavaGirl" },
    { SpawnerName = "volcano_orange_E", PalId = "LizardMan_Fire" },
    { SpawnerName = "volcano_orange_E", PalId = "Manticore_Dark" },
    { SpawnerName = "volcano_orange_E", PalId = "MimicDog" },
    { SpawnerName = "volcano_orange_E", PalId = "Ronin" },

    -- volcano_orange_F
    { SpawnerName = "volcano_orange_F", PalId = "BirdDragon" },
    { SpawnerName = "volcano_orange_F", PalId = "FireKirin_Dark" },
    { SpawnerName = "volcano_orange_F", PalId = "LizardMan" },
    { SpawnerName = "volcano_orange_F", PalId = "Manticore_Dark" },
    { SpawnerName = "volcano_orange_F", PalId = "MimicDog" },
    { SpawnerName = "volcano_orange_F", PalId = "Ronin" },

    -- volcano_orange_G
    { SpawnerName = "volcano_orange_G", PalId = "FireKirin_Dark" },
    { SpawnerName = "volcano_orange_G", PalId = "LavaGirl" },
    { SpawnerName = "volcano_orange_G", PalId = "LizardMan_Fire" },
    { SpawnerName = "volcano_orange_G", PalId = "Manticore_Dark" },
    { SpawnerName = "volcano_orange_G", PalId = "MimicDog" },
    { SpawnerName = "volcano_orange_G", PalId = "Ronin" },

    -- volcano_orange_G_coast
    { SpawnerName = "volcano_orange_G_coast", PalId = "LazyCatfish" },
    { SpawnerName = "volcano_orange_G_coast", PalId = "LazyCatfish_Gold" },
    { SpawnerName = "volcano_orange_G_coast", PalId = "TentacleTurtle" },
    { SpawnerName = "volcano_orange_G_coast", PalId = "TentacleTurtle_Ground" },

    -- volcano_orange_H
    { SpawnerName = "volcano_orange_H", PalId = "FireKirin" },
    { SpawnerName = "volcano_orange_H", PalId = "FireKirin_Dark" },
    { SpawnerName = "volcano_orange_H", PalId = "Manticore_Dark" },
    { SpawnerName = "volcano_orange_H", PalId = "MimicDog" },
    { SpawnerName = "volcano_orange_H", PalId = "RedArmorBird" },
    { SpawnerName = "volcano_orange_H", PalId = "Ronin" },

    -- volcano_orange_I
    { SpawnerName = "volcano_orange_I", PalId = "BluePlatypus_Fire" },
    { SpawnerName = "volcano_orange_I", PalId = "FireKirin_Dark" },
    { SpawnerName = "volcano_orange_I", PalId = "LavaGirl" },
    { SpawnerName = "volcano_orange_I", PalId = "Manticore_Dark" },
    { SpawnerName = "volcano_orange_I", PalId = "MimicDog" },
    { SpawnerName = "volcano_orange_I", PalId = "Ronin" },
    { SpawnerName = "volcano_orange_I", PalId = "SharkKid_Fire" },

    -- volcano_orange_I_coast
    { SpawnerName = "volcano_orange_I_coast", PalId = "LazyCatfish" },
    { SpawnerName = "volcano_orange_I_coast", PalId = "LazyCatfish_Gold" },
    { SpawnerName = "volcano_orange_I_coast", PalId = "TentacleTurtle" },
    { SpawnerName = "volcano_orange_I_coast", PalId = "TentacleTurtle_Ground" },

    -- volcano_orange_J
    { SpawnerName = "volcano_orange_J", PalId = "Baphomet" },
    { SpawnerName = "volcano_orange_J", PalId = "FireKirin_Dark" },
    { SpawnerName = "volcano_orange_J", PalId = "Manticore_Dark" },
    { SpawnerName = "volcano_orange_J", PalId = "MimicDog" },
    { SpawnerName = "volcano_orange_J", PalId = "RedArmorBird" },
    { SpawnerName = "volcano_orange_J", PalId = "Ronin" },
    { SpawnerName = "volcano_orange_J", PalId = "SharkKid_Fire" },

    -- volcano_orange_J_coast
    { SpawnerName = "volcano_orange_J_coast", PalId = "GhostAnglerfish" },
    { SpawnerName = "volcano_orange_J_coast", PalId = "LazyCatfish" },
    { SpawnerName = "volcano_orange_J_coast", PalId = "LazyCatfish_Gold" },
    { SpawnerName = "volcano_orange_J_coast", PalId = "TentacleTurtle" },
    { SpawnerName = "volcano_orange_J_coast", PalId = "TentacleTurtle_Ground" },

    -- volcano_yellow_A
    { SpawnerName = "volcano_yellow_A", PalId = "FireKirin_Dark" },
    { SpawnerName = "volcano_yellow_A", PalId = "FlameBuffalo" },
    { SpawnerName = "volcano_yellow_A", PalId = "LavaGirl" },
    { SpawnerName = "volcano_yellow_A", PalId = "LizardMan" },
    { SpawnerName = "volcano_yellow_A", PalId = "Manticore_Dark" },
    { SpawnerName = "volcano_yellow_A", PalId = "MimicDog" },
    { SpawnerName = "volcano_yellow_A", PalId = "Ronin" },

    -- volcano_yellow_A_coast
    { SpawnerName = "volcano_yellow_A_coast", PalId = "LazyCatfish" },
    { SpawnerName = "volcano_yellow_A_coast", PalId = "LazyCatfish_Gold" },
    { SpawnerName = "volcano_yellow_A_coast", PalId = "SharkKid" },

    -- volcano_yellow_ALL_Lazydragons
    { SpawnerName = "volcano_yellow_ALL_Lazydragons", PalId = "LazyDragon" },

    -- volcano_yellow_B
    { SpawnerName = "volcano_yellow_B", PalId = "FireKirin_Dark" },
    { SpawnerName = "volcano_yellow_B", PalId = "FlameBuffalo" },
    { SpawnerName = "volcano_yellow_B", PalId = "LavaGirl" },
    { SpawnerName = "volcano_yellow_B", PalId = "LizardMan" },
    { SpawnerName = "volcano_yellow_B", PalId = "Manticore_Dark" },
    { SpawnerName = "volcano_yellow_B", PalId = "MimicDog" },
    { SpawnerName = "volcano_yellow_B", PalId = "Ronin" },

    -- volcano_yellow_B_coast
    { SpawnerName = "volcano_yellow_B_coast", PalId = "LazyCatfish" },
    { SpawnerName = "volcano_yellow_B_coast", PalId = "LazyCatfish_Gold" },

    -- volcano_yellow_C
    { SpawnerName = "volcano_yellow_C", PalId = "FireKirin_Dark" },
    { SpawnerName = "volcano_yellow_C", PalId = "FoxMage" },
    { SpawnerName = "volcano_yellow_C", PalId = "Manticore_Dark" },
    { SpawnerName = "volcano_yellow_C", PalId = "MimicDog" },
    { SpawnerName = "volcano_yellow_C", PalId = "Mutant" },
    { SpawnerName = "volcano_yellow_C", PalId = "Ronin" },

    -- volcano_yellow_C_coast
    { SpawnerName = "volcano_yellow_C_coast", PalId = "LazyCatfish" },
    { SpawnerName = "volcano_yellow_C_coast", PalId = "LazyCatfish_Gold" },

    -- volcano_yellow_D
    { SpawnerName = "volcano_yellow_D", PalId = "FireKirin_Dark" },
    { SpawnerName = "volcano_yellow_D", PalId = "LizardMan" },
    { SpawnerName = "volcano_yellow_D", PalId = "Manticore_Dark" },
    { SpawnerName = "volcano_yellow_D", PalId = "MimicDog" },
    { SpawnerName = "volcano_yellow_D", PalId = "Ronin" },

    -- volcano_yellow_D_coast
    { SpawnerName = "volcano_yellow_D_coast", PalId = "Kelpie_Fire" },
    { SpawnerName = "volcano_yellow_D_coast", PalId = "LazyCatfish" },
    { SpawnerName = "volcano_yellow_D_coast", PalId = "LazyCatfish_Gold" },

    -- volcanoiskand_1
    { SpawnerName = "volcanoiskand_1", PalId = "VolcanoDragon" },
    { SpawnerName = "volcanoiskand_1", PalId = "WingGolem_Fire" },

    -- volcanoiskand_2
    { SpawnerName = "volcanoiskand_2", PalId = "KingBahamut" },
    { SpawnerName = "volcanoiskand_2", PalId = "RockBeast" },
    { SpawnerName = "volcanoiskand_2", PalId = "SwordCutlassfish_Fire" },

    -- yamijima_beach_purple_A
    { SpawnerName = "yamijima_beach_purple_A", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_beach_purple_A", PalId = "GhostAnglerfish" },
    { SpawnerName = "yamijima_beach_purple_A", PalId = "JellyfishFairy" },
    { SpawnerName = "yamijima_beach_purple_A", PalId = "JellyfishGhost" },
    { SpawnerName = "yamijima_beach_purple_A", PalId = "MimicDog" },
    { SpawnerName = "yamijima_beach_purple_A", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_beach_purple_A", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_beach_purple_A", PalId = "Serpent_Ground" },
    { SpawnerName = "yamijima_beach_purple_A", PalId = "WhiteDeer" },

    -- yamijima_beach_purple_B
    { SpawnerName = "yamijima_beach_purple_B", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_beach_purple_B", PalId = "GhostAnglerfish" },
    { SpawnerName = "yamijima_beach_purple_B", PalId = "JellyfishGhost" },
    { SpawnerName = "yamijima_beach_purple_B", PalId = "MimicDog" },
    { SpawnerName = "yamijima_beach_purple_B", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_beach_purple_B", PalId = "OctopusGirl" },
    { SpawnerName = "yamijima_beach_purple_B", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_beach_purple_B", PalId = "Serpent_Ground" },
    { SpawnerName = "yamijima_beach_purple_B", PalId = "WhiteDeer" },

    -- yamijima_beach_purple_C
    { SpawnerName = "yamijima_beach_purple_C", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_beach_purple_C", PalId = "JellyfishFairy" },
    { SpawnerName = "yamijima_beach_purple_C", PalId = "JellyfishGhost" },
    { SpawnerName = "yamijima_beach_purple_C", PalId = "MimicDog" },
    { SpawnerName = "yamijima_beach_purple_C", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_beach_purple_C", PalId = "RaijinDaughter_Water" },
    { SpawnerName = "yamijima_beach_purple_C", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_beach_purple_C", PalId = "Serpent_Ground" },
    { SpawnerName = "yamijima_beach_purple_C", PalId = "WhiteDeer" },

    -- yamijima_forest_pink_D
    { SpawnerName = "yamijima_forest_pink_D", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_forest_pink_D", PalId = "GoldenHorse" },
    { SpawnerName = "yamijima_forest_pink_D", PalId = "HerculesBeetle_Ground" },
    { SpawnerName = "yamijima_forest_pink_D", PalId = "MimicDog" },
    { SpawnerName = "yamijima_forest_pink_D", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_forest_pink_D", PalId = "NightBlueHorse" },
    { SpawnerName = "yamijima_forest_pink_D", PalId = "Ronin_Dark" },

    -- yamijima_forest_purple_A
    { SpawnerName = "yamijima_forest_purple_A", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_forest_purple_A", PalId = "BlueberryFairy" },
    { SpawnerName = "yamijima_forest_purple_A", PalId = "GoldenHorse" },
    { SpawnerName = "yamijima_forest_purple_A", PalId = "MimicDog" },
    { SpawnerName = "yamijima_forest_purple_A", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_forest_purple_A", PalId = "NightBlueHorse" },
    { SpawnerName = "yamijima_forest_purple_A", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_forest_purple_A", PalId = "ThunderDog" },
    { SpawnerName = "yamijima_forest_purple_A", PalId = "WhiteDeer" },

    -- yamijima_forest_purple_B
    { SpawnerName = "yamijima_forest_purple_B", PalId = "BerryGoat_Dark" },
    { SpawnerName = "yamijima_forest_purple_B", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_forest_purple_B", PalId = "BlueberryFairy" },
    { SpawnerName = "yamijima_forest_purple_B", PalId = "HerculesBeetle_Ground" },
    { SpawnerName = "yamijima_forest_purple_B", PalId = "MimicDog" },
    { SpawnerName = "yamijima_forest_purple_B", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_forest_purple_B", PalId = "NightBlueHorse" },
    { SpawnerName = "yamijima_forest_purple_B", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_forest_purple_B", PalId = "WhiteDeer" },

    -- yamijima_forest_purple_C
    { SpawnerName = "yamijima_forest_purple_C", PalId = "BerryGoat_Dark" },
    { SpawnerName = "yamijima_forest_purple_C", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_forest_purple_C", PalId = "HerculesBeetle_Ground" },
    { SpawnerName = "yamijima_forest_purple_C", PalId = "MimicDog" },
    { SpawnerName = "yamijima_forest_purple_C", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_forest_purple_C", PalId = "NightBlueHorse" },
    { SpawnerName = "yamijima_forest_purple_C", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_forest_purple_C", PalId = "ThunderDog" },
    { SpawnerName = "yamijima_forest_purple_C", PalId = "WhiteDeer" },

    -- yamijima_IceLand_pink_A
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "BirdDragon_Ice" },
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "CandleGhost" },
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "CatVampire" },
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "GhostRabbit" },
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "MimicDog" },
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "Werewolf_Ice" },
    { SpawnerName = "yamijima_IceLand_pink_A", PalId = "WhiteDeer" },

    -- yamijima_IceLand_pink_A_LazyDragon
    { SpawnerName = "yamijima_IceLand_pink_A_LazyDragon", PalId = "LazyDragon" },
    { SpawnerName = "yamijima_IceLand_pink_A_LazyDragon", PalId = "LazyDragon_Electric" },

    -- yamijima_IceLand_pink_B
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "CandleGhost" },
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "CatVampire" },
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "Horus_Water" },
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "MimicDog" },
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "MushroomDragon_Dark" },
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "Werewolf_Ice" },
    { SpawnerName = "yamijima_IceLand_pink_B", PalId = "WhiteDeer" },

    -- yamijima_IceLand_pink_B_LazyDragon
    { SpawnerName = "yamijima_IceLand_pink_B_LazyDragon", PalId = "LazyDragon" },
    { SpawnerName = "yamijima_IceLand_pink_B_LazyDragon", PalId = "LazyDragon_Electric" },

    -- yamijima_IceLand_pink_C
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "BirdDragon_Ice" },
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "CandleGhost" },
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "GhostRabbit" },
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "Manticore_Dark" },
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "MimicDog" },
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "MushroomDragon_Dark" },
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_IceLand_pink_C", PalId = "WhiteDeer" },

    -- yamijima_IceLand_pink_D
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "BlueThunderHorse" },
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "CandleGhost" },
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "Horus_Water" },
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "Manticore_Dark" },
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "MimicDog" },
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "VolcanicMonster_Ice" },
    { SpawnerName = "yamijima_IceLand_pink_D", PalId = "WhiteDeer" },

    -- yamijima_IceLand_pink_F
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "BirdDragon_Ice" },
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "BlueThunderHorse" },
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "CandleGhost" },
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "MimicDog" },
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "MushroomDragon_Dark" },
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "VolcanicMonster_Ice" },
    { SpawnerName = "yamijima_IceLand_pink_F", PalId = "WhiteDeer" },

    -- yamijima_lava_pink_A
    { SpawnerName = "yamijima_lava_pink_A", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_lava_pink_A", PalId = "Manticore" },
    { SpawnerName = "yamijima_lava_pink_A", PalId = "MimicDog" },
    { SpawnerName = "yamijima_lava_pink_A", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_lava_pink_A", PalId = "NightBlueHorse" },
    { SpawnerName = "yamijima_lava_pink_A", PalId = "RedArmorBird" },
    { SpawnerName = "yamijima_lava_pink_A", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_lava_pink_A", PalId = "Umihebi_Fire" },
    { SpawnerName = "yamijima_lava_pink_A", PalId = "WhiteDeer" },

    -- yamijima_plateau_pink_A_LazyDragon
    { SpawnerName = "yamijima_plateau_pink_A_LazyDragon", PalId = "LazyDragon" },
    { SpawnerName = "yamijima_plateau_pink_A_LazyDragon", PalId = "LazyDragon_Electric" },

    -- yamijima_plateau_pink_B_LazyDragon
    { SpawnerName = "yamijima_plateau_pink_B_LazyDragon", PalId = "LazyDragon" },
    { SpawnerName = "yamijima_plateau_pink_B_LazyDragon", PalId = "LazyDragon_Electric" },

    -- yamijima_plateau_pink_D
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "AmaterasuWolf_Dark" },
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "BlueberryFairy" },
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "GrimGirl" },
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "HadesBird" },
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "KendoFrog_Dark" },
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "MimicDog" },
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_plateau_pink_D", PalId = "WhiteDeer" },

    -- yamijima_plateau_pink_D_LazyDragon
    { SpawnerName = "yamijima_plateau_pink_D_LazyDragon", PalId = "LazyDragon" },
    { SpawnerName = "yamijima_plateau_pink_D_LazyDragon", PalId = "LazyDragon_Electric" },

    -- yamijima_plateau_pink_E
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "BlueberryFairy" },
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "GoldenHorse" },
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "GrimGirl" },
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "HadesBird" },
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "KendoFrog_Dark" },
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "MimicDog" },
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_plateau_pink_E", PalId = "WhiteDeer" },

    -- yamijima_plateau_pink_E_LazyDragon
    { SpawnerName = "yamijima_plateau_pink_E_LazyDragon", PalId = "LazyDragon" },
    { SpawnerName = "yamijima_plateau_pink_E_LazyDragon", PalId = "LazyDragon_Electric" },

    -- yamijima_plateau_pink_F
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "AmaterasuWolf_Dark" },
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "BlueberryFairy" },
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "GrimGirl" },
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "HadesBird" },
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "KendoFrog_Dark" },
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "MimicDog" },
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_plateau_pink_F", PalId = "WhiteDeer" },

    -- yamijima_plateau_pink_G
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "AmaterasuWolf_Dark" },
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "BlueberryFairy" },
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "GoldenHorse" },
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "GrimGirl" },
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "HadesBird" },
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "MimicDog" },
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_plateau_pink_G", PalId = "WhiteDeer" },

    -- yamijima_plateau_purple_A
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "BadCatgirl" },
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "DarkCrow" },
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "FengyunDeeper_Electric" },
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "GrimGirl" },
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "MimicDog" },
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "RaijinDaughter_Water" },
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_plateau_purple_A", PalId = "WhiteDeer" },

    -- yamijima_plateau_purple_B
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "BadCatgirl" },
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "BirdDragon" },
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "DarkCrow" },
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "FengyunDeeper_Electric" },
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "GrimGirl" },
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "MimicDog" },
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_plateau_purple_B", PalId = "WhiteDeer" },

    -- yamijima_plateau_purple_C
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "BadCatgirl" },
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "BirdDragon" },
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "DarkCrow" },
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "FengyunDeeper_Electric" },
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "GrimGirl" },
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "MimicDog" },
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_plateau_purple_C", PalId = "WhiteDeer" },

    -- yamijima_rock_pink_B_LazyDragon
    { SpawnerName = "yamijima_rock_pink_B_LazyDragon", PalId = "LazyDragon" },
    { SpawnerName = "yamijima_rock_pink_B_LazyDragon", PalId = "LazyDragon_Electric" },

    -- yamijima_rock_pink_D
    { SpawnerName = "yamijima_rock_pink_D", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_rock_pink_D", PalId = "JellyfishGhost" },
    { SpawnerName = "yamijima_rock_pink_D", PalId = "MimicDog" },
    { SpawnerName = "yamijima_rock_pink_D", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_rock_pink_D", PalId = "NegativeOctopus" },
    { SpawnerName = "yamijima_rock_pink_D", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_rock_pink_D", PalId = "Serpent_Ground" },
    { SpawnerName = "yamijima_rock_pink_D", PalId = "WhiteDeer" },
    { SpawnerName = "yamijima_rock_pink_D", PalId = "WhiteTiger_Ground" },

    -- yamijima_rock_pink_E
    { SpawnerName = "yamijima_rock_pink_E", PalId = "BirdDragon" },
    { SpawnerName = "yamijima_rock_pink_E", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_rock_pink_E", PalId = "JellyfishGhost" },
    { SpawnerName = "yamijima_rock_pink_E", PalId = "MimicDog" },
    { SpawnerName = "yamijima_rock_pink_E", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_rock_pink_E", PalId = "OctopusGirl" },
    { SpawnerName = "yamijima_rock_pink_E", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_rock_pink_E", PalId = "WhiteDeer" },
    { SpawnerName = "yamijima_rock_pink_E", PalId = "WhiteTiger_Ground" },

    -- yamijima_rock_purple_A
    { SpawnerName = "yamijima_rock_purple_A", PalId = "BirdDragon" },
    { SpawnerName = "yamijima_rock_purple_A", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_rock_purple_A", PalId = "JellyfishGhost" },
    { SpawnerName = "yamijima_rock_purple_A", PalId = "MimicDog" },
    { SpawnerName = "yamijima_rock_purple_A", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_rock_purple_A", PalId = "NegativeOctopus" },
    { SpawnerName = "yamijima_rock_purple_A", PalId = "OctopusGirl" },
    { SpawnerName = "yamijima_rock_purple_A", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_rock_purple_A", PalId = "WhiteDeer" },

    -- yamijima_rock_purple_B
    { SpawnerName = "yamijima_rock_purple_B", PalId = "BirdDragon" },
    { SpawnerName = "yamijima_rock_purple_B", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_rock_purple_B", PalId = "JellyfishFairy" },
    { SpawnerName = "yamijima_rock_purple_B", PalId = "JellyfishGhost" },
    { SpawnerName = "yamijima_rock_purple_B", PalId = "MimicDog" },
    { SpawnerName = "yamijima_rock_purple_B", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_rock_purple_B", PalId = "OctopusGirl" },
    { SpawnerName = "yamijima_rock_purple_B", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_rock_purple_B", PalId = "WhiteDeer" },

    -- yamijima_rock_purple_C
    { SpawnerName = "yamijima_rock_purple_C", PalId = "BirdDragon" },
    { SpawnerName = "yamijima_rock_purple_C", PalId = "BlackPuppy" },
    { SpawnerName = "yamijima_rock_purple_C", PalId = "GhostAnglerfish" },
    { SpawnerName = "yamijima_rock_purple_C", PalId = "JellyfishGhost" },
    { SpawnerName = "yamijima_rock_purple_C", PalId = "MimicDog" },
    { SpawnerName = "yamijima_rock_purple_C", PalId = "MysteryMask" },
    { SpawnerName = "yamijima_rock_purple_C", PalId = "OctopusGirl" },
    { SpawnerName = "yamijima_rock_purple_C", PalId = "Ronin_Dark" },
    { SpawnerName = "yamijima_rock_purple_C", PalId = "WhiteDeer" },

    -- yellow_A
    { SpawnerName = "yellow_A", PalId = "CatMage" },
    { SpawnerName = "yellow_A", PalId = "CuteButterfly" },
    { SpawnerName = "yellow_A", PalId = "Eagle" },
    { SpawnerName = "yellow_A", PalId = "FairyDragon" },
    { SpawnerName = "yellow_A", PalId = "FluffyBird" },
    { SpawnerName = "yellow_A", PalId = "HadesBird" },
    { SpawnerName = "yellow_A", PalId = "LittleBriarRose" },
    { SpawnerName = "yellow_A", PalId = "MimicDog" },
    { SpawnerName = "yellow_A", PalId = "NaughtyCat" },
    { SpawnerName = "yellow_A", PalId = "SakuraSaurus" },
    { SpawnerName = "yellow_A", PalId = "Werewolf" },

    -- yellow_A_cliff
    { SpawnerName = "yellow_A_cliff", PalId = "Eagle" },

    -- yellow_A_flower
    { SpawnerName = "yellow_A_flower", PalId = "CuteButterfly" },

    -- yellow_B
    { SpawnerName = "yellow_B", PalId = "HadesBird" },
    { SpawnerName = "yellow_B", PalId = "MimicDog" },
    { SpawnerName = "yellow_B", PalId = "Serpent" },
    { SpawnerName = "yellow_B", PalId = "SharkKid" },
    { SpawnerName = "yellow_B", PalId = "Werewolf" },

    -- yellow_B_ColorfulBird
    { SpawnerName = "yellow_B_ColorfulBird", PalId = "ColorfulBird" },

    -- yellow_B_Lazydragons
    { SpawnerName = "yellow_B_Lazydragons", PalId = "LazyDragon" },

    -- yellow_C
    { SpawnerName = "yellow_C", PalId = "BerryGoat" },
    { SpawnerName = "yellow_C", PalId = "CatMage" },
    { SpawnerName = "yellow_C", PalId = "FlameBuffalo" },
    { SpawnerName = "yellow_C", PalId = "HadesBird" },
    { SpawnerName = "yellow_C", PalId = "LazyCatfish" },
    { SpawnerName = "yellow_C", PalId = "MimicDog" },
    { SpawnerName = "yellow_C", PalId = "NaughtyCat" },
    { SpawnerName = "yellow_C", PalId = "Werewolf" },

    -- yellow_C_Lazydragons
    { SpawnerName = "yellow_C_Lazydragons", PalId = "LazyDragon" },

    -- yellow_C_serpents
    { SpawnerName = "yellow_C_serpents", PalId = "Serpent" },

    -- yellow_D
    { SpawnerName = "yellow_D", PalId = "BerryGoat" },
    { SpawnerName = "yellow_D", PalId = "CatMage" },
    { SpawnerName = "yellow_D", PalId = "FlowerDoll" },
    { SpawnerName = "yellow_D", PalId = "FlowerRabbit" },
    { SpawnerName = "yellow_D", PalId = "HadesBird" },
    { SpawnerName = "yellow_D", PalId = "MimicDog" },
    { SpawnerName = "yellow_D", PalId = "NaughtyCat" },
    { SpawnerName = "yellow_D", PalId = "PinkRabbit" },
    { SpawnerName = "yellow_D", PalId = "PinkRabbit_Grass" },
    { SpawnerName = "yellow_D", PalId = "Werewolf" },

    -- yellow_F
    { SpawnerName = "yellow_F", PalId = "DarkCrow" },
    { SpawnerName = "yellow_F", PalId = "ElecPomeranian" },
    { SpawnerName = "yellow_F", PalId = "GrassMinotaur" },
    { SpawnerName = "yellow_F", PalId = "Hedgehog_Ice" },
    { SpawnerName = "yellow_F", PalId = "LazyCatfish" },
    { SpawnerName = "yellow_F", PalId = "MimicDog" },
    { SpawnerName = "yellow_F", PalId = "NegativeKoala" },
    { SpawnerName = "yellow_F", PalId = "PinkRabbit_Grass" },
    { SpawnerName = "yellow_F", PalId = "SakuraSaurus" },
    { SpawnerName = "yellow_F", PalId = "Werewolf" },
    { SpawnerName = "yellow_F", PalId = "WizardOwl" },

    -- yellow_F_BirdDragons
    { SpawnerName = "yellow_F_BirdDragons", PalId = "BirdDragon" },
    { SpawnerName = "yellow_F_BirdDragons", PalId = "BirdDragon_Ice" },

    -- yellow_F_BlueDragons
    { SpawnerName = "yellow_F_BlueDragons", PalId = "BlueDragon" },

    -- yellow_G
    { SpawnerName = "yellow_G", PalId = "DarkCrow" },
    { SpawnerName = "yellow_G", PalId = "GrassMammoth" },
    { SpawnerName = "yellow_G", PalId = "Kirin" },
    { SpawnerName = "yellow_G", PalId = "MimicDog" },
    { SpawnerName = "yellow_G", PalId = "NegativeKoala" },
    { SpawnerName = "yellow_G", PalId = "Werewolf" },
    { SpawnerName = "yellow_G", PalId = "WindChimes" },
    { SpawnerName = "yellow_G", PalId = "WizardOwl" },

    -- yellow_H
    { SpawnerName = "yellow_H", PalId = "DarkCrow" },
    { SpawnerName = "yellow_H", PalId = "MimicDog" },
    { SpawnerName = "yellow_H", PalId = "NegativeKoala" },
    { SpawnerName = "yellow_H", PalId = "PinkRabbit" },
    { SpawnerName = "yellow_H", PalId = "PinkRabbit_Grass" },
    { SpawnerName = "yellow_H", PalId = "SakuraSaurus" },
    { SpawnerName = "yellow_H", PalId = "Werewolf" },
    { SpawnerName = "yellow_H", PalId = "WindChimes" },
    { SpawnerName = "yellow_H", PalId = "WizardOwl" },

}
