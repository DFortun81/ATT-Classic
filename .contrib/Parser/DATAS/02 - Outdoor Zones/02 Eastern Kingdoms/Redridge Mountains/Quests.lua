---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(REDRIDGE_MOUNTAINS, {
			n(QUESTS, {
				q(124, {	-- A Baying of Gnolls
					["qg"] = 415,	-- Verner Osgood
					["coord"] = { 31.0, 47.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
				}),
				q(129, {	-- A Free Lunch
					["qg"] = 379,	-- Darcy
					["coord"] = { 26.7, 44.3, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(94, {	-- A Watchful Eye
					["qg"] = 313,	-- Theocritus
					["coord"] = { 65.2, 69.8, ELWYNN_FOREST },
					["description"] = "This quests starts in Elwynn Forest. Go to the top of the tower located at 64.3, 68.9.",
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(2282, {	-- Alther's Mill
					["qg"] = 6966,	-- Lucius
					["sourceQuest"] = 2281,	-- Redridge Rendezvous
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 16,
					["g"] = {
						i(7907),	-- Certificate of Thievery
					},
				}),
				q(34, {	-- An Unwelcome Guest
					["qg"] = 342,	-- Martie Jainrose
					["coord"] = { 21.9, 46.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["g"] = {
						{
							["itemID"] = 3631,	-- Bellygrub's Tusk
							["questID"] = 34,	-- An Unwelcome Guest
							["cr"] = 345,	-- Bellygrub
							["coord"] = { 16.6, 49.8, REDRIDGE_MOUNTAINS },	
						},
						i(2562),	-- Bouquet of Scarlet Begonias
					},
				}),
				q(246, {	-- Assessing the Threat
					["qg"] = 1070,	-- Deputy Feldon
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
				}),
				q(128, {	-- Blackrock Bounty
					["qg"] = 903,	-- Guard Howe
					["coord"] = { 31.5, 58.0, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(20, {	-- Blackrock Menace
					["qg"] = 382,	-- Marshal Marris
					["coord"] = { 33.4, 49.0, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3014, 10 },	-- Battleworn Axe
					},
					["lvl"] = 18,
				}),
				q(131, {	-- Delivering Daffodils
					["qg"] = 342,	-- Martie Jainrose
					["coord"] = { 21.9, 46.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["g"] = {
						i(1326),	-- Sauteed Sunfish
					},
				}),
				q(116, {	-- Dry Times
					["qg"] = 346,	-- Barkeep Daniels
					["coord"] = { 26.5, 44.2, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["g"] = {
						i(1270),	-- Finely Woven Cloak
						i(10456),	-- A Bulging Coin Purse
					},
				}),
				q(244, {	-- Encroaching Gnolls
					["qg"] = 464,	-- Guard Parker
					["coord"] = { 17.3, 69.5, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
				}),
				q(3741, {	-- Hilary's Necklace
					["qg"] = 8965,	-- Shawn
					["coord"] = { 29.3, 53.4, REDRIDGE_MOUNTAINS },
					["lvl"] = 12,
				}),
				q(126, {	-- Howling in the Hills
					["qg"] = 415,	-- Verner Osgood
					["coord"] = { 31.0, 47.4, REDRIDGE_MOUNTAINS },	
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3614, 1},	-- Yowler's Paw
					},
					["lvl"] = 15,
					["g"] = {
						{
							["itemID"] = 3614,	-- Yowler's Paw
							["questID"] = 126,	-- Howling in the Hills
							["cr"] = 518,	-- Yowler
							["coord"] = { 28.8, 23.2, REDRIDGE_MOUNTAINS },	
						},
						i(1319),	-- Ring of Iron Will
						i(2910),	-- Gold Militia Boots
					},				
				}),
				q(248, {	-- Looking Further
					["provider"] = { "o", 31 },	-- Old Lion Statue
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(146, {	-- Messenger to Darkshire
					["qg"] = 263,	-- Lord Ello Ebonlocke
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(145, {	-- Messenger to Darkshire
					["qg"] = 344,	-- Magistrate Solomon
					["coord"] = { 30.0, 44.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(121, {	-- Messenger to Stormwind
					["qg"] = 466,	-- General Marcus Jonathan
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(120, {	-- Messenger to Stormwind
					["qg"] = 344,	-- Magistrate Solomon
					["coord"] = { 30.0, 44.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(143, {	-- Messenger to Westfall
					["qg"] = 344,	-- Magistrate Solomon
					["coord"] = { 30.0, 44.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1407, 1 },	-- Solomon's Plea to Westfall
					},
					["lvl"] = 14,
				}),
				q(144, {	-- Messenger to Westfall
					["qg"] = 234,	-- Gryan Stoutmantle
					["sourceQuest"] = 143,	-- Messenger to Westfall
					["coord"] = { 56.2, 47.6, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1408, 1 },	-- Stoutmantle's Response to Solomon
					},
					["lvl"] = 14,
				}),
				q(219, {	-- Missing In Action
					["qg"] = 349,	-- Corporal Keeshan
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 19,
					["g"] = {
						i(3555),	-- Robe of Solomon
						i(1275),	-- Deputy Chain Coat
						i(3431),	-- Bone-studded Leather
					},
				}),
				q(249, {	-- Morganth
					["provider"] = { "o", 31 },	-- Old Lion Statue
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3617, 1 },	-- Pendant of Shadow
					},
					["lvl"] = 20,
					["g"] = {
						{
							["itemID"] = 3617,	-- Pendant of Shadow
							["questID"] = 249,	-- Morganth
							["cr"] = 397,	-- Morganth
							["coord"] = { 80, 49, REDRIDGE_MOUNTAINS },	
						},
						i(5274),	-- Rose Mantle
					},
				}),
				q(150, {	-- Murloc Poachers
					["qg"] = 381,	-- Dockmaster Baren
					["coord"] = { 27.7, 47.3, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1468, 8 },	-- Murloc Fin
					},
					["lvl"] = 20,
					["g"] = {
						i(3567),	-- Dwarven Fishing Pole
					},
				}),
				q(92, {	-- Redridge Goulash
					["qg"] = 343,	-- Chef Breanna
					["coord"] = { 22.7, 44.0, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2296, 5 },	-- Great Goretusk Snout
						{ "i", 1080, 5 },	-- Tough Condor Meat
						{ "i", 1081, 5 },	-- Crisp Spider Meat
					},
					["lvl"] = 15,
					["g"] = {
						i(1082),	-- Redridge Goulash
						i(2699),	-- Recipe: Redridge Goulash
					},
				}),
				q(347, {	-- Rethban Ore
					["qg"] = 341,	-- Foreman Oslow
					["sourceQuest"] = 345,	-- Ink Supplies (Elwynn Forest)
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2798, 5 },	-- Rethban Ore
					},
					["lvl"] = 20,
				}),
				q(119, {	-- Return to Verner
					["qg"] = 514,	-- Smith Argus
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
				}),
				q(127, {	-- Selling Fish
					["qg"] = 381,	-- Dockmaster Baren
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["g"] = {
						i(3663),	-- Murloc Fin Soup
						i(1322),	-- Fishliver Oil
						i(3680),	-- Recipe: Murloc Fin Soup
					},
				}),
				q(115, {	-- Shadow Magic
					["qg"] = 382,	-- Marshal Marris
					["coord"] = { 33.4, 49.0, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(91, {	-- Solomon's Law
					["qg"] = 900,	-- Bailiff Conacher
					["coord"] = { 29.6, 44.3, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1075, 10 },	-- Shadowhide Pendant
					},
					["lvl"] = 17,
				}),
				q(19, {	-- Tharil'zun
					["qg"] = 382,	-- Marshal Marris
					["coord"] = { 33.4, 49.0, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1260, 1},	-- Tharil'zun's Head
					},
					["lvl"] = 18,
					["g"] = {
						{
							["itemID"] = 1260,	-- Tharil'zun's Head
							["questID"] = 19,	-- Tharil'zun
							["cr"] = 486,	-- Tharil'zun
							["coord"] = { 68.4, 58.8, REDRIDGE_MOUNTAINS },	
						},
						i(1276),	-- Fire Hardened Buckler
						i(6093),	-- Orc Crusher
					},				
				}),
				q(132, {	-- The Defias Brotherhood (2/7)
					["qg"] = 266,	-- Wiley the Black
					["sourceQuest"] = 65,	-- The Defias Brotherhood (1/7)
					["coord"] = { 26.6, 45.3, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1327, 1 },	-- Wiley's Note
					},
					["lvl"] = 14,
				}),
				q(89, {	-- The Everstill Bridge
					["qg"] = 341,	-- Foreman Oslow
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2856, 5 },	-- Iron Pike
						{ "i", 1013, 5 },	-- Iron Rivet
					},
					["lvl"] = 15,
					["g"] = {
						i(1310),	-- Smith's Trousers
						i(1303),	-- Bridgeworker's Gloves
						i(1304),	-- Riding Gloves
					},
				}),
				q(125, {	-- The Lost Tools
					["qg"] = 341,	-- Foreman Oslow
					["coord"] = { 32.2, 48.7, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["g"] = {
						i(2313),	-- Medium Armor Kit
					},
				}),
				q(118, {	-- The Price of Shoes
					["qg"] = 415,	-- Verner Osgood
					["coord"] = { 31.0, 47.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(1699, { -- The Rethban Gauntlet
					["qg"] = 6166, -- Yorus Barleybrew
					["sourceQuest"] = 1698, -- Yorus Barleybrew
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
				q(1702, { -- The Shieldsmith
					["qg"] = 6166, -- Yorus Barleybrew
					["sourceQuest"] = 1699, -- The Rethban Gauntlet
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 6843, 1 }, -- Cask of Scalder
					},
					["lvl"] = 20,
					["g"] = {
						i(6970), -- Furen's Favor
					},
				}),
				q(178, {	-- Theocritus' Retrieval
					["provider"] = { "i", 1962 },	-- Glowing Shadowhide Pendant
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["g"] = {
						i(1970),	-- Restoring Balm
					},
				}),
				q(122, {	-- Underbelly Scales
					["qg"] = 415,	-- Verner Osgood
					["coord"] = { 31.0, 47.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1221, 6},	-- Underbelly Whelp Scale
					},
					["lvl"] = 14,
					["g"] = {
						i(6092),	-- Black Whelp Boots
						i(1302),	-- Black Whelp Gloves
					},
				}),
				q(130, {	-- Visit the Herbalist
					["qg"] = 464,	-- Guard Parker
					["coord"] = { 17.3, 69.5, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(169, {	-- Wanted: Gath'Ilzogg
					["provider"] = { "o", 60 },	-- Wanted: Gath'Ilzogg
					["coord"] = { 29.6, 46.2, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3633, 1 },	-- Head of Gath'Ilzogg
					},
					["lvl"] = 15,
					["groups"] = {
						{
							["itemID"] = 3633,	-- Head of Gath'Ilzogg
							["questID"] = 169,	-- Wanted: Gath'Ilzogg
							["cr"] = 334,	-- Gath'Ilzogg <Warlord of the Blackrock Clan>
							["coord"] = { 69.6, 55.8, REDRIDGE_MOUNTAINS },	
						},
					},
				}),
				q(180, {	-- Wanted: Lieutenant Fangore
					["provider"] = { "o", 47 },	-- Wanted: Lieutenant Fangore
					["coord"] = { 26.7, 46.5, REDRIDGE_MOUNTAINS },	
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3632, 1 },	-- Fangore's Paw
					},
					["lvl"] = 15,
					["groups"] = {
						{
							["itemID"] = 3632,	-- Fangore's Paw
							["questID"] = 180,	-- Wanted: Lieutenant Fangore
							["cr"] = 703,	-- Lieutenant Fangore
							["coord"] = { 80.0, 39.0, REDRIDGE_MOUNTAINS },	
						},
					},
				}),
				q(1698, { -- Yorus Barleybrew
					["qgs"] = {
						5479, -- Wu Shen <Warrior Trainer>
						7315, -- Darnath Bladesigner <Warrior Trainer>
					},
					["maps"] = { DARNASSUS, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
			}),
		}),
	}),
};