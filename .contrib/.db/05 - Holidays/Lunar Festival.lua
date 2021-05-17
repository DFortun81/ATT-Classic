--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays = bubbleDown({ ["u"] = LUNAR_FESTIVAL },
{
	n(-47, {	-- Lunar Festival
		n(-297, {	-- Mailbox
			i(21746, {	-- Lucky Red Envelope
				i(21744),	-- Lucky Rocket Cluster
				i(21745), 	-- Elder's Moonstone
			}),
		}),
		n(QUESTS, {
			q(8647, {	-- Bellowrage the Elder
				["isYearly"] = true,
				["qg"] = 15563,	-- Elder Bellowrage
				["maps"] = { BLASTED_LANDS },
				["coord"] = { 58.8, 51.7, BLASTED_LANDS },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8715, {	-- Bladeleaf the Elder
				["isYearly"] = true,
				["qg"] = 15595,  -- Elder Bladeleaf
				["coord"] = { 56.9, 60.5, TELDRASSIL },
				["maps"] = { TELDRASSIL },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8719, {	-- Bladesing the Elder
				["isYearly"] = true,
				["qg"] = 15599,	-- Elder Bladesing
				["maps"] = { SILITHUS },
				["coord"] = { 49.0, 37.7, SILITHUS },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8718, {	-- Bladeswift the Elder
				["isYearly"] = true,
				["qg"] = 15598,  -- Elder Bladeswift
				["coord"] = { 33.5, 14.3, DARNASSUS },
				["maps"] = { DARNASSUS },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8673, {	-- Bloodhoof the Elder
				["isYearly"] = true,
				["qg"] = 15575 ,	-- Elder Bloodhoof
				["maps"] = { MULGORE },
				["coord"] = { 48.4, 53.2, MULGORE },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8726, {	-- Brightspear the Elder
				["isYearly"] = true,
				["qg"] = 15606,  -- Elder Brightspear
				["coord"] = { 55.6, 43.7, WINTERSPRING },
				["maps"] = { WINTERSPRING },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8866, {	-- Bronzebeard the Elder
				["isYearly"] = true,
				["qg"] = 15871,	-- Elder Bronzebeard
				["maps"] = { IRONFORGE },
				["coord"] = { 29.1, 17.0, IRONFORGE },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8882, {	-- Cluster Launcher
				["repeatable"] = true,
				["lvl"] = 55,
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["maps"] = { MOONGLADE },
				["cost"] = {
					{ "i", 21100, 5 },	-- Coin of Ancestry
				},
				["g"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21737),	-- Schematic: Cluster Launcher
				},
			}),
			q(8880, {	-- Cluster Rockets
				["repeatable"] = true,
				["lvl"] = 45,
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["maps"] = { MOONGLADE },
				["cost"] = {
					{ "i", 21100, 5 },	-- Coin of Ancestry
				},
				["g"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21741, {	-- Cluster Rocket Recipes
						["g"] = {
							i(21730),	-- Schematic: Blue Rocket Cluster
							i(21731),	-- Schematic: Green Rocket Cluster
							i(21732),	-- Schematic: Red Rocket Cluster
						},
					}),
				},
			}),
			q(8648, {	-- Darkcore the Elder
				["isYearly"] = true,
				["qg"] = 15564,	-- Elder Darkcore
				["maps"] = { UNDERCITY },
				["coord"] = { 66.6, 38.2, UNDERCITY },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8677, {	-- Darkhorn the Elder
				["isYearly"] = true,
				["qg"] = 15579,  -- Elder Darkhorn
				["coord"] = { 40.9, 33.9, ORGRIMMAR },
				["maps"] = { ORGRIMMAR },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8683, {	-- Dawnstrider the Elder
				["isYearly"] = true,
				["qg"] = 15585,	-- Elder Dawnstrider
				["maps"] = { BURNING_STEPPES },
				["coord"] = { 64.5, 24.1, BURNING_STEPPES },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8684, {	-- Dreamseer the Elder
				["isYearly"] = true,
				["qg"] = 15586,	-- Elder Dreamseer
				["maps"] = { TANARIS },
				["coord"] = { 51.5, 27.8, TANARIS },
				["questID"] = 8684,	-- Dreamseer the Elder
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8868, {	-- Elune's Blessing
				["isYearly"] = true,
				["lvl"] = 40,
				["qg"] = 15864,  -- Valadar Starsong
				["coord"] = { 53.7, 35.2, MOONGLADE },
				["maps"] = { MOONGLADE },
				["g"] = {
					i(21540),	-- Elune's Lantern
					i(21640),	-- Lunar Festival Fireworks Pack
				},
			}),
			q(8862, {	-- Elune's Candle
				["isYearly"] = true,
				["lvl"] = 10,
				["qg"] = 15864,  -- Valadar Starsong
				["coord"] = { 53.7, 35.2, MOONGLADE },
				["maps"] = { MOONGLADE },
				["cost"] = {
					{ "i", 21100, 5 },	-- Coin of Ancestry
				},
				["g"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21713),	-- Elune's Candle
				},
			}),
			q(8727, {	-- Farwhisper the Elder
				["description"] = "Located inside of Stratholme in Festival Lane. Fastest route to him is from the Service Entrance and then head towards The Unforgiven on Live side.",
				["isYearly"] = true,
				["qg"] = 15607,	-- Elder Farwhisper
				["maps"] = { STRATHOLME },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8863, {	-- Festival Dumplings
				["isYearly"] = true,
				["qg"] = 15864,  -- Valadar Starsong
				["coord"] = { 53.7, 35.2, MOONGLADE },
				["maps"] = { MOONGLADE },
				["cost"] = {
					{ "i", 21100, 1 },	-- Coin of Ancestry
				},
				["g"] = {
					i(21537),	-- Festival Dumplings
				},
			}),
			q(8864, {	-- Festive Lunar Dresses
				["repeatable"] = true,
				["qg"] = 15864,  -- Valadar Starsong
				["coord"] = { 53.7, 35.2, MOONGLADE },
				["maps"] = { MOONGLADE },
				["cost"] = {
					{ "i", 21100, 5 },	-- Coin of Ancestry
				},
				["g"] = {
					i(21157),	-- Festive Green Dress
					i(21538),	-- Festive Pink Dress
					i(21539),	-- Festive Purple Dress
					i(21640),	-- Lunar Festival Fireworks Pack
				},
			}),
			q(8865, {	-- Festive Lunar Pant Suits
				["isYearly"] = true,
				["qg"] = 15864,  -- Valadar Starsong
				["coord"] = { 53.7, 35.2, MOONGLADE },
				["maps"] = { MOONGLADE },
				["cost"] = {
					{ "i", 21100, 5 },	-- Coin of Ancestry
				},
				["g"] = {
					i(21541),	-- Festive Black Pant Suit
					i(21544),	-- Festive Blue Pant Suit
					i(21543),	-- Festive Teal Pant Suit
					i(21640),	-- Lunar Festival Fireworks Pack
				},
			}),
			q(8878, {	-- Festive Recipes
				["repeatable"] = true,
				["lvl"] = 50,
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["maps"] = { MOONGLADE },
				["cost"] = {
					{ "i", 21100, 5 },	-- Coin of Ancestry
				},
				["g"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21722),	-- Pattern: Festival Dress
					i(21723),	-- Pattern: Festival Suit
				},
			}),
			q(8877, {	-- Firework Launcher
				["repeatable"] = true,
				["lvl"] = 45,
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["maps"] = { MOONGLADE },
				["cost"] = {
					{ "i", 21100, 5 },	-- Coin of Ancestry
				},
				["g"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21738),	-- Schematic: Firework Launcher
				},
			}),
			q(8652, {	-- Graveborn the Elder
				["isYearly"] = true,
				["qg"] = 15568,	-- Elder Graveborn
				["maps"] = { TIRISFAL_GLADES },
				["coord"] = { 61.9, 53.8, TIRISFAL_GLADES },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8679, {	-- Grimtotem the Elder
				["qg"] = 15581,	-- Elder Grimtotem
				["coord"] = { 76.7, 37.9, FERALAS },
				["maps"] = { FERALAS },
				["isYearly"] = true,
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8653, {	-- Goldwell the Elder
				["isYearly"] = true,
				["qg"] = 15569,	-- Elder Goldwell
				["maps"] = { DUN_MOROGH },
				["coord"] = { 46.8, 51.6, DUN_MOROGH },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8646, {	-- Hammershout the Elder
				["isYearly"] = true,
				["qg"] = 15562,  -- Elder Hammershout
				["coord"] = { 21.40, 53.87, STORMWIND_CITY },
				["maps"] = { STORMWIND_CITY },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8686, {	-- High Mountain the Elder
				["isYearly"] = true,
				["qg"] = 15588,  -- Elder High Mountain
				["coord"] = { 45.0, 58.0, THE_BARRENS },
				["maps"] = { THE_BARRENS },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8643, {	-- Highpeak the Elder
				["isYearly"] = true,
				["qg"] = 15559,	-- Elder Highpeak
				["maps"] = { THE_HINTERLANDS },
				["coord"] = { 50.0, 48.0, THE_HINTERLANDS },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8651, {	-- Ironband the Elder
				["isYearly"] = true,
				["qg"] = 15567,	-- Elder Ironband
				["maps"] = { SEARING_GORGE },
				["coord"] = { 21.3, 79.0, SEARING_GORGE },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8881, {	-- Large Cluster Rockets
				["repeatable"] = true,
				["lvl"] = 55,
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["maps"] = { MOONGLADE },
				["cost"] = {
					{ "i", 21100, 5 },	-- Coin of Ancestry
				},
				["g"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21743, {	-- Large Cluster Rocket Recipes
						["g"] = {
							i(21733),	-- Schematic: Large Blue Rocket Cluster
							i(21734),	-- Schematic: Large Green Rocket Cluster
							i(21735),	-- Schematic: Large Red Rocket Cluster
						},
					}),
				},
			}),
			q(8879, {	-- Large Rockets
				["repeatable"] = true,
				["lvl"] = 35,
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["maps"] = { MOONGLADE },
				["cost"] = {
					{ "i", 21100, 5 },	-- Coin of Ancestry
				},
				["g"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21742, {	-- Large Rocket Recipes
						["g"] = {
							i(21727),	-- Schematic: Large Blue Rocket
							i(21728),	-- Schematic: Large Green Rocket
							i(21729),	-- Schematic: Large Red Rocket
						},
					}),
				},
			}),
			q(8867, {	-- Lunar Fireworks
				["isYearly"] = true,
				["qg"] = 15895,  -- Lunar Festival Harbinger
			}),
			q(8722, {	-- Meadowrun the Elder
				["isYearly"] = true,
				["qg"] = 15602,	-- Elder Meadowrun
				["maps"] = { WESTERN_PLAGUELANDS },
				["coord"] = { 66.0, 47.8, WESTERN_PLAGUELANDS },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8685, {	-- Mistwalker the Elder
				["isYearly"] = true,
				["qg"] = 15587,	-- Elder Mistwalker
				["maps"] = { FERALAS },
				["coord"] = { 62.5, 31.0, FERALAS },
				["questID"] = 8685,	-- Mistwalker the Elder
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8714, {	-- Moonstrike the Elder
				["isYearly"] = true,
				["qg"] = 15594,	-- Elder Moonstrike
				["maps"] = { WESTERN_PLAGUELANDS },
				["coord"] = { 69, 73, WESTERN_PLAGUELANDS },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8717, {	-- Moonwarden the Elder
				["isYearly"] = true,
				["qg"] = 15597,  -- Elder Moonwarden
				["coord"] = { 51.2, 31.2, THE_BARRENS },
				["maps"] = { THE_BARRENS },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8619, {	-- Morndeep the Elder
				["description"] = "Located inside Blackrock Depths at the Ring of Law.",
				["isYearly"] = true,
				["qg"] = 15549,	-- Elder Morndeep
				["maps"] = { BLACKROCK_DEPTHS },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8724,	{	-- Morningdew the Elder
				["isYearly"] = true,
				["qg"] = 15604 ,	-- Elder Morningdew
				["maps"] = { THOUSAND_NEEDLES },
				["coord"] = { 79.2, 77.1, THOUSAND_NEEDLES },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8723, {	-- Nightwind the Elder
				["isYearly"] = true,
				["qg"] = 15603,	-- Elder Nightwind
				["maps"] = { FELWOOD },
				["coord"] = { 37.7, 53.0, FELWOOD },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8645, {	-- Obsidian the Elder
				["isYearly"] = true,
				["qg"] = 15561,	-- Elder Obsidian
				["maps"] = { SILVERPINE_FOREST },
				["coord"] = { 44.9, 41.1, SILVERPINE_FOREST },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8654, {	-- Primestone the Elder
				["isYearly"] = true,
				["qg"] = 15570,	-- Elder Primestone
				["maps"] = { SILITHUS },
				["coord"] = { 23.1, 11.8, SILITHUS },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8678,	{	-- Proudhorn the Elder
				["isYearly"] = true,
				["qg"] = 15580,	-- Elder Proudhorn
				["maps"] = { THUNDER_BLUFF },
				["coord"] = { 73.0, 23.4, THUNDER_BLUFF },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8671, {	-- Ragetotem the Elder
				["isYearly"] = true,
				["qg"] = 15573,	-- Elder Ragetotem
				["maps"] = { TANARIS },
				["coord"] = { 36.3, 80.5, TANARIS },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8725, {	-- Riversong the Elder
				["isYearly"] = true,
				["qg"] = 15605,	-- Elder Riversong
				["maps"] = { ASHENVALE },
				["coord"] = { 35.53, 48.91, ASHENVALE },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8636, {	-- Rumblerock the Elder
				["isYearly"] = true,
				["qg"] = 15557,	-- Elder Rumblerock
				["maps"] = { BURNING_STEPPES },
				["coord"] = { 82.2, 46.5, BURNING_STEPPES },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8670, {	-- Runetotem the Elder
				["isYearly"] = true,
				["qg"] = 15572,  -- Elder Runetotem
				["coord"] = { 53.1, 44.2, DUROTAR },
				["maps"] = { DUROTAR },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8642, {	-- Silvervein the Elder
				["isYearly"] = true,
				["qg"] = 15558,	-- Elder Silvervein
				["maps"] = { LOCH_MODAN },
				["coord"] = { 33.3, 46.5, LOCH_MODAN },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8675, {	-- Skychaser the Elder
				["isYearly"] = true,
				["qg"] = 15577,	-- Elder Skychaser
				["maps"] = { WESTFALL },
				["coord"] = { 56.7, 47.1, WESTFALL },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8720, {	-- Skygleam the Elder
				["isYearly"] = true,
				["qg"] = 15600,  -- Elder Skygleam
				["coord"] = { 72.4, 85.4, AZSHARA },
				["maps"] = { AZSHARA },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8682,	{	-- Skyseer the Elder
				["isYearly"] = true,
				["qg"] = 15584,	-- Elder Skyseer
				["maps"] = { THOUSAND_NEEDLES },
				["coord"] = { 45.4, 50.1, THOUSAND_NEEDLES },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8876, {	-- Small Rockets
				["repeatable"] = true,
				["lvl"] = 25,
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["maps"] = { MOONGLADE },
				["cost"] = {
					{ "i", 21100, 5 },	-- Coin of Ancestry
				},
				["g"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21740, {	-- Small Rocket Recipes
						["g"] = {
							i(21724),	-- Schematic: Small Blue Rocket
							i(21725),	-- Schematic: Small Green Rocket
							i(21726),	-- Schematic: Small Red Rocket
						},
					}),
				},
			}),
			q(8650, {	-- Snowcrown the Elder
				["isYearly"] = true,
				["qg"] = 15566,	-- Elder Snowcrown
				["maps"] = { EASTERN_PLAGUELANDS },
				["coord"] = { 81.5, 60.5, EASTERN_PLAGUELANDS },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8635, {	-- Splitrock the Elder
				["qg"] = 15556,	-- Elder Splitrock
				["description"] = "Inside of Maraudon. Located in the passage way across the water where Rotgrip can be found as if you were headed to Tinkerer from the water near Princess.",
				["maps"] = { MARAUDON },
				["isYearly"] = true,
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8716, {	-- Starglade the Elder
				["isYearly"] = true,
				["qg"] = 15596,	-- Elder Starglade
				["maps"] = { STRANGLETHORN_VALE },
				["coord"] = { 53.11, 18.46, STRANGLETHORN_VALE },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8713, {	-- Starsong the Elder
				["qg"] = 15593,	-- Elder Starsong
				["description"] = "Inside of Sunken Temple. From the entrance, take a left up the spiral staircase. You will need to fight and kill the first dragon pack. Continue down the hallway and hang left into the room with all the dragonkin and then again into the alcove.",
				["maps"] = { SUNKEN_TEMPLE },
				["isYearly"] = true,
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8721, {	-- Starweave the Elder
				["isYearly"] = true,
				["qg"] = 15601,	-- Elder Starweave
				["maps"] = { DARKSHORE },
				["coord"] = { 36.8, 46.7, DARKSHORE },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8644, {	-- Stonefort the Elder
				["description"] = "Located in Lower Blackrock Spire in Hordemar City. He can be found on the left as you cross the first wooden bridge.",
				["isYearly"] = true,
				["qg"] = 15560,	-- Elder Stonefort
				["maps"] = { BLACKROCK_SPIRE },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8672, {	-- Stonespire the Elder
				["isYearly"] = true,
				["qg"] = 15574,  -- Elder Stonespire
				["coord"] = { 61.4, 37.8, WINTERSPRING },
				["maps"] = { WINTERSPRING },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8649, {	-- Stormbrow the Elder
				["isYearly"] = true,
				["qg"] = 15565,	-- Elder Stormbrow
				["maps"] = { ELWYNN_FOREST },
				["coord"] = { 39.8, 63.8, ELWYNN_FOREST },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8870, {	-- The Lunar Festival
				["isYearly"] = true,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 15892,  -- Lunar Festival Emissary
				["coord"] = { 30.9, 61.6, IRONFORGE },
				["maps"] = { IRONFORGE },
				["altQuests"] = {
					8871,  -- The Lunar Festival
					8872,  -- The Lunar Festival
				},
			}),
			q(8871, {	-- The Lunar Festival
				["isYearly"] = true,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 15892,  -- Lunar Festival Emissary
				["coord"] = { 54.3, 66.3, STORMWIND_CITY },
				["maps"] = { STORMWIND_CITY },
				["altQuests"] = {
					8870,  -- The Lunar Festival
					8872,  -- The Lunar Festival
				},
			}),
			q(8872, {	-- The Lunar Festival
				["isYearly"] = true,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 15892,  -- Lunar Festival Emissary
				["coord"] = { 42.2, 44.0, DARNASSUS },
				["maps"] = { DARNASSUS },
				["altQuests"] = {
					8870,  -- The Lunar Festival
					8871,  -- The Lunar Festival
				},
			}),
			q(8873, {	-- The Lunar Festival
				["isYearly"] = true,
				["races"] = HORDE_ONLY,
				["qg"] = 15892,  -- Lunar Festival Emissary
				["maps"] = { ORGRIMMAR },
				["altQuests"] = {
					8874,  -- The Lunar Festival
					8875,  -- The Lunar Festival
				},
			}),
			q(8874, {	-- The Lunar Festival
				["isYearly"] = true,
				["races"] = HORDE_ONLY,
				["qg"] = 15892,  -- Lunar Festival Emissary
				["maps"] = { UNDERCITY },
				["altQuests"] = {
					8873,  -- The Lunar Festival
					8875,  -- The Lunar Festival
				},
			}),
			q(8875, {	-- The Lunar Festival
				["isYearly"] = true,
				["races"] = HORDE_ONLY,
				["qg"] = 15892,  -- Lunar Festival Emissary
				["maps"] = { THUNDER_BLUFF },
				["altQuests"] = {
					8873,  -- The Lunar Festival
					8874,  -- The Lunar Festival
				},
			}),
			q(8681, {	-- Thunderhorn the Elder
				["isYearly"] = true,
				["qg"] = 15583,	-- Elder Thunderhorn
				["maps"] = { UNGORO_CRATER },
				["coord"] = { 50.4, 76.2, UNGORO_CRATER },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8883, {	-- Valadar Starsong
				["qg"] = 15895,  -- Lunar Festival Harbinger
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(8676, {	-- Wildmane the Elder
				["qg"] = 15578,	-- Elder Wildmane
				["description"] = "Inside of Zul'Farrak. Located by the pool where Gahz'rilla is summoned.",
				["maps"] = { ZULFARRAK },
				["isYearly"] = true,
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8688, {	-- Windrun the Elder
				["qg"] = 15592,	-- Elder Windrun
				["coord"] = { 39.7, 75.4, EASTERN_PLAGUELANDS },
				["maps"] = { EASTERN_PLAGUELANDS },
				["isYearly"] = true,
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8680, {	-- Windtotem the Elder
				["qg"] = 15582,  -- Elder Windtotem
				["coord"] = { 62.5, 37.2, THE_BARRENS },
				["maps"] = { THE_BARRENS },
				["isYearly"] = true,
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8674, {	-- Winterhoof the Elder
				["qg"] = 15576,	-- Elder Winterhoof
				["coord"] = { 27.6, 74.2, STRANGLETHORN_VALE },
				["maps"] = { STRANGLETHORN_VALE },
				["isYearly"] = true,
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
		}),
	}),
});