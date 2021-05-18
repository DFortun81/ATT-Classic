---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DUSTWALLOW_MARSH, {
			n(ZONEDROPS, {
				i(5959, {	-- Acidic Venom Sac
					["questID"] = 1322,	-- The Black Shield (3/5)
					["races"] = HORDE_ONLY,
					["crs"] = {
						4412,	-- Darkfang Creeper
						4411,	-- Darkfang Lurker
						4413,	-- Darkfang Spider
						4414,	-- Darkfang Venomspitter
						4415,	-- Giant Darkfang Spider
					},
				}),
				un(PHASE_FIVE, i(22094, {	-- Bloodkelp
					["questID"] = 8970,	-- I See Alcaz Island In Your Future...
					["crs"] = {
						4368,	-- Strashaz Myrmidon
						4366,	-- Strashaz Serpent Guard
						4371,	-- Strashaz Siren
						4370,	-- Strashaz Sorceress
						4364,	-- Strashaz Warrior
						16072,	-- Tidelord Rrurgaz
					},
				})),
				i(10822, {	-- Dark Whelpling
					["cr"] = 4324,	-- Searing Whelp
				}),
				i(5883, {	-- Forked Mudrock Tongue
					["questID"] = 1204,	-- Mudrock Soup and Bugs
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4399,	-- Mudrock Borer
						4398,	-- Mudrock Burrower
						4400,	-- Mudrock Snapjaw
						4397,	-- Mudrock Spikeshell
						4396,	-- Mudrock Tortoise
					},
				}),
				i(5942, {	-- Jeweled Pendant
					["questID"] = 1261,	-- Marg Speaks
					["races"] = HORDE_ONLY,
					["crs"] = {
						14236,	-- Lord Angler
						4401,	-- Muckshell Clacker
						4403,	-- Muckshell Pincer
						4405,	-- Muckshell Razorclaw
						4404,	-- Muckshell Scrabbler
						4402,	-- Muckshell Snapclaw
					},
				}),
				i(5847, {	-- Mirefin Head
					["questID"] = 1177,	-- Hungry!
					["crs"] = {
						14230,	-- Burgle Eye
						4362,	-- Mirefin Coastrunner
						4361,	-- Mirefin Muckdweller
						4359,	-- Mirefin Murloc
						4363,	-- Mirefin Oracle
						4358,	-- Mirefin Puddlejumper
						4360,	-- Mirefin Warrior
					},
				}),
				i(5775, {	-- Pattern: Black Silk Pack
					["cr"] = 4834,	-- Theramore Infiltrator
				}),
				i(12718, {	-- Plans: Runic Breastplate
					["crs"] = {
						4368,	-- Strashaz Myrmidon
						16072,	-- Tidelord Rrurgaz
					},
				}),
				i(12714, {	-- Plans: Runic Plate Helm
					["cr"] = 4364,	-- Strashaz Warrior
				}),
				i(12706, {	-- Plans: Runic Plate Shoulders
					["cr"] = 4366,	-- Strashaz Serpent Guard
				}),
				i(20766, {	-- Slimy Bag
					["crs"] = {
						4393,	-- Acidic Swamp Ooze
						4392,	-- Corrosive Swamp Ooze
						4391,	-- Swamp Ooze
					},
				}),
				i(5841, {	-- Searing Heart
					["questID"] = 1169,	-- Identifying the Brood
					["races"] = HORDE_ONLY,
					["crs"] = {
						4323,	-- Searing Hatchling
						4324,	-- Searing Whelp
					},
				}),
				i(5840, {	-- Searing Tongue
					["questID"] = 1169,	-- Identifying the Brood
					["races"] = HORDE_ONLY,
					["crs"] = {
						4323,	-- Searing Hatchling
						4324,	-- Searing Whelp
					},
				}),
				i(33126, {	-- Thresher Oil
					["cr"] = 4388,	-- Young Murk Thresher
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
				}),
				i(33039, {	-- Tool Kit
					["cr"] = 23589,	-- Defias Rummager
					["coord"] = { 64.9, 26.9, DUSTWALLOW_MARSH },
					["u"] = TBC_PHASE_ONE,
				}),
				i(5884, {	-- Unpopped Darkmist Eye
					["questID"] = 1206,	-- Jarl Needs Eyes
					["crs"] = {
						4377,	-- Darkmist Lurker
						4378,	-- Darkmist Recluse
						4379,	-- Darkmist Silkspinner
						4376,	-- Darkmist Spider
						4380,	-- Darkmist Widow
					},
				}),
			}),
		}),
	}),
};