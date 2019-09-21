---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(REDRIDGE_MOUNTAINS, {	-- Redridge Mountains
			n(-17, {	-- Quests
				q(124, {	-- A Baying of Gnolls
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 415,	-- Verner Osgood
				}),
				q(129, {	-- A Free Lunch
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 379,	-- Darcy
				}),
				q(94, {	-- A Watchful Eye
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 313,	-- Theocritus
				}),
				q(34, {	-- An Unwelcome Guest
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 342,	-- Martie Jainrose
					["g"] = {
						i(2562),	-- Bouquet of Scarlet Begonias
					},
				}),
				q(246, {	-- Assessing the Threat
					["lvl"] = 11,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1070,	-- Deputy Feldon
				}),
				q(128, {	-- Blackrock Bounty
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 903,	-- Guard Howe
				}),
				q(20, {	-- Blackrock Menace
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 382,	-- Marshal Marris
				}),
				q(131, {	-- Delivering Daffodils
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 342,	-- Martie Jainrose
					["g"] = {
						i(1326),	-- Sauteed Sunfish
					},
				}),
				q(116, {	-- Dry Times
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 346,	-- Barkeep Daniels
					["g"] = {
						i(1270),	-- Finely Woven Cloak
						i(10456),	-- A Bulging Coin Purse
					},
				}),
				q(244, {	-- Encroaching Gnolls
					["lvl"] = 11,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 464,	-- Guard Parker
				}),
				q(3741, {	-- Hilary's Necklace
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 8965,	-- Shawn
				}),
				q(126, {	-- Howling in the Hills
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 415,	-- Verner Osgood
					["g"] = {
						i(1319),	-- Ring of Iron Will
						i(2910),	-- Gold Militia Boots
					},
				}),
				q(248, {	-- Looking Further
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 31,	-- Old Lion Statue
				}),
				q(146, {	-- Messenger to Darkshire
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 263,	-- Lord Ello Ebonlocke
				}),
				q(145, {	-- Messenger to Darkshire
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 344,	-- Magistrate Solomon
				}),
				q(121, {	-- Messenger to Stormwind
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 466,	-- General Marcus Jonathan
				}),
				q(120, {	-- Messenger to Stormwind
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 344,	-- Magistrate Solomon
				}),
				q(144, {	-- Messenger to Westfall
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 234,	-- Gryan Stoutmantle
				}),
				q(143, {	-- Messenger to Westfall
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 344,	-- Magistrate Solomon
				}),
				q(219, {	-- Missing In Action
					["lvl"] = 19,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 349,	-- Corporal Keeshan
					["g"] = {
						i(3555),	-- Robe of Solomon
						i(1275),	-- Deputy Chain Coat
						i(3431),	-- Bone-studded Leather
					},
				}),
				q(249, {	-- Morganth
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qgs"] = {
						313,	-- Theocritus
					--["objectID"] = 31,	-- Old Lion Statue
					},
					["g"] = {
						i(5274),	-- Rose Mantle
					},
				}),
				q(150, {	-- Murloc Poachers
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 381,	-- Dockmaster Baren
					["g"] = {
						i(3567),	-- Dwarven Fishing Pole
					},
				}),
				q(92, {	-- Redridge Goulash
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 343,	-- Chef Breanna
					["g"] = {
						i(1082),	-- Redridge Goulash
						i(2699),	-- Recipe: Redridge Goulash
					},
				}),
				{
					["questID"] = 347,	-- Rethban Ore
					["qg"] = 341,	-- Foreman Oslow
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
				},
				q(119, {	-- Return to Verner
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 514,	-- Smith Argus
				}),
				q(127, {	-- Selling Fish
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 381,	-- Dockmaster Baren
					["g"] = {
						i(3663),	-- Murloc Fin Soup
						i(1322),	-- Fishliver Oil
						i(3680),	-- Recipe: Murloc Fin Soup
					},
				}),
				q(115, {	-- Shadow Magic
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 382,	-- Marshal Marris
				}),
				q(91, {	-- Solomon's Law
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 900,	-- Bailiff Conacher
				}),
				q(19, {	-- Tharil'zun
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 382,	-- Marshal Marris
					["g"] = {
						i(1276),	-- Fire Hardened Buckler
						i(6093),	-- Orc Crusher
					},
				}),
				q(89, {	-- The Everstill Bridge
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 341,	-- Foreman Oslow
					["g"] = {
						i(1310),	-- Smith's Trousers
						i(1303),	-- Bridgeworker's Gloves
						i(1304),	-- Riding Gloves
					},
				}),
				q(125, {	-- The Lost Tools
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 341,	-- Foreman Oslow
					["g"] = {
						i(2313),	-- Medium Armor Kit
					},
				}),
				q(118, {	-- The Price of Shoes
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 415,	-- Verner Osgood
				}),
				q(178, {	-- Theocritus' Retrieval
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(1970),	-- Restoring Balm
					},
				}),
				q(122, {	-- Underbelly Scales
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 415,	-- Verner Osgood
					["g"] = {
						i(6092),	-- Black Whelp Boots
						i(1302),	-- Black Whelp Gloves
					},
				}),
				q(130, {	-- Visit the Herbalist
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 464,	-- Guard Parker
				}),
				q(169, {	-- Wanted: Gath'Ilzogg
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 60,	-- Wanted: Gath'Ilzogg
				}),
				q(180, {	-- Wanted: Lieutenant Fangore
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 47,	-- Wanted: Lieutenant Fangore
				}),
			}),
		}),
	}),
};