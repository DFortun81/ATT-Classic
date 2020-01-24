--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays =
{
	n(-47, {	-- Lunar Festival
		n(-17, {	-- Quests
			q(8882, {	-- Cluster Launcher
				["lvl"] = 55,
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["maps"] = { MOONGLADE },
				["repeatable"] = true,
				["cost"] = {
					{ "i", 21100, 5 },	-- Coin of Ancestry
				},
				["g"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21737),	-- Schematic: Cluster Launcher
				},
			}),
			q(8880, {	-- Cluster Rockets
				["lvl"] = 45,
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["maps"] = { MOONGLADE },
				["repeatable"] = true,
				["cost"] = {
					{ "i", 21100, 5 },	-- Coin of Ancestry
				},
				["g"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21741),	-- Cluster Rocket Recipes
				},
			}),
			q(8868, {	-- Elune's Blessing
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
			q(8863, {	-- Festival Dumplings
				["lvl"] = 1,
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
				["lvl"] = 1,
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
				["lvl"] = 1,
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
				["lvl"] = 50,
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["maps"] = { MOONGLADE },
				["repeatable"] = true,
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
				["lvl"] = 45,
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["maps"] = { MOONGLADE },
				["repeatable"] = true,
				["cost"] = {
					{ "i", 21100, 5 },	-- Coin of Ancestry
				},
				["g"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21738),	-- Schematic: Firework Launcher
				},
			}),
			q(8881, {	-- Large Cluster Rockets
				["lvl"] = 55,
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["maps"] = { MOONGLADE },
				["repeatable"] = true,
				["cost"] = {
					{ "i", 21100, 5 },	-- Coin of Ancestry
				},
				["g"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21743),	-- Large Cluster Rocket Recipes
				},
			}),
			q(8879, {	-- Large Rockets
				["lvl"] = 35,
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["maps"] = { MOONGLADE },
				["repeatable"] = true,
				["cost"] = {
					{ "i", 21100, 5 },	-- Coin of Ancestry
				},
				["g"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21742),	-- Large Rocket Recipes
				},
			}),
			q(8867, {	-- Lunar Fireworks
				["lvl"] = 1,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 15895,  -- Lunar Festival Harbinger
			}),
			q(8876, {	-- Small Rockets
				["lvl"] = 25,
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["maps"] = { MOONGLADE },
				["repeatable"] = true,
				["cost"] = {
					{ "i", 21100, 5 },	-- Coin of Ancestry
				},
				["g"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21740),	-- Small Rocket Recipes
				},
			}),
			q(8870, {	-- The Lunar Festival
				["lvl"] = 1,
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
				["lvl"] = 1,
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
				["lvl"] = 1,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 15892,  -- Lunar Festival Emissary
				["coord"] = { 42.2, 44.0, DARNASSUS },
				["maps"] = { DARNASSUS },
				["altQuests"] = { 
					8870,  -- The Lunar Festival 
					8871,  -- The Lunar Festival 
				},
			}),
			q(8883, {	-- Valadar Starsong
				["lvl"] = 1,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 15895,  -- Lunar Festival Harbinger
			}),
			q(8646, {	-- Hammershout the Elder
				["lvl"] = 1,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 15562,  -- Elder Hammershout
				["coord"] = { 54.3, 66.3, STORMWIND_CITY },
				["maps"] = { STORMWIND_CITY },
				["g"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
		}),
	}),
};