---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(LOCH_MODAN, {
			n(QUESTS, {
				q(250, {	-- A Dark Threat Looms (1/7)
					["qg"] = 1093,	-- Chief Engineer Hinderweir VII
					["coord"] = { 46, 13.6, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(199, {	-- A Dark Threat Looms (2/7)
					["provider"] = { "o", 257 },	-- Suspicious Barrel
					["sourceQuest"] = 250,	-- A Dark Threat Looms (1/7)
					["coord"] = { 56.1, 13.3, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2563, 1 },	-- Strange Smelling Powder
					},
					["lvl"] = 16,
				}),
				q(161, {	-- A Dark Threat Looms (3/7)
					["qg"] = 1093,	-- Chief Engineer Hinderweir VII
					["sourceQuest"] = 199,	-- A Dark Threat Looms (2/7)
					["coord"] = { 46, 13.6, LOCH_MODAN },
					["maps"] = { WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2563, 1 },	-- Strange Smelling Powder
					},
					["lvl"] = 16,
				}),
				q(274, {	-- A Dark Threat Looms (4/7)
					["qg"] = 1073,	-- Ashlan Stonesmirk
					["sourceQuest"] = 161,	-- A Dark Threat Looms (3/7)
					["coord"] = { 50, 18.2, WETLANDS },
					["maps"] = { WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2609, 1 },	-- Disarming Colloid
					},
					["lvl"] = 16,
				}),
				q(278, {	-- A Dark Threat Looms (5/7)
					["qg"] = 1093,	-- Chief Engineer Hinderweir VII
					["sourceQuest"] = 274,	-- A Dark Threat Looms (4/7)
					["coord"] = { 46, 13.6, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2606, 1 },	-- Lurker Venom
						{ "i", 2607, 1 },	-- Mo'grosh Crystal
						{ "i", 2939, 1 },	-- Crocolisk Tear
					},
					["lvl"] = 16,
				}),
				q(280, {	-- A Dark Threat Looms (6/7)
					["qg"] = 1093,	-- Chief Engineer Hinderweir VII
					["sourceQuest"] = 278,	-- A Dark Threat Looms (5/7)
					["coord"] = { 46, 13.6, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2610, 1 },	-- Disarming Mixture
					},
					["lvl"] = 16,
				}),
				q(283, {	-- A Dark Threat Looms (7/7)
					["provider"] = { "o", 1585 },	-- Explosive Charge
					["coord"] = { 50.6, 14.4, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
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
				q(704, {	-- Agmond's Fate
					["qg"] = 1344,	-- Prospector Ironband
					["sourceQuest"] = 739,	-- Murdaloc
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
				}),
				q(2500, {	-- Badlands Reagent Run
					["qg"] = 1470,	-- Ghak Healtouch
					["coord"] = { 37.07, 49.38, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 7847, 5 },	-- Buzzard Gizzard
						{ "i", 7846, 10 },	-- Crag Coyote Fang
						{ "i", 7848, 5 },	-- Rock Elemental Shard
					},
					["lvl"] = 36,
				}),
				q(2038, {	-- Bingles' Missing Supplies
					["qg"] = 6577,	-- Bingles Blastenheimer
					["sourceQuest"] = 2039,	-- Find Bingles
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["g"] = {
						i(12522),	-- Bingles' Flying Gloves
					},
				}),
				q(385, {	-- Crocolisk Hunting
					["qg"] = 1154,	-- Marek Ironheart
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2924, 5 },	-- Crocolisk Meat
						{ "i", 2925, 6 },	-- Crocolisk Skin
					},
					["lvl"] = 10,
					["g"] = {
						i(3678),	-- Recipe: Crocolisk Steak
						i(2240),	-- Rugged Cape
					},
				}),
				q(298, {	-- Excavation Progress Report
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1344,	-- Prospector Ironband
					["coord"] = { 65.9, 65.6, LOCH_MODAN },
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
					["coord"] = { 64.9, 66.7, LOCH_MODAN },
				}),
				q(6387, {	-- Honor Students
					["qg"] = 1681,	-- Brock Stoneseeker
					["coord"] = { 37, 47.8, LOCH_MODAN },
					["races"] = { DWARF, GNOME },
					["cost"] = {
						{ "i", 16310, 1 },	-- Brock's List
					},
					["lvl"] = 10,
				}),
				q(224, {	-- In Defense of the King's Lands (1/4)
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1089,	-- Mountaineer Cobbleflint
					["coord"] = { 22.1, 73.2, LOCH_MODAN },
				}),
				q(237, {	-- In Defense of the King's Lands (2/4)
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1091,	-- Mountaineer Gravelgaw
					["sourceQuest"] = 224,	-- In Defense of the King's Lands (1/4)
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
					["isBreadcrumb"] = true,
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
				q(302, {	-- Powder to Ironband
					["qg"] = 1356,	-- Prospector Stormpike
					["sourceQuest"] = 301,	-- Report to Ironforge
					["coord"] = { 74.4, 12, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(3182, {	-- Proof of Deed
					["qg"] = 3836,	-- Mountaineer Pebblebitty
					["sourceQuest"] = 3181,	-- The Horn of the Beast
					["coord"] = { 18.2, 84.0, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10005, 1 },	-- Margol's Gigantic Horn
					},
					["lvl"] = 40,
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
					["qg"] = 1105,	-- Jern Hornhelm
					["sourceQuest"] = 298,	-- Excavation Progress Report
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2637, 1 },	-- Ironbrand's Progress Report
					},
					["lvl"] = 10,
				}),
				q(468, {	-- Report to Mountaineer Rockgar
					["qg"] = 1340,	-- Mountaineer Kadrell
					["coord"] = { 34.8, 47, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 19,
				}),
				q(273, {	-- Resupplying the Excavation
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1105,	-- Jern Hornhelm
					["sourceQuest"] = 302,	-- Powder to Ironband
				}),
				q(6391, {	-- Ride to Ironforge
					["qg"] = 1572,	-- Thorgrum Borrelson
					["sourceQuest"] = 6387,	-- Honor Students
					["coord"] = { 33.9, 50.9, LOCH_MODAN },
					["races"] = { DWARF, GNOME },
					["cost"] = {
						{ "i", 16310, 1 },	-- Brock's List
					},
					["lvl"] = 10,
				}),
				un(NEVER_IMPLEMENTED, q(912, {	-- Stonesplinter Trogg Disguise
					["lvl"] = 10,
					["g"] = {
						un(NEVER_IMPLEMENTED, i(5131)),	-- Knowledge: Stonesplinter Disguise
					},
				})),
				q(1338, {	-- Stormpike's Order
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1343,	-- Mountaineer Stormpike
					["coord"] = { 24.7, 18.3, LOCH_MODAN },
					["description"] = "Enter the building at 23.3, 17.9 and go up the stairs to access Mountaineer Stormpike.",
				}),
				q(455, {	-- The Algaz Gauntlet
					["qg"] = 1342,	-- Mountaineer Rockgar
					["sourceQuest"] = 468,	-- Report to Mountaineer Rockgar
					["coord"] = { 25.5, 10.5, LOCH_MODAN },
					["maps"] = { WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 19,
				}),
				q(267, {	-- The Trogg Threat
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1092,	-- Captain Rugelfuss
				}),
				q(418, {	-- Thelsamar Blood Sausages
					["qg"] = 1963,	-- Vidra Hearthstove
					["description"] = "Vidra Hearthstove is behind the bar on the first floor of the Stoutlager Inn.",
					["coord"] = { 34.8, 49.3, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3172, 3 },	-- Boar Intestines
						{ "i", 3173, 3 },	-- Bear Meat
						{ "i", 3174, 3 },	-- Spider Ichor
					},
					["lvl"] = 7,
					["g"] = {
						i(3220),	-- Blood Sausage
						i(3679),	-- Recipe: Blood Sausage
					},
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
					["qg"] = 1156,	-- Vyrin Swiftwind
					["sourceQuest"] = 258,	-- A Hunter's Challenge
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2713, 1 },	-- Ol' Sooty's Head
					},
					["lvl"] = 15,
					["g"] = {
						{
							["itemID"] = 2713,	-- Ol' Sooty's Head
							["questID"] = 271,	-- Vyrin's Revenge (1/2)
							["cr"] = 1225,	-- Ol' Sooty
							["coord"] = { 37.6, 62.6, LOCH_MODAN },
						},
					},
				}),
				q(531, {	-- Vyrin's Revenge (2/2)
					["qg"] = 1187,	-- Daryl the Youngling
					["sourceQuest"] = 271,	-- Vyrin's Revenge (1/2)
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2713, 1 },	-- Ol' Sooty's Head
					},
					["lvl"] = 15,
					["g"] = {
						i(3574),	-- Hunting Ammo Sack
						i(3573),	-- Hunting Quiver
					},
				}),
				q(256, {	-- WANTED: Chok'sul
					["provider"] = { "o", 256 },	-- WANTED
					["coord"] = { 37.2, 46.4, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["g"] = {
						{
							["itemID"] = 2561,	-- Chok'sul's Head
							["questID"] = 256,	-- WANTED: Chok'sul
							["cr"] = 1210,	-- Chok'sul
							["coord"] = { 79.6, 14.2, LOCH_MODAN },
						},
						i(6189),	-- Durable Chain Shoulders
						i(6191),	-- Kimbra Boots
						i(1449),	-- Minor Channeling Ring
					},
				}),
			}),
		}),
	}),
};