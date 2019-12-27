---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(BURNING_STEPPES, {	-- Burning Steppes
			n(-17, {	-- Quests
				q(7626, { -- Arcanite
					["lvl"] = 60,
					["classes"] = { WARLOCK },
					["qg"] = 14437, -- Gorzeeki Wildeyes
					["coords"] = { 12.4, 31.6, BURNING_STEPPES },
					["sourceQuests"] = {
						7626, -- Bell of Dethmoora
						7627, -- Wheel of the Black March
						7628, -- Doomsday Candle
					},
					["cost"] = {
						{ "i", 12360, 3 }, -- Arcanite Bar
					},
				}),
				q(7626, { -- Bell of Dethmoora
					["lvl"] = 60,
					["classes"] = { WARLOCK },
					["qg"] = 14436, -- Mor'zul Bloodbringer
					["coords"] = { 12.6, 31.6, BURNING_STEPPES },
					["sourceQuest"] = 7564, -- Wildeyes
				}),
				q(4726, {	-- Broodling Essence
					["lvl"] = 50,
					["qg"] = 10267,	-- Tinkee Steamboil
				}),
				q(4726, {	-- Broodling Essence
					["lvl"] = 50,
					["qg"] = 10267,	-- Tinkee Steamboil
				}),
				q(7628, { -- Doomsday Candle
					["lvl"] = 60,
					["classes"] = { WARLOCK },
					["qg"] = 14436, -- Mor'zul Bloodbringer
					["coords"] = { 12.6, 31.6, BURNING_STEPPES },
					["sourceQuest"] = 7564, -- Wildeyes
					["cost"] = {
						{ "i", 15416, 30 }, -- Black Dragonscale
					},
				}),
				q(3823, {	-- Extinguish the Firegut
					["lvl"] = 48,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9177,	-- Oralius
					["coords"] = { 84.6, 68.8, BURNING_STEPPES },
				}),
				q(4283, {	-- FIFTY! YEP!
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9177,	-- Oralius
					["coords"] = { 84.6, 68.8, BURNING_STEPPES },
				}),
				q(4808, {	-- Felnok Steelspring
					["lvl"] = 50,
					["qg"] = 10267,	-- Tinkee Steamboil
				}),
				q(3824, {	-- Gor'tesh the Brute Lord
					["lvl"] = 48,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9177,	-- Oralius
				}),
				q(7629, { -- Imp Delivery
					["lvl"] = 60,
					["classes"] = { WARLOCK },
					["qg"] = 14437, -- Gorzeeki Wildeyes
					["coords"] = { 12.4, 31.6, BURNING_STEPPES },
					["sourceQuests"] = {
						7625, -- Xorothian Stardust
						7630, -- Arcanite
					},
					["cost"] = {
						{ "i", 15416, 30 }, -- Black Dragonscale
					},
				}),
				q(3822, {	-- Krom'Grul
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(11869),	-- Sha'ni's Ring
					},
				}),
				q(4481, {	-- Libram of Constitution
					["lvl"] = 50,
					["repeatable"] = true,
					["qg"] = 9836,	-- Mathredis Firestar
					["g"] = {
						i(11642),	-- Lesser Arcanum of Constitution
					},
					["cost"] = {
						{ "i", 11754, 1 }, -- Black Diamond
						{ "i", 8411, 1 },  -- Lung Juice Cocktail
						{ "i", 11733, 1 }, -- Libram of Constitution
						{ "i", 11952, 4 }, -- Night Dragon's Breath
						{ "g", 300000 },   -- 30g
					},
				}),
				q(4483, {	-- Libram of Resilience
					["lvl"] = 50,
					["repeatable"] = true,
					["qg"] = 9836,	-- Mathredis Firestar
					["g"] = {
						i(11644),	-- Lesser Arcanum of Resilience
					},
					["cost"] = {
						{ "i", 11754, 1 }, -- Black Diamond
						{ "i", 11567, 4 }, -- Crystal Spire
						{ "i", 11751, 1 },  -- Bruning Essence
						{ "i", 11736, 1 }, -- Libram of Resilience
						{ "g", 300000 },   -- 30g
					},
				}),
				q(4463, {	-- Libram of Rumination
					["lvl"] = 50,
					["repeatable"] = true,
					["qg"] = 9836,	-- Mathredis Firestar
					["g"] = {
						i(11622),	-- Lesser Arcanum of Rumination
					},
					["cost"] = {
						{ "i", 11754, 1 }, -- Black Diamond
						{ "i", 11752, 1 }, -- Black Blood of the Tormented
						{ "i", 8424, 1 },  -- Gizzard Gum
						{ "i", 11732, 1 }, -- Libram of Rumination
						{ "g", 300000 },   -- 30g
					},
				}),
				q(4482, {	-- Libram of Tenacity
					["lvl"] = 50,
					["repeatable"] = true,
					["qg"] = 9836,	-- Mathredis Firestar
					["g"] = {
						i(11643),	-- Lesser Arcanum of Tenacity
					},
					["cost"] = {
						{ "i", 11754, 1 }, -- Black Diamond
						{ "i", 11734, 1 }, -- Libram of Tenacity
						{ "i", 11564, 4 }, -- Crystal Ward 
						{ "i", 11753, 1 }, -- Eye of Kajal
						{ "g", 300000 },   -- 30g
					},
				}),
				q(4484, {	-- Libram of Voracity
					["lvl"] = 50,
					["repeatable"] = true,
					["qg"] = 9836,	-- Mathredis Firestar
					["g"] = {
						i(11647),	-- Lesser Arcanum of Voracity
						i(11648),	-- Lesser Arcanum of Voracity
						i(11649),	-- Lesser Arcanum of Voracity
						i(11645),	-- Lesser Arcanum of Voracity
						i(11646),	-- Lesser Arcanum of Voracity
					},
					["cost"] = {
						{ "i", 11754, 1 }, -- Black Diamond
						{ "i", 11737, 1 }, -- Libram of Voracity
						{ "i", 11951, 4 }, -- Whipper Root Tuber
						{ "i", 11563, 4 }, -- Crystal Force
						{ "g", 300000 },   -- 30g
					},
				}),
				q(7623, { -- Lord Banehollow
					["lvl"] = 60,
					["classes"] = { WARLOCK },
					["qg"] = 14437, -- Gorzeeki Wildeyes
					["coords"] = { 12.4, 31.6, BURNING_STEPPES },
					["sourceQuest"] = 7564, -- Wildeyes
				}),
				q(3825, {	-- Ogre Head On A Stick = Party
					["lvl"] = 48,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9177,	-- Oralius
					["coords"] = { 84.6, 68.8, BURNING_STEPPES },
					["g"] = {
						i(11867),	-- Maddening Gauntlets
						i(11868),	-- Choking Band
					},
				}),
				q(7563, { -- Rage of Blood
					["lvl"] = 60,
					["classes"] = { WARLOCK },
					["qg"] = 14436, -- Mor'zul Bloodbringer
					["sourceQuest"] = 7562, -- Mor'zul Bloodbringer
					["cost"] = {
						{ "i", 18590, 30 }, -- Raging Beast's Blood
					},
				}),
				q(4296, {	-- Tablet of the Seven
					["lvl"] = 50,
					["qg"] = 9536,	-- Maxwort Uberglint
				}),
				q(7627, { -- Wheel of the Black March
					["lvl"] = 60,
					["classes"] = { WARLOCK },
					["qg"] = 14436, -- Mor'zul Bloodbringer
					["sourceQuest"] = 7564, -- Wildeyes
				}),
				q(7564, { -- Wildeyes
					["lvl"] = 60,
					["classes"] = { WARLOCK },
					["qg"] = 14436, -- Mor'zul Bloodbringer
					["coords"] = { 12.6, 31.6, BURNING_STEPPES },
					["sourceQuest"] = 7563, -- Rage of Blood
				}),
			}),
		}),
	}),
};