---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(WINTERSPRING, {
			n(QUESTS, {
				q(6605, {	-- A Strange One
					["qg"] = 11755,	-- Harlo Wigglesworth
					["coord"] = { 61, 38.4, WINTERSPRING },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 49,
				}),
				q(8798, {	-- A Yeti of Your Own
					["requireSkill"] = ENGINEERING,
					["lvl"] = 55,
					["qg"] = 10305,	-- Umi Rumplesnicker
					["sourceQuest"] = 5163,	-- Are We There, Yeti? (3/3)
					["g"] = {
						{
							["recipeID"] = 26011,	-- Tranquil Mechanical Yeti
							["requireSkill"] = ENGINEERING,
						},
					},
				}),
				q(3783, {	-- Are We There, Yeti? (1/3)
					["lvl"] = 52,
					["qg"] = 10305,	-- Umi Rumplesnicker
				}),
				q(977, {	-- Are We There, Yeti? (2/3)
					["lvl"] = 52,
					["qg"] = 10305,	-- Umi Rumplesnicker
					["sourceQuest"] = 3783,	-- Are We There, Yeti? (1/3)
				}),
				q(5163, {	-- Are We There, Yeti? (3/3)
					["lvl"] = 52,
					["qg"] = 10305,	-- Umi Rumplesnicker
					["sourceQuest"] = 977,	-- Are We There, Yeti? (2/3)
					["g"] = {
						i(15778),	-- Mechanical Yeti
					},
				}),
				q(8469, {	-- Beads for Salfa
					["qg"] = 11556,	-- Salfa
					["sourceQuest"] = 8464,	-- Winterfall Activity
					["coord"] = { 27.8, 34.6, WINTERSPRING },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21383, 5 },	-- Winterfall Spirit Beads
					},
					["lvl"] = 50,
				}),
				q(5055, {	-- Brumeran of the Chillwind
					["qg"] = 10303,	-- Storm Shadowhoof
					["sourceQuest"] = 5054,	-- Ursius of the Shardtooth
					-- #if CLASSIC
					["races"] = HORDE_ONLY,
					-- #endif
					["lvl"] = 53,
				}),
				q(975, {	-- Cache of Mau'ari
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["sourceQuest"] = 969,	-- Luck Be With You
					["lvl"] = 55,
					["g"] = {
						i(12384),	-- Cache of Mau'ari
					},
				}),
				q(4804, {	-- Chillwind E'ko
					["lvl"] = 55,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["g"] = {
						i(12457),	-- Juju Chill
					},
				}),
				q(4809, {	-- Chillwind Horns
					["qg"] = 10468,	-- Felnok Steelspring
					["sourceQuest"] = 4808,	-- Felnok Steelspring
					["lvl"] = 50,
				}),
				q(6030, {	-- Duke Nicholas Zverenhoff
					["lvl"] = 50,
					["qg"] = 10431,	-- Gregor Greystone
				}),
				q(6604, {	-- Enraged Wildkin (1/4)
					["qg"] = 11755,	-- Harlo Wigglesworth
					["coord"] = { 61, 38.4, WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 53,
				}),
				q(4861, {	-- Enraged Wildkin (2/4)
					["qg"] = 10301,	-- Jaron Stoneshaper
					["sourceQuest"] = 6604,	-- Enraged Wildkin (1/4)
					["coord"] = { 52, 30.4, WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
				}),
				q(4863, {	-- Enraged Wildkin (3/4)
					["provider"] = { "o", 175587 },	-- Damaged Crate
					["sourceQuest"] = 4861,	-- Enraged Wildkin (2/4)
					["coord"] = { 59, 59.7, WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
				}),
				q(4864, {	-- Enraged Wildkin (4/4)
					["provider"] = { "o", 175586 },	-- Jaron's Wagon
					["sourceQuest"] = 4863,	-- Enraged Wildkin (3/4)
					["coord"] = { 61.4, 60.6, WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12525, 1 },	-- Jaron's Supplies
						{ "i", 12524, 1 },	-- Blue-feathered Amulet
					},
					["lvl"] = 53,
					["groups"] = {
						{
							["itemID"] = 12525,	-- Jaron's Supplies
							["questID"] = 4864,	-- Enraged Wildkin (4/4)
							["coord"] = { 61.4, 60.7, WINTERSPRING },
						},
					},
				}),
				q(5084, {	-- Falling to Corruption
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5083,	-- Winterfall Firewater
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["maps"] = { FELWOOD },
					["lvl"] = 52,
				}),
				q(4806, {	-- Frostmaul E'ko
					["lvl"] = 55,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["g"] = {
						i(12460),	-- Juju Might
					},
				}),
				q(4801, {	-- Frostsaber E'ko
					["lvl"] = 55,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["g"] = {
						i(12450),	-- Juju Flurry
					},
				}),
				q(4970, {	-- Frostsaber Provisions
					["qg"] = 10618,	-- Rivern Frostwind
					["minReputation"] = { 589, NEUTRAL },	-- Wintersaber Trainers, Neutral.
					["maxReputation"] = { 589, EXALTED },	-- Wintersaber Trainers, Exalted.
					["cost"] = {
						{ "i", 12623, 5 },	-- Chillwind Meat
						{ "i", 12622, 5 },	-- Shardtooth Meat
					},
					["repeatable"] = true,
					["lvl"] = 58,
				}),
				q(4901, {	-- Guardians of the Altar
					["qg"] = 10300,	-- Ranshalla
					["sourceQuest"] = 979,	-- Find Ranshalla
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 52,
				}),
				q(4882, {	-- Guarding Secrets (1/2)
					["provider"] = { "i", 12558 },	-- Blue-feathered Necklace
					["maps"] = { FELWOOD },
					["crs"] = {
						7454,	-- Berserk Owlbeast
						7452,	-- Crazed Owlbeast
						7453,	-- Moontouched Owlbeast
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
				}),
				q(5121, {	-- High Chief Winterfall
					["lvl"] = 52,
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5087,	-- Winterfall Runners
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["g"] = {
						i(15784),	-- Crystal Breeze Mantle
						i(15786),	-- Fernpulse Jerkin
						i(15787),	-- Willow Band Hauberk
					},
				}),
				q(4805, {	-- Ice Thistle E'ko
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["lvl"] = 55,
					["g"] = {
						i(12459),	-- Juju Escape
					},
				}),
				q(969, {	-- Luck Be With You
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["lvl"] = 55,
				}),
				q(9266, {	-- Making Amends
					["qg"] = 16416,	-- Bronn Fitzwrench
					["coord"] = { 59.8, 39.7, WINTERSPRING },
					["maxReputation"] = { 577, NEUTRAL },	-- Everlook, must be less than Neutral
					["cost"] = {
						{ "i", 14047, 40 },	-- Runecloth
						{ "i", 3857, 4 },	-- Coal
					},
					["repeatable"] = true,
					["lvl"] = 40,
				}),
				q(5057, {	-- Past Endeavors
					["qg"] = 10303,	-- Storm Shadowhoof
					["sourceQuest"] = 5056,	-- Shy-Rotam
					-- #if CLASSIC
					["races"] = HORDE_ONLY,
					-- #endif
					["lvl"] = 53,
					["g"] = {
						i(15704),	-- Hunter's Insignia Medal
					},
				}),
				q(5981, {	-- Rampaging Giants
					["qg"] = 10618,	-- Rivern Frostwind
					["minReputation"] = { 589, HONORED },	-- Wintersaber Trainers, Honored.
					["maxReputation"] = { 589, EXALTED },	-- Wintersaber Trainers, Exalted.
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 58,
				}),
				q(5252, {	-- Remorseful Highborne
					["qg"] = 10684,	-- Remorseful Highborne
					["sourceQuest"] = 5248,	-- Tormented By the Past
					["coord"] = { 56.2, 44.4, WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13347, 1 },	-- Crystal of Zin-Malor (Provided)
					},
					["lvl"] = 53,
				}),
				q(4810, {	-- Return to Tinkee
					["qg"] = 10468,	-- Felnok Steelspring
					["sourceQuest"] = 4809,	-- Chillwind Horns
					["cost"] = {
						{ "i", 12445, 1 },	-- Felnok's Package
					},
					["lvl"] = 50,
					["g"] = {
						i(15862),	-- Blitzcleaver
						i(15863),	-- Grave Scepter
					},
				}),
				q(4803, {	-- Shardtooth E'ko
					["lvl"] = 55,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["g"] = {
						i(12455),	-- Juju Ember
					},
				}),
				q(5056, {	-- Shy-Rotam
					["qg"] = 10303,	-- Storm Shadowhoof
					["sourceQuest"] = 5055,	-- Brumeran of the Chillwind
					["cr"] = 10737,	-- Shy-Rotam
					-- #if CLASSIC
					["races"] = HORDE_ONLY,
					-- #endif
					["lvl"] = 53,
					["g"] = {
						i(15783),	-- Beasthunter Dagger
						i(15782),	-- Beaststalker Blade
						i(12733, {	-- Sacred Frostsaber Meat
							["questID"] = 5056,	-- Shy-Rotam
							["coord"] = { 49.8, 9.8, WINTERSPRING },
							["crs"] = {
								7431,	-- Frostsaber
								7430,	-- Frostsaber Cub
								7433,	-- Frostsaber Huntress
								7434,	-- Frostsaber Pride Watcher
								7432,	-- Frostsaber Stalker
							},
						}),
					},
				}),
				q(5601, {	-- Sister Pamela
					["qg"] = 11629,	-- Jessica Redpath
					["coord"] = { 61.2, 39, WINTERSPRING },
					["lvl"] = 50,
				}),
				q(4842, {	-- Strange Sources
					["lvl"] = 51,
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 980,	-- The New Springs
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["g"] = {
						i(15789),	-- Deep River Cloak
					},
				}),
				q(5253, {	-- The Crystal of Zin-Malor
					["qg"] = 11079,	-- Wynd Nightchaser
					["sourceQuest"] = 5252,	-- Remorseful Highborne
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13347, 1 },	-- Crystal of Zin-Malor (Provided)
					},
					["lvl"] = 53,
					["g"] = {
						i(15791),	-- Turquoise Sash
						i(15792),	-- Plow Wood Spaulders
						i(15795),	-- Emerald Mist Gauntlets
					},
				}),
				q(6028, {	-- The Everlook Report (A)
					["qg"] = 10431,	-- Gregor Greystone
					["coord"] = { 61.2, 38.8, WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 15788, 1 },	-- Everlook Report
					},
					["lvl"] = 50,
				}),
				q(6029, {	-- The Everlook Report (H)
					["qg"] = 10431,	-- Gregor Greystone
					["coord"] = { 61.2, 38.8, WINTERSPRING },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15788, 1 },	-- Everlook Report
					},
					["lvl"] = 50,
				}),
				q(5123, {	-- The Final Piece
					["provider"] = { "i", 12842 },	-- Crudely-Written Log
					["sourceQuest"] = 5121,	-- High Chief Winterfall
					["coord"] = { 69.6, 38.2, WINTERSPRING },
					["cr"] = 10738,	-- High Chief Winterfall
					["lvl"] = 52,
				}),
				q(5244, {	-- The Ruins of Kel'Theril
					["lvl"] = 53,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11079,	-- Wynd Nightchaser
					["sourceQuests"] = {
						5250,	-- Starfall
						5249,	-- To Winterspring!
					},
				}),
				q(5082, {	-- Threat of the Winterfall
					["qg"] = 9298,	-- Donova Snowden
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["lvl"] = 52,
				}),
				q(5086, {	-- Toxic Horrors
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5085,	-- Mystery Goo
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["maps"] = { FELWOOD },
					["cost"] = {
						{ "i", 12822, 3 },	-- Toxic Horror Droplet
					},
					["lvl"] = 52,
				}),
				q(6603, {	-- Trouble in Winterspring!
					["lvl"] = 52,
					["qg"] = 11754,	-- Meggi Peppinrocker
					["isBreadcrumb"] = true,
				}),
				q(5245, {	-- Troubled Spirits of Kel'Theril
					["qg"] = 10301,	-- Jaron Stoneshaper
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12891, 1 },	-- Jaron's Pick
						{ "i", 12896, 1 },	-- First Relic Fragment
						{ "i", 12897, 1 },	-- Second Relic Fragment
						{ "i", 12898, 1 },	-- Third Relic Fragment
						{ "i", 12899, 1 },	-- Fourth Relic Fragment
					},
					["lvl"] = 49,
				}),
				q(5054, {	-- Ursius of the Shardtooth
					["qg"] = 10303,	-- Storm Shadowhoof
					-- #if CLASSIC
					["races"] = HORDE_ONLY,
					-- #endif
					["lvl"] = 53,
				}),
				q(4807, {	-- Wildkin E'ko
					["lvl"] = 55,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["g"] = {
						i(12458),	-- Juju Guile
					},
				}),
				q(4802, {	-- Winterfall E'ko
					["lvl"] = 55,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["g"] = {
						i(12451),	-- Juju Power
					},
				}),
				q(8464, {	-- Winterfall Activity
					["lvl"] = 45,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11556,	-- Salfa
					["g"] = {
						i(21318),	-- Earth Warder's Gloves
						i(21319),	-- Gloves of the Pathfinder
						i(21320),	-- Vest of the Den Watcher
						i(21322),	-- Ursa's Embrace
					},
				}),
				q(5083, {	-- Winterfall Firewater
					["lvl"] = 52,
					["provider"] = { "i", 12771 },	-- Empty Firewater Flask
				}),
				q(5201, {	-- Winterfall Intrusion
					["qg"] = 10618,	-- Rivern Frostwind
					["minReputation"] = { 589, NEUTRAL + 1500 },	-- Wintersaber Trainers, Neutral + 1500.
					["maxReputation"] = { 589, EXALTED },	-- Wintersaber Trainers, Exalted.
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 58,
				}),
				q(8471, {	-- Winterfall Ritual Totem
					["provider"] = { "i", 20742 },	-- Winterfall Ritual Totem
					["minReputation"] = { 576, NEUTRAL },	-- Timbermaw Hold
					["crs"] = {
						10738,	-- High Chief Winterfall
						7440,	-- Winterfall Den Watcher
						7442,	-- Winterfall Pathfinder
						10916,	-- Winterfall Runner
						7439,	-- Winterfall Shaman
						7441,	-- Winterfall Totemic
						7438,	-- Winterfall Ursa
					},
					["lvl"] = 50,
				}),
				q(5087, {	-- Winterfall Runners
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5086,	-- Toxic Horrors
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["cost"] = {
						{ "i", 12829, 1 },	-- Winterfall Crate
					},
					["lvl"] = 52,
					["groups"] = {
						{
							["itemID"] = 12829,	-- Winterfall Crate
							["questID"] = 5087,	-- Winterfall Runners
							["cr"] = 10916,	-- Winterfall Runner
							["coord"] = { 28.4, 37.8, WINTERSPRING },
						},
					},
				}),
				q(5128, {	-- Words of the High Chief
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5123,	-- The Final Piece
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["maps"] = { FELWOOD },
					["lvl"] = 52,
					["groups"] = {
						i(13158),	-- Words of the High Chief
					},
				}),
			}),
		}),
	}),
};