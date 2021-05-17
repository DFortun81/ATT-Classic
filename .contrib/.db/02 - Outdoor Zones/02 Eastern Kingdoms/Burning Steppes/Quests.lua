---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(BURNING_STEPPES, {
			n(QUESTS, {
				q(7630, {	-- Arcanite
					["qg"] = 14437,	-- Gorzeeki Wildeyes
					["sourceQuests"] = {
						7626,	-- Bell of Dethmoora
						7627,	-- Wheel of the Black March
						7628,	-- Doomsday Candle
					},
					["coords"] = { 12.4, 31.6, BURNING_STEPPES },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 12360, 3 },	-- Arcanite Bar
					},
					["lvl"] = 60,
				}),
				q(7626, {	-- Bell of Dethmoora
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["sourceQuest"] = 7564,	-- Wildeyes
					["coords"] = { 12.6, 31.6, BURNING_STEPPES },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 9264, 10 },	-- Elixir of Shadow Power
					},
					["lvl"] = 60,
				}),
				q(4726, {	-- Broodling Essence
					["qg"] = 10267,	-- Tinkee Steamboil
					["coords"] = { 65.2, 23.8, BURNING_STEPPES },
					["cost"] = {
						{ "i", 12284, 1 },	-- Draco-Incarcinatrix 900
						{ "i", 12283, 8 },	-- Broodling Essence
					},
					["crs"] = {
						7047, 	-- Black Broodling
					},
					["lvl"] = 50,
				}),
				q(7628, {	-- Doomsday Candle
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["sourceQuest"] = 7564,	-- Wildeyes
					["coords"] = { 12.6, 31.6, BURNING_STEPPES },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 15416, 35 },	-- Black Dragonscale
					},
					["lvl"] = 60,
				}),
				q(3823, {	-- Extinguish the Firegut
					["qg"] = 9177,	-- Oralius
					["coords"] = { 84.6, 68.8, BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
				}),
				q(4808, {	-- Felnok Steelspring
					["qg"] = 10267,	-- Tinkee Steamboil
					["sourceQuest"] = 4726,	-- Broodling Essence
					["coord"] = { 65.2, 23.8, BURNING_STEPPES },
					["cost"] = {
						{ "i", 12438, 1 },	-- Tinkee's Letter
					},
					["lvl"] = 50,
				}),
				q(4283, {	-- FIFTY! YEP!
					["qg"] = 9177,	-- Oralius
					["coords"] = { 84.6, 68.8, BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11467, 50 },	-- Blackrock Medallion
					},
					["lvl"] = 50,
				}),
				q(3824, {	-- Gor'tesh the Brute Lord
					["qg"] = 9177,	-- Oralius
					["cost"] = { 84.6, 68.6, BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11080, 1 },	-- Gor'tesh's Lopped Off Head
					},
					["lvl"] = 48,
					["groups"] = {
						{
							["itemID"] = 11080,	-- Gor'tesh's Lopped Off Head
							["questID"] = 3824,	-- Gor'tesh the Brute Lord
							["cr"] = 9176,	-- Gor'tesh
							["coord"] = { 39.6, 55.6, BURNING_STEPPES },
						},
					},
				}),
				q(7629, {	-- Imp Delivery
					["qg"] = 14437,	-- Gorzeeki Wildeyes
					["sourceQuests"] = {
						7625,	-- Xorothian Stardust
						7630,	-- Arcanite
					},
					["coords"] = { 12.4, 31.6, BURNING_STEPPES },
					["maps"] = { SCHOLOMANCE },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18688, 1 },	-- Imp in a Jar
					},
					["lvl"] = 60,
				}),
				q(3822, {	-- Krom'Grul
					["qg"] = 9136,	-- Sha'ni Proudtusk
					["coord"] = { 79.8, 45.4, BURNING_STEPPES },
					["cr"] = 3822,	-- Krom'Grul
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11058, 1 },	-- Sha'ni's Nose-Ring
					},
					["lvl"] = 48,
					["g"] = {
						i(11869),	-- Sha'ni's Ring
					},
				}),
				q(4481, {	-- Libram of Constitution
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65, 23.6, BURNING_STEPPES },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 8411, 1 },  -- Lung Juice Cocktail
						{ "i", 11733, 1 },	-- Libram of Constitution
						{ "i", 11952, 4 },	-- Night Dragon's Breath
						{ "g", 300000 },   -- 30g
					},
					["lvl"] = 50,
					["g"] = {
						i(11642),	-- Lesser Arcanum of Constitution
					},
				}),
				q(4483, {	-- Libram of Resilience
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65, 23.6, BURNING_STEPPES },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 11567, 4 },	-- Crystal Spire
						{ "i", 11751, 1 },  -- Bruning Essence
						{ "i", 11736, 1 },	-- Libram of Resilience
						{ "g", 300000 },   -- 30g
					},
					["lvl"] = 50,
					["g"] = {
						i(11644),	-- Lesser Arcanum of Resilience
					},
				}),
				q(4463, {	-- Libram of Rumination
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65, 23.6, BURNING_STEPPES },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 11752, 1 },	-- Black Blood of the Tormented
						{ "i", 8424, 1 },  -- Gizzard Gum
						{ "i", 11732, 1 },	-- Libram of Rumination
						{ "g", 300000 },   -- 30g
					},
					["lvl"] = 50,
					["g"] = {
						i(11622),	-- Lesser Arcanum of Rumination
					},
				}),
				q(4482, {	-- Libram of Tenacity
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65, 23.6, BURNING_STEPPES },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 11734, 1 },	-- Libram of Tenacity
						{ "i", 11564, 4 },	-- Crystal Ward
						{ "i", 11753, 1 },	-- Eye of Kajal
						{ "g", 300000 },   -- 30g
					},
					["lvl"] = 50,
					["g"] = {
						i(11643),	-- Lesser Arcanum of Tenacity
					},
				}),
				q(4484, {	-- Libram of Voracity
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65, 23.6, BURNING_STEPPES },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 11737, 1 },	-- Libram of Voracity
						{ "i", 11951, 4 },	-- Whipper Root Tuber
						{ "i", 11563, 4 },	-- Crystal Force
						{ "g", 300000 },   -- 30g
					},
					["lvl"] = 50,
					["g"] = {
						i(11647),	-- Lesser Arcanum of Voracity
						i(11648),	-- Lesser Arcanum of Voracity
						i(11649),	-- Lesser Arcanum of Voracity
						i(11645),	-- Lesser Arcanum of Voracity
						i(11646),	-- Lesser Arcanum of Voracity
					},
				}),
				q(7623, {	-- Lord Banehollow
					["qg"] = 14437,	-- Gorzeeki Wildeyes
					["sourceQuest"] = 7564,	-- Wildeyes
					["description"] = "Do not leave the Blasted Lands without purchasing a Shadowy Potion or two.",
					["coords"] = { 12.4, 31.6, BURNING_STEPPES },
					["maps"] = { FELWOOD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18802, 1 },	-- Shadowy Potion
					},
					["lvl"] = 60,
				}),
				q(7562, {	-- Mor'zul Bloodbringer
					["qgs"] = {
						6382,	-- Jubahl Corpseseeker <Demon Trainer>
						5815,	-- Kurgul <Demon Trainer>
						5520,	-- Spackle Thornberry <Demon Trainer>
						5753,	-- Martha Strain <Demon Trainer>
					},
					["coords"] = {
						{ 52.8, 6.0, IRONFORGE },
						{ 47.6, 46.8, ORGRIMMAR },
						{ 25.8, 77.6, STORMWIND_CITY },
						{ 85.8, 15.8, UNDERCITY },
					},
					["maps"] = {
						IRONFORGE,
						ORGRIMMAR,
						STORMWIND_CITY,
						UNDERCITY,
					},
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 60,
				}),
				q(3825, {	-- Ogre Head On A Stick = Party
					["qg"] = 9177,	-- Oralius
					["sourceQuest"] = 3824,	-- Gor'tesh the Brute Lord
					["coords"] = { 84.6, 68.8, BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11079, 1 },	-- Gor'tesh's Lopped Off Head
					},
					["lvl"] = 48,
					["g"] = {
						i(11867),	-- Maddening Gauntlets
						i(11868),	-- Choking Band
					},
				}),
				q(7563, {	-- Rage of Blood
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["sourceQuest"] = 7562,	-- Mor'zul Bloodbringer
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18590, 30 },	-- Raging Beast's Blood
					},
					["lvl"] = 60,
				}),
				q(4296, {	-- Tablet of the Seven
					["qg"] = 9536,	-- Maxwort Uberglint
					["coord"] = { 65.2, 23.8, BURNING_STEPPES },
					["cost"] = {
						{ "i", 11470, 1 },	-- Tablet Transcript
					},
					["lvl"] = 50,
				}),
				q(7627, {	-- Wheel of the Black March
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["sourceQuest"] = 7564,	-- Wildeyes
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 14344, 6 },	-- Large Brilliant Shard
						{ "i", 11370, 25 },	-- Dark Iron Ore
					},
					["lvl"] = 60,
				}),
				q(7564, {	-- Wildeyes
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["sourceQuest"] = 7563,	-- Rage of Blood
					["coords"] = { 12.6, 31.6, BURNING_STEPPES },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18591, 1 },	-- Case of Blood
					},
					["lvl"] = 60,
				}),
			}),
		}),
	}),
};