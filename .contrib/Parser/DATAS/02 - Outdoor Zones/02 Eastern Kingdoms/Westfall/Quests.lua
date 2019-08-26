---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(WESTFALL, {	-- Westfall
			n(-17, {	-- Quests
				q(6181, {	-- A Swift Message
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 491,	-- Quartermaster Lewis
				}),
				q(139, {	-- Captain Sander's Hidden Treasure
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 36,	-- Broken Barrel
				}),
				q(138, {	-- Captain Sander's Hidden Treasure
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 35,	-- Captain's Footlocker
				}),
				q(140, {	-- Captain Sander's Hidden Treasure
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(2842),	-- Silver Bar
						i(3343),	-- Captain Sander's Booty Bag
						i(3342),	-- Captain Sander's Shirt
						i(3344),	-- Captain Sander's Sash
					},
				}),
				q(136, {	-- Captain Sander's Hidden Treasure
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
				}),
				q(6281, {	-- Continue to Stormwind
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 523,	-- Thor
				}),
				q(6261, {	-- Dungar Longdrink
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1323,	-- Osric Strang
				}),
				q(184, {	-- Furlbrow's Deed
					["lvl"] = 8,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(5057),	-- Ripe Watermelon
						i(4656),	-- Small Pumpkin
					},
				}),
				q(22, {	-- Goretusk Liver Pie
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 235,	-- Salma Saldean
					["g"] = {
						i(724),	-- Goretusk Liver Pie
						i(2697),	-- Recipe: Goretusk Liver Pie
					},
				}),
				q(103, {	-- Keeper of the Flame
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 392,	-- Captain Grayson
					["g"] = {
						i(2455),	-- Minor Mana Potion
						i(118),	-- Minor Healing Potion
						i(955),	-- Scroll of Intellect
						i(1180),	-- Scroll of Stamina
					},
				}),
				q(102, {	-- Patrolling Westfall
					["lvl"] = 8,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 821,	-- Captain Danuvin
					["g"] = {
						i(1154),	-- Belt of the People's Militia
						i(710),	-- Bracers of the People's Militia
					},
				}),
				q(151, {	-- Poor Old Blanchy
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 238,	-- Verna Furlbrow
					["g"] = {
						i(2165),	-- Old Blanchy's Blanket
						i(1537),	-- Old Blanchy's Feed Pouch
					},
				}),
				q(153, {	-- Red Leather Bandanas
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 878,	-- Scout Galiaan
					["g"] = {
						i(3511),	-- Cloak of the People's Militia
						i(5944),	-- Greaves of the People's Militia
						i(12295),	-- Leggings of the People's Militia
					},
				}),
				q(6285, {	-- Return to Lewis
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 352,	-- Dungar Longdrink
				}),
				q(50, {	-- Sweet Amber
					["lvl"] = 40,
				}),
				q(49, {	-- Sweet Amber
					["lvl"] = 40,
				}),
				q(51, {	-- Sweet Amber
					["lvl"] = 40,
				}),
				q(53, {	-- Sweet Amber
					["lvl"] = 40,
					["g"] = {
						i(744),	-- Thunderbrew's Boot Flask
					},
				}),
				q(48, {	-- Sweet Amber
					["lvl"] = 40,
				}),
				q(152, {	-- The Coast Isn't Clear
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 392,	-- Captain Grayson
				}),
				q(104, {	-- The Coastal Menace
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 392,	-- Captain Grayson
					["g"] = {
						i(1172),	-- Grayson's Torch
						i(1557),	-- Buckler of the Seas
						i(5240),	-- Torchlight Wand
					},
				}),
				q(141, {	-- The Defias Brotherhood
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 332,	-- Master Mathias Shaw
				}),
				q(135, {	-- The Defias Brotherhood
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 234,	-- Gryan Stoutmantle
				}),
				q(132, {	-- The Defias Brotherhood
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 266,	-- Wiley the Black
				}),
				q(155, {	-- The Defias Brotherhood
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 467,	-- The Defias Traitor
				}),
				q(65, {	-- The Defias Brotherhood
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 234,	-- Gryan Stoutmantle
				}),
				q(142, {	-- The Defias Brotherhood
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 234,	-- Gryan Stoutmantle
				}),
				q(64, {	-- The Forgotten Heirloom
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 237,	-- Farmer Furlbrow
					["g"] = {
						i(4541),	-- Freshly Baked Bread
						i(1179),	-- Ice Cold Milk
					},
				}),
				q(9, {	-- The Killing Fields
					["lvl"] = 8,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 233,	-- Farmer Saldean
					["g"] = {
						i(3578),	-- Harvester's Pants
						i(1561),	-- Harvester's Robe
					},
				}),
				q(13, {	-- The People's Militia
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 234,	-- Gryan Stoutmantle
				}),
				q(12, {	-- The People's Militia
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 234,	-- Gryan Stoutmantle
				}),
				q(14, {	-- The People's Militia
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 234,	-- Gryan Stoutmantle
					["g"] = {
						i(1566),	-- Edge of the People's Militia
						i(1480),	-- Fist of the People's Militia
						i(12296),	-- Spark of the People's Militia
					},
				}),
				q(117, {	-- Thunderbrew
					["races"] = ALLIANCE_ONLY,
					["qg"] = 239,	-- Grimbooze Thunderbrew
					["g"] = {
						i(1262),	-- Keg of Thunderbrew
					},
				}),
				q(36, {	-- Westfall Stew
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 238,	-- Verna Furlbrow
				}),
				q(38, {	-- Westfall Stew
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 235,	-- Salma Saldean
					["g"] = {
						i(733),	-- Westfall Stew
						i(1479),	-- Salma's Oven Mitts
						i(728),	-- Recipe: Westfall Stew
						i(2225),	-- Sharp Kitchen Knife
					},
				}),
			}),
		}),
	}),
};