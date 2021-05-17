--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays = bubbleDown({ ["u"] = MIDSUMMER_FIRE_FESTIVAL },
{
	n(-53, {	-- Midsummer Fire Festival
		n(QUESTS, {
		
			q(9319, {	-- A Light in Dark Places
				["isYearly"] = true,
				["qg"] = 16788,	-- Festival Flamekeeper
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["coords"] = {
					{ 38.5, 61.1, STORMWIND_CITY },
					{ 63.6, 24.7, IRONFORGE },
					{ 56.5, 92.0, TELDRASSIL },
					{ 21.6, 26.2, THUNDER_BLUFF },
					{ 62.1, 66.8, TIRISFAL_GLADES },
					{ 46.2, 37.7, ORGRIMMAR },
				},
				["maps"] = {
					STORMWIND_CITY,
					IRONFORGE,
					TELDRASSIL,
					THUNDER_BLUFF,
					ORGRIMMAR,
					TIRISFAL_GLADES,
					DIRE_MAUL,
					BLACKROCK_SPIRE,
					STRATHOLME,
					SCHOLOMANCE,
				},
				["lvl"] = 50,
				["groups"] = {
					objective(1, {	-- Flame of Dire Maul
						["maps"] = { DIRE_MAUL },
					}),
					objective(2, {	-- Flame of Blackrock Spire
						["maps"] = { BLACKROCK_SPIRE },
					}),
					objective(3, {	-- 	Flame of Stratholme
						["maps"] = { STRATHOLME },
					}),
					objective(4, {	--  Flame of the Scholomance
						["maps"] = { SCHOLOMANCE },
					}),
					i(23083),	-- Captured Flame
					i(23247),	-- Burning Blossom
				},
			}),
			q(9339, {	-- A Thief's Reward
				["qg"] = 16818,	-- Festival Talespinner
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["coords"] = {
					{ 21.3, 26.4, THUNDER_BLUFF },
					{ 67.6, 8.3, UNDERCITY },
					{ 46.8, 38.0, ORGRIMMAR },
				},
				["maps"] = {
					STORMWIND_CITY,
					THUNDER_BLUFF,
					ORGRIMMAR,
					TIRISFAL_GLADES,
				},
				["sourceQuests"] = {
					9330,	-- Stealing Stormwind's Flame
					9331,	-- Stealing Ironforge's Flame
					9332,	-- Stealing Darnassus's Flame
				},
				["races"] = HORDE_ONLY,
				["lvl"] = 50,
				["groups"] = {
					i(23323),	-- Crown of the Fire Festival
				},
			}),
			q(9365, {	-- A Thief's Reward
				["isYearly"] = true,
				["qg"] = 16817,	-- Festival Loremaster
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["coords"] = {
					{ 38.5, 61.1, STORMWIND_CITY },
					{ 63.6, 24.7, IRONFORGE },
					{ 56.6, 92.3, TELDRASSIL },
				},
				["maps"] = {
					STORMWIND_CITY,
					IRONFORGE,
					TELDRASSIL,
				},
				["sourceQuests"] = {
					9324,	-- Stealing Orgrimmar's Flame
					9325,	-- Stealing Thunder Bluff's Flame
					9326,	-- Stealing the Undercity's Flame
				},
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 50,
				["groups"] = {
					i(23323),	-- Crown of the Fire Festival
				},
			}),
			q(9389, {	-- Flickering Flames in Eastern Kingdoms
				["qg"] = 16817,	-- Festival Loremaster
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["coords"] = {
					{ 38.5, 61.1, STORMWIND_CITY },
					{ 63.6, 24.7, IRONFORGE },
					{ 56.6, 92.3, TELDRASSIL },
				},
				["maps"] = {
					STORMWIND_CITY,
					IRONFORGE,
					TELDRASSIL,
					THUNDER_BLUFF,
					ORGRIMMAR,
					UNDERCITY,
					HILLSBRAD_FOOTHILLS,
					SILVERPINE_FOREST,
					WESTFALL,
					WETLANDS,
				},
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 1,
				["groups"] = {
					objective(1, {	-- Flame of Hillsbrad
						["coord"] = { 54.2, 34.9, HILLSBRAD_FOOTHILLS },
					}),
					objective(2, {	-- Flame of Silverpine
						["coord"] = { 54.3, 69.6, SILVERPINE_FOREST },
					}),
					objective(3, {	-- Flame of Westfall
						["coord"] = { 33.2, 80.4, WESTFALL },
					}),
					objective(4, {	-- Flame of the Wetlands
						["coord"] = { 51.1, 17.2, WETLANDS },
					}),
					i(23211),	-- Toasted Smorc
					i(23326),	-- Midsummer Sausage
					i(23327),	-- Fire-toasted Bun
					i(23435),	-- Elderberry Pie
				},
			}),
			q(9388, {	-- Flickering Flames in Kalimdor
				["qg"] = 16817,	-- Festival Loremaster
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["coords"] = {
					{ 38.5, 61.1, STORMWIND_CITY },
					{ 63.6, 24.7, IRONFORGE },
					{ 56.6, 92.3, TELDRASSIL },
				},
				["maps"] = {
					STORMWIND_CITY,
					IRONFORGE,
					TELDRASSIL,
					THUNDER_BLUFF,
					ORGRIMMAR,
					UNDERCITY,
					ASHENVALE,
					THE_BARRENS,
					DARKSHORE,
					STONETALON,
				},
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 1,
				["groups"] = {
					objective(1, {	-- 	 Flame of Ashenvale
						["coord"] = { 64.7, 71.7, ASHENVALE },
					}),
					objective(2, {	-- 	Flame of the Barrens
						["coord"] = { 58.9, 37.4, THE_BARRENS },
					}),
					objective(3, {	-- Flame of Darkshore
						["coord"] = { 41.4, 90.9, DARKSHORE },
					}),
					objective(4, {	--  Flame of Stonetalon
						["coord"] = { 59.6, 70.0, STONETALON },
					}),
					i(23211),	-- Toasted Smorc
					i(23326),	-- Midsummer Sausage
					i(23327),	-- Fire-toasted Bun
					i(23435),	-- Elderberry Pie
				},
			}),
			q(9332, {	-- Stealing Darnassus's Flame
				["qg"] = 16818,	-- Festival Talespinner
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["coords"] = {
					{ 21.3, 26.4, THUNDER_BLUFF },
					{ 67.6, 8.3, UNDERCITY },
					{ 46.8, 38.0, ORGRIMMAR },
				},
				["maps"] = {
					STORMWIND_CITY,
					THUNDER_BLUFF,
					ORGRIMMAR,
					TIRISFAL_GLADES,
				},
				["races"] = HORDE_ONLY,
				["lvl"] = 50,
				["groups"] = {
					objective(1, {	-- 	Flame of Darnassus
						["coord"] = { 56.6, 92.3, TELDRASSIL },
					}),
					i(23211),	-- Toasted Smorc
					i(23326),	-- Midsummer Sausage
					i(23327),	-- Fire-toasted Bun
					i(23435),	-- Elderberry Pie
				},
			}),
			q(9331, {	-- Stealing Ironforge's Flame
				["qg"] = 16818,	-- Festival Talespinner
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["coords"] = {
					{ 21.3, 26.4, THUNDER_BLUFF },
					{ 67.6, 8.3, UNDERCITY },
					{ 46.8, 38.0, ORGRIMMAR },
				},
				["maps"] = {
					IRONFORGE,
					THUNDER_BLUFF,
					ORGRIMMAR,
					TIRISFAL_GLADES,
				},
				["races"] = HORDE_ONLY,
				["lvl"] = 50,
				["groups"] = {
					objective(1, {	-- 	Flame of Ironforge
						["coord"] = { 64.6, 24.8, IRONFORGE },
					}),
					i(23247),	-- Burning Blossom
				},
			}),
			q(9324, {	-- Stealing Orgrimmar's Flame
				["isYearly"] = true,
				["qg"] = 16788,	-- Festival Flamekeeper
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["coords"] = {
					{ 38.5, 61.1, STORMWIND_CITY },
					{ 63.6, 24.7, IRONFORGE },
					{ 56.5, 92.0, TELDRASSIL },
				},
				["maps"] = {
					STORMWIND_CITY,
					IRONFORGE,
					TELDRASSIL,
					ORGRIMMAR,
				},
				["lvl"] = 50,
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					objective(1, {	-- 	Flame of Orgrimmar
						["coord"] = { 46.9, 38.7, ORGRIMMAR },
					}),
					i(23247),	-- Burning Blossom
				},
			}),
			q(9330, {	-- Stealing Stormwind's Flame
				["qg"] = 16818,	-- Festival Talespinner
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["coords"] = {
					{ 21.3, 26.4, THUNDER_BLUFF },
					{ 67.6, 8.3, UNDERCITY },
					{ 46.8, 38.0, ORGRIMMAR },
				},
				["maps"] = {
					STORMWIND_CITY,
					THUNDER_BLUFF,
					ORGRIMMAR,
					TIRISFAL_GLADES,
				},
				["races"] = HORDE_ONLY,
				["lvl"] = 50,
				["groups"] = {
					objective(1, {	-- 	Flame of Stormwind
						["coord"] = { 38.9, 62.3, STORMWIND_CITY },
					}),
					i(23246),	-- Fiery Festival Brew
					i(23247),	-- Burning Blossom
				},
			}),
			q(9325, {	-- Stealing Thunder Bluff's Flame
				["isYearly"] = true,
				["qg"] = 16788,	-- Festival Flamekeeper
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["coords"] = {
					{ 38.5, 61.1, STORMWIND_CITY },
					{ 63.6, 24.7, IRONFORGE },
					{ 56.5, 92.0, TELDRASSIL },
				},
				["maps"] = {
					STORMWIND_CITY,
					IRONFORGE,
					TELDRASSIL,
					THUNDER_BLUFF,
				},
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 50,
				["groups"] = {
					objective(1, {	-- 	Flame of Thunder Bluff
						["coord"] = { 21.1, 25.6, THUNDER_BLUFF },
					}),
					i(23246),	-- Fiery Festival Brew
					i(23247),	-- Burning Blossom
				},
			}),
			q(9326, {	-- Stealing the Undercity's Flame
				["isYearly"] = true,
				["qg"] = 16788,	-- Festival Flamekeeper
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["coords"] = {
					{ 38.5, 61.1, STORMWIND_CITY },
					{ 63.6, 24.7, IRONFORGE },
					{ 56.5, 92.0, TELDRASSIL },
				},
				["maps"] = {
					STORMWIND_CITY,
					IRONFORGE,
					TELDRASSIL,
					UNDERCITY,
				},
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 50,
				["groups"] = {
					objective(1, {	-- 	Flame of the Undercity
						["coord"] = { 62.6, 66.9, THUNDER_BLUFF },
					}),
					i(23247),	-- Burning Blossom
				},
			}),
			q(9367, {	-- The Festival of Fire
				["isYearly"] = true,
				["qg"] = 16817,	-- Festival Loremaster
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["coords"] = {
					{ 38.5, 61.1, STORMWIND_CITY },
					{ 63.6, 24.7, IRONFORGE },
					{ 56.6, 92.3, TELDRASSIL },
				},
				["maps"] = {
					STORMWIND_CITY,
					IRONFORGE,
					TELDRASSIL,
				},
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 1,
				["groups"] = {
					objective(1, {	-- 	 Flame of Stormwind
						["coord"] = { 38.9, 62.3, STORMWIND_CITY },
					}),
					objective(2, {	-- 	Flame of Ironforge
						["coord"] = { 64.6, 24.8, IRONFORGE },
					}),
					objective(3, {	-- Flame of Darnassus
						["coord"] = { 56.6, 92.3, TELDRASSIL },
					}),
					i(23246),	-- Fiery Festival Brew
					i(23247),	-- Burning Blossom
				},
			}),
			q(9322, {	-- Wild Fires in Kalimdor
				["isYearly"] = true,
				["qg"] = 16788,	-- Festival Flamekeeper
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["coords"] = {
					{ 38.5, 61.1, STORMWIND_CITY},
					{ 63.6, 24.7, IRONFORGE },
					{ 56.5, 92.0, TELDRASSIL },
					{ 21.6, 26.2, THUNDER_BLUFF },
					{ 62.1, 66.8, TIRISFAL_GLADES },
					{ 46.2, 37.7, ORGRIMMAR },
				},
				["maps"] = {
					STORMWIND_CITY,
					IRONFORGE,
					TELDRASSIL,
					THUNDER_BLUFF,
					ORGRIMMAR,
					TIRISFAL_GLADES,
					AZSHARA,
					SILITHUS,
					UNGORO_CRATER,
					WINTERSPRING,
				},
				["lvl"] = 1,
				["groups"] = {
					objective(1, {	-- Flame of Azshara
						["coord"] = { 41.5, 43.3, AZSHARA },
					}),
					objective(2, {	-- Flame of Silithus
						["coord"] = { 81.2, 18.4, SILITHUS },
					}),
					objective(3, {	-- Flame of Un'Goro
						["coord"] = { 70.1, 76.2, UNGORO_CRATER },
					}),
					objective(4, {	-- Flame of Winterspring
						["coord"] = { 30.6, 43.2, WINTERSPRING },
					}),
					i(23379),	-- Cinder Bracers
					i(23247),	-- Burning Blossom
				},
			}),
			q(9323, {	-- Wild Fires in the Eastern Kingdoms
				["isYearly"] = true,
				["qg"] = 16788,	-- Festival Flamekeeper
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["coords"] = {
					{ 38.5, 61.1, STORMWIND_CITY },
					{ 63.6, 24.7, IRONFORGE },
					{ 56.5, 92.0, TELDRASSIL },
					{ 21.6, 26.2, THUNDER_BLUFF },
					{ 62.1, 66.8, TIRISFAL_GLADES },
					{ 46.2, 37.7, ORGRIMMAR },
				},
				["maps"] = {
					STORMWIND_CITY,
					IRONFORGE,
					TELDRASSIL,
					THUNDER_BLUFF,
					ORGRIMMAR,
					TIRISFAL_GLADES,
					BLASTED_LANDS,
					EASTERN_PLAGUELANDS,
					THE_HINTERLANDS,
					SEARING_GORGE,
				},
				["lvl"] = 1,
				["groups"] = {
					objective(1, {	-- 	Flame of the Blasted Lands
						["coord"] = { 54.4, 31.8, BLASTED_LANDS },
					}),
					objective(2, {	-- 	Flame of the Plaguelands
						["coord"] = { 57.6, 73.2, EASTERN_PLAGUELANDS },
					}),
					objective(3, {	-- Flame of the Hinterlands
						["coord"] = { 62.2, 53.5, THE_HINTERLANDS },
					}),
					objective(4, {	--  Flame of Searing Gorge
						["coord"] = { 33.0, 73.5, SEARING_GORGE },
					}),
					i(23324),	-- Mantle of the Fire Festival
					i(23247),	-- Burning Blossom
				},
			}),
		}),
	}),
});