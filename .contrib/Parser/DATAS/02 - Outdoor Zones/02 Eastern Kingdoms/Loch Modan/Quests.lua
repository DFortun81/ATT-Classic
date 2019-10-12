---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(LOCH_MODAN, {	-- Loch Modan
			n(-17, {	-- Quests
				q(250, {	-- A Dark Threat Looms (1/7)
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1093,	-- Chief Engineer Hinderweir VII
				}),
				q(199, {	-- A Dark Threat Looms (2/7)
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 257 },	-- Suspicious Barrel
					["sourceQuest"] = 250,	-- A Dark Threat Looms (1/7)
				}),
				q(161, {	-- A Dark Threat Looms (3/7)
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1093,	-- Chief Engineer Hinderweir VII
					["sourceQuest"] = 199,	-- A Dark Threat Looms (2/7)
				}),
				q(274, {	-- A Dark Threat Looms (4/7)
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1073,	-- Ashlan Stonesmirk
					["sourceQuest"] = 161,	-- A Dark Threat Looms (3/7)
				}),
				q(278, {	-- A Dark Threat Looms (5/7)
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1093,	-- Chief Engineer Hinderweir VII
					["sourceQuest"] = 274,	-- A Dark Threat Looms (4/7)
				}),
				q(280, {	-- A Dark Threat Looms (6/7)
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1093,	-- Chief Engineer Hinderweir VII
					["sourceQuest"] = 278,	-- A Dark Threat Looms (5/7)
				}),
				q(283, {	-- A Dark Threat Looms (7/7)
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 1585 },	-- Explosive Charge
					["g"] = {
						i(2907),	-- Dwarven Tree Chopper
						i(2908),	-- Thornblade
					},
				}),
				q(257, {	-- A Hunter's Boast
					["lvl"] = 11,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1187,	-- Daryl the Youngling
					["g"] = {
						i(2903),	-- Daryl's Hunting Bow
						i(2904),	-- Daryl's Hunting Rifle
					},
				}),
				q(258, {	-- A Hunter's Challenge
					["lvl"] = 11,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1187,	-- Daryl the Youngling
					["sourceQuest"] = 257,	-- A Hunter's Boast
					["g"] = {
						i(859),	-- Fine Cloth Shirt
						i(3572),	-- Daryl's Shortsword
					},
				}),
				q(454, {	-- After the Ambush
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2057,	-- Huldar
					["sourceQuest"] = 273,	-- Resupplying the Excavation
				}),
				{
					["questID"] = 704,	-- Agmond's Fate
					["sourceQuest"] = 739,	-- Murdaloc
					["qg"] = 1344,	-- Prospector Ironband
					["coord"] = { 65.9, 65.6, LOCH_MODAN },
					["maps"] = { BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4610,	-- Carved Stone Urn
							["questID"] = 704,	-- Agmond's Fate
							["description"] = "Can be found in the outdoor section of Uldaman.",
						},
						i(4980),	-- Prospector Gloves
					},
				},
				q(2500, {	-- Badlands Reagent Run
					["qg"] = 1470,	-- Ghak Healtouch
					["cost"] = {
						{ "i", 7847, 5 },	-- Buzzard Gizzard
						{ "i", 7846, 10 },	-- Crag Coyote Fang
						{ "i", 7848, 5 },	-- Rock Elemental Shard
					},
					["coord"] = { 37.07, 49.38, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 36,
				}),
				q(2038, {	-- Bingles' Missing Supplies
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 6577,	-- Bingles Blastenheimer
					["sourceQuest"] = 2039,	-- Find Bingles
					["g"] = {
						i(12522),	-- Bingles' Flying Gloves
					},
				}),
				q(385, {	-- Crocolisk Hunting
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1154,	-- Marek Ironheart
					["g"] = {
						i(3678),	-- Recipe: Crocolisk Steak
						i(2240),	-- Rugged Cape
					},
				}),
				q(298, {	-- Excavation Progress Report
					["qg"] = 1344,	-- Prospector Ironband
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(307, {	-- Filthy Paws
					["qg"] = 1343,	-- Mountaineer Stormpike
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
					["g"] = {
						i(3166),	-- Ironheart Chain
						i(3161),	-- Robe of the Keeper
						i(3160),	-- Ironplate Buckler
					},
					["coord"] = { 24.7, 18.3, LOCH_MODAN },
					["description"] = "Enter the building at 23.3, 17.9 and go up the stairs to access Mountaineer Stormpike.",
				}),
				q(738, {	-- Find Agmond
					["qg"] = 1344,	-- Prospector Ironband
					["sourceQuest"] = 707,	-- Ironband Wants You!
					["coord"] = { 65.93, 65.62, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["g"] = {
						i(4982),	-- Ripped Prospector Belt
						i(2776),	-- Gold Ore
						i(1529),	-- Jade
					},
				}),
				q(297, {	-- Gathering Idols
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1345,	-- Magmar Fellhew
					["sourceQuest"] = 436,	-- Ironband's Excavation
					["g"] = {
						i(5241),	-- Dwarven Flamestick
						i(6186),	-- Trogg Slicer
						i(3154),	-- Thelsamar Axe
					},
				}),
				q(6387, {	-- Honor Students
					["lvl"] = 10,
					["races"] = {
						3,	-- Dwarf
						7,	-- Gnome
					},
					["qgs"] = {
						1681,	-- Brock Stoneseeker
						1699,	-- Gremlock Pilsnor
					},
					["description"] = "Enter the building at 37.2, 47.0 and go down the stairs to get to Brock Stoneseeker.",
				}),
				q(224, {	-- In Defense of the King's Lands (1/4)
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1089,	-- Mountaineer Cobbleflint
					["g"] = {
						i(414),	-- Dalaran Sharp
					},
				}),
				q(237, {	-- In Defense of the King's Lands (2/4)
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1091,	-- Mountaineer Gravelgaw
					["sourceQuest"] = 224,	-- In Defense of the King's Lands (1/4)
					["g"] = {
						i(858),	-- Lesser Healing Potion
					},
				}),
				q(263, {	-- In Defense of the King's Lands (3/4)
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1090,	-- Mountaineer Wallbang
					["sourceQuest"] = 237,	-- In Defense of the King's Lands (2/4)
					["g"] = {
						i(2863),	-- Coarse Sharpening Stone
					},
				}),
				q(217, {	-- In Defense of the King's Lands (4/4)
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1092,	-- Captain Rugelfuss
					["sourceQuest"] = 263,	-- In Defense of the King's Lands (3/4)
					["g"] = {
						i(1436),	-- Frontier Britches
						i(6187),	-- Dwarven Defender
						i(1832),	-- Lucky Trousers
					},
				}),
				q(436, {	-- Ironband's Excavation
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1105,	-- Jern Hornhelm
					["coord"] = { 37.2, 47.4, LOCH_MODAN },
					["description"] = "Enter the building at 37.2, 47.0 and go down the stairs to get to Jern Hornhelm.",
				}),
				q(255, {	-- Mercenaries
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1139,	-- Magistrate Bluntnose
					["coord"] = { 34.6, 44.5, LOCH_MODAN },
				}),
				q(1339, {	-- Mountaineer Stormpike's Task
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1340,	-- Mountaineer Kadrell
					["isBreadcrumb"] = true,
				}),
				q(3182, {	-- Proof of Deed
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3836,	-- Mountaineer Pebblebitty
					["sourceQuest"] = 3181,	-- The Horn of the Beast
				}),
				q(309, {	-- Protecting the Shipment
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qgs"] = {
						1379,	-- Miran
						2057,	-- Huldar
					},
					["sourceQuest"] = 454,	-- After the Ambush
					["g"] = {
						i(3217),	-- Foreman Belt
						i(6188),	-- Mud Stompers
					},
				}),
				q(416, {	-- Rat Catching
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1340,	-- Mountaineer Kadrell
					["g"] = {
						i(3158),	-- Burnt Hide Bracers
						i(860),	-- Cavalier's Boots
					},
				}),
				q(301, {	-- Report to Ironforge
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1105,	-- Jern Hornhelm
					["sourceQuest"] = 298,	-- Excavation Progress Report
				}),
				q(468, {	-- Report to Mountaineer Rockgar
					["lvl"] = 19,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1340,	-- Mountaineer Kadrell
					["isBreadcrumb"] = true,
				}),
				q(273, {	-- Resupplying the Excavation
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1105,	-- Jern Hornhelm
					["sourceQuest"] = 302,	-- Powder to Ironband
				}),
				q(6391, {	-- Ride to Ironforge
					["lvl"] = 10,
					["races"] = {
						3,	-- Dwarf
						7,	-- Gnome
					},
					["sourceQuest"] = 6387,	-- Honor Students
					["qg"] = 1572,	-- Thorgrum Borrelson
					["coord"] = { 33.9, 50.9, LOCH_MODAN },
				}),
				q(912, {	-- Stonesplinter Trogg Disguise
					["lvl"] = 10,
					["g"] = {
						i(5131),	-- Knowledge: Stonesplinter Disguise
					},
					["u"] = 1, -- Never Available
				}),
				q(1338, {	-- Stormpike's Order
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1343,	-- Mountaineer Stormpike
					["coord"] = { 24.7, 18.3, LOCH_MODAN },
					["description"] = "Enter the building at 23.3, 17.9 and go up the stairs to access Mountaineer Stormpike.",
				}),
				q(455, {	-- The Algaz Gauntlet
					["lvl"] = 19,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1342,	-- Mountaineer Rockgar
					["coord"] = { 25.5, 10.5, LOCH_MODAN },
					["sourceQuest"] = 468,	-- Report to Mountaineer Rockgar
				}),
				q(267, {	-- The Trogg Threat
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1092,	-- Captain Rugelfuss
				}),
				q(418, {	-- Thelsamar Blood Sausages
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1963,	-- Vidra Hearthstove
					["g"] = {
						i(3220),	-- Blood Sausage
						i(3679),	-- Recipe: Blood Sausage
					},
					["coord"] = { 34.8, 49.3, LOCH_MODAN },
					["description"] = "Vidra Hearthstove is behind the bar on the first floor of the Stoutlager Inn.",
				}),
				q(17, {	-- Uldaman Reagent Run
					["sourceQuest"] = 2500,	-- Badlands Reagent Run
					["qg"] = 1470,	-- Ghak Healtouch
					["cost"] = {
						{ "i", 8047, 12 },	-- Magenta Fungus Cap
					},
					["coord"] = { 37.07, 49.38, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(271, {	-- Vyrin's Revenge (1/2)
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1156,	-- Vyrin Swiftwind
					["sourceQuest"] = 258,	-- A Hunter's Challenge
				}),
				q(531, {	-- Vyrin's Revenge (2/2)
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1187,	-- Daryl the Youngling
					["sourceQuest"] = 271,	-- Vyrin's Revenge (1/2)
					["g"] = {
						i(3574),	-- Hunting Ammo Sack
						i(3573),	-- Hunting Quiver
					},
				}),
				q(256, {	-- WANTED: Chok'sul
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 256 },	-- WANTED
					["g"] = {
						i(6189),	-- Durable Chain Shoulders
						i(6191),	-- Kimbra Boots
						i(1449),	-- Minor Channeling Ring
					},
				}),
			}),
		}),
	}),
};
