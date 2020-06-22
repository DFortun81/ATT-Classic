--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays =
{
	n(-53, {	-- Midsummer Fire Festival
		n(QUESTS, {
			q(9319, {	-- A Light in Dark Places
				["qg"] = 16788,	-- Festival Flamekeeper
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
					ORGRIMMAR,
					UNDERCITY,
					DIRE_MAUL,
					BLACKROCK_SPIRE,
					STRATHOLME,
					SCHOLOMANCE,
				},
				["lvl"] = 50,
				["groups"] = {
					i(23083),	-- Captured Flame
					i(23247),	-- Burning Blossom
				},
			}),
			q(9322, {	-- Wild Fires in Kalimdor
				["qg"] = 16788,	-- Festival Flamekeeper
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["coords"] = {
					{ 38.5, 61.1, STORMWIND_CITY}, 
					{ 63.6, 24.7, IRONFORGE },
					{ 56.5, 92.0, TELDRASSIL },
				},
				["maps"] = {
					STORMWIND_CITY,
					IRONFORGE,
					TELDRASSIL,
					THUNDER_BLUFF,
					ORGRIMMAR,
					UNDERCITY,
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
				["qg"] = 16788,	-- Festival Flamekeeper
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
					ORGRIMMAR,
					UNDERCITY,
					BLASTED_LANDS,
					EASTERN_PLAGUELANDS,
					THE_HINTERLANDS,
					SEARING_GORGE,
				},
				["lvl"] = 1,
				["groups"] = {
					i(23324),	-- Mantle of the Fire Festival
					i(23247),	-- Burning Blossom
				},
			}),
			q(9324, {	-- Stealing Orgrimmar's Flame
				["qg"] = 16788,	-- Festival Flamekeeper
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
					i(23247),	-- Burning Blossom
				},
			}),
			q(9325, {	-- Stealing Thunder Bluff's Flame
				["qg"] = 16788,	-- Festival Flamekeeper
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
					i(23246),	-- Fiery Festival Brew
					i(23247),	-- Burning Blossom
				},
			}),
			q(9326, {	-- Stealing the Undercity's Flame
				["qg"] = 16788,	-- Festival Flamekeeper
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
					i(23247),	-- Burning Blossom
				},
			}),
			q(9330, {	-- Stealing Stormwind's Flame
				["races"] = HORDE_ONLY,
				["lvl"] = 50,
				["groups"] = {
					i(23246),	-- Fiery Festival Brew
					i(23247),	-- Burning Blossom
				},
			}),
			q(9331, {	-- Stealing Ironforge's Flame
				["races"] = HORDE_ONLY,
				["lvl"] = 50,
				["groups"] = {
					i(23247),	-- Burning Blossom
				},
			}),
			q(9332, {	-- Stealing Darnassus's Flame
				["races"] = HORDE_ONLY,
				["lvl"] = 50,
				["groups"] = {
					i(23211),	-- Toasted Smorc
					i(23326),	-- Midsummer Sausage
					i(23327),	-- Fire-toasted Bun
					i(23435),	-- Elderberry Pie
				},
			}),
			q(9339, {	-- A Thief's Reward
				["lvl"] = 50,
				["groups"] = {
					i(23323),	-- Crown of the Fire Festival
				},
			}),
			q(9365, {	-- A Thief's Reward
				["lvl"] = 50,
				["groups"] = {
					i(23323),	-- Crown of the Fire Festival
				},
			}),
			q(9367, {	-- The Festival of Fire
				["qg"] = 16817,	-- Festival Loremaster
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
					i(23246),	-- Fiery Festival Brew
					i(23247),	-- Burning Blossom
				},
			}),
			q(9388, {	-- Flickering Flames in Kalimdor
				["qg"] = 16817,	-- Festival Loremaster
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
					i(23211),	-- Toasted Smorc
					i(23326),	-- Midsummer Sausage
					i(23327),	-- Fire-toasted Bun
					i(23435),	-- Elderberry Pie
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
		}),
	}),
};
