---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(WINTERSPRING, {
			n(QUESTS, {
				q(6606, {	-- A Little Luck
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
					["u"] = 1,	-- Never Available
				}),
				q(6605, {	-- A Strange One
					["lvl"] = 49,
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["qg"] = 11755,	-- Harlo Wigglesworth
				}),
				q(8798, {	-- A Yeti of Your Own
					["requireSkill"] = 202,	-- Engineering
					["lvl"] = 55,
					["qg"] = 10305,	-- Umi Rumplesnicker
					["sourceQuest"] = 5163,	-- Are We There, Yeti? (3/3)
					["g"] = {
						{
							["recipeID"] = 26011,	-- Tranquil Mechanical Yeti
							["requireSkill"] = 202,	-- Engineering
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
					["lvl"] = 50,
					["qg"] = 11556,	-- Salfa
					["repeatable"] = true,
					["sourceQuest"] = 8464,	-- Winterfall Activity
				}),
				q(5055, {	-- Brumeran of the Chillwind
					["lvl"] = 53,
					["races"] = HORDE_ONLY,
					["qg"] = 10303,	-- Storm Shadowhoof
					["sourceQuest"] = 5054,	-- Ursius of the Shardtooth
				}),
				q(975, {	-- Cache of Mau'ari
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["sourceQuest"] = 969,	-- Luck Be With You
					["g"] = {
						i(12384),	-- Cache of Mau'ari
					},
				}),
				q(4804, {	-- Chillwind E'ko
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
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
					["lvl"] = 53,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11755,	-- Harlo Wigglesworth
					["isBreadcrumb"] = true,
				}),
				q(4861, {	-- Enraged Wildkin (2/4)
					["lvl"] = 53,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10301,	-- Jaron Stoneshaper
				}),
				q(4863, {	-- Enraged Wildkin (3/4)
					["lvl"] = 53,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 175587 },	-- Damaged Crate
					["sourceQuest"] = 4861,	-- Enraged Wildkin (2/4)
				}),
				q(4864, {	-- Enraged Wildkin (4/4)
					["lvl"] = 53,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 175586 },	-- Jaron's Wagon
					["sourceQuest"] = 4863,	-- Enraged Wildkin (3/4)
				}),
				q(5084, {	-- Falling to Corruption
					["lvl"] = 52,
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5083,	-- Winterfall Firewater
				}),
				q(4806, {	-- Frostmaul E'ko
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["g"] = {
						i(12460),	-- Juju Might
					},
				}),
				q(4801, {	-- Frostsaber E'ko
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["g"] = {
						i(12450),	-- Juju Flurry
					},
				}),
				q(4970, {	-- Frostsaber Provisions
					["lvl"] = 58,
					["qg"] = 10618,	-- Rivern Frostwind
					["repeatable"] = true,
				}),
				q(4901, {	-- Guardians of the Altar
					["lvl"] = 52,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10300,	-- Ranshalla
					["sourceQuest"] = 979,	-- Find Ranshalla
				}),
				q(4882, {	-- Guarding Secrets
					["lvl"] = 52,
					["provider"] = { "i", 12558 },	-- Blue-feathered Necklace
					["races"] = HORDE_ONLY,
				}),
				q(5121, {	-- High Chief Winterfall
					["lvl"] = 52,
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5087,	-- Winterfall Runners
					["g"] = {
						i(15784),	-- Crystal Breeze Mantle
						i(15786),	-- Fernpulse Jerkin
						i(15787),	-- Willow Band Hauberk
					},
				}),
				q(4805, {	-- Ice Thistle E'ko
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["g"] = {
						i(12459),	-- Juju Escape
					},
				}),
				q(969, {	-- Luck Be With You
					["lvl"] = 55,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
				}),
				q(5057, {	-- Past Endeavors
					["lvl"] = 53,
					["races"] = HORDE_ONLY,
					["qg"] = 10303,	-- Storm Shadowhoof
					["sourceQuest"] = 5056,	-- Shy-Rotam
					["g"] = {
						i(15704),	-- Hunter's Insignia Medal
					},
				}),
				q(5981, {	-- Rampaging Giants
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10618,	-- Rivern Frostwind
					["repeatable"] = true,
				}),
				q(5252, {	-- Remorseful Highborne
					["lvl"] = 53,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10684, -- Remorseful Highborne
					["sourceQuest"] = 5248,	-- Tormented By the Past
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
					["races"] = HORDE_ONLY,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["g"] = {
						i(12455),	-- Juju Ember
					},
				}),
				q(5056, {	-- Shy-Rotam
					["lvl"] = 53,
					["races"] = HORDE_ONLY,
					["qg"] = 10303,	-- Storm Shadowhoof
					["sourceQuest"] = 5055,	-- Brumeran of the Chillwind
					["g"] = {
						i(15783),	-- Beasthunter Dagger
						i(15782),	-- Beaststalker Blade
						i(12733),	-- Sacred Frostsaber Meat
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
					["g"] = {
						i(15789),	-- Deep River Cloak
					},
				}),
				q(5253, {	-- The Crystal of Zin-Malor
					["lvl"] = 53,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11079, -- Wynd Nightchaser
					["sourceQuest"] = 5252,	-- Remorseful Highborne
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
					["lvl"] = 52,
					["provider"] = { "i", 12842 },	-- Crudely-Written Log
					["sourceQuest"] = 5121,	-- High Chief Winterfall
				}),
				q(5244, {	-- The Ruins of Kel'Theril
					["lvl"] = 53,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11079,	-- Wynd Nightchaser
				}),
				q(5082, {	-- Threat of the Winterfall
					["lvl"] = 52,
					["qg"] = 9298,	-- Donova Snowden
				}),
				q(5086, {	-- Toxic Horrors
					["lvl"] = 52,
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5085,	-- Mystery Goo
				}),
				q(6603, {	-- Trouble in Winterspring!
					["lvl"] = 52,
					["qg"] = 11754,	-- Meggi Peppinrocker
					["isBreadcrumb"] = true,
				}),
				q(5245, {	-- Troubled Spirits of Kel'Theril
					["lvl"] = 49,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10301,	-- Jaron Stoneshaper
				}),
				q(5054, {	-- Ursius of the Shardtooth
					["lvl"] = 53,
					["races"] = HORDE_ONLY,
					["qg"] = 10303,	-- Storm Shadowhoof
				}),
				q(4807, {	-- Wildkin E'ko
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["g"] = {
						i(12458),	-- Juju Guile
					},
				}),
				q(4802, {	-- Winterfall E'ko
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
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
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10618,	-- Rivern Frostwind
					["repeatable"] = true,
				}),
				q(5087, {	-- Winterfall Runners
					["lvl"] = 52,
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5086,	-- Toxic Horrors
				}),
				q(5128, {	-- Words of the High Chief
					["lvl"] = 52,
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5123,	-- The Final Piece
				}),
			}),
		}),
	}),
};