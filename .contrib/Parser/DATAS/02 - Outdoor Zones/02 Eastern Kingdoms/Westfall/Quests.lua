---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(WESTFALL, {	-- Westfall
			n(-17, {	-- Quests
				q(6181, {	-- A Swift Message
					["qg"] = 491,	-- Quartermaster Lewis
					["races"] = {
						1,	-- Human
					},
					["lvl"] = 10,
					["coord"] = { 56.9, 47.2, WESTFALL },
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
					["races"] = {
						1,	-- Human
					},
					["qg"] = 523,	-- Thor
				}),
				q(6261, {	-- Dungar Longdrink
					["lvl"] = 10,
					["races"] = {
						1,	-- Human
					},
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
					["coord"] = { 56.4, 30.6, WESTFALL },
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
				q(2359, {	-- Klaven's Tower
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
					["qg"] = 7024,	-- Agent Kearnen
					["g"] = {
						i(18160),	-- Recipe: Thistle Tea
					},
					["coord"] = { 68.5, 70.2, WESTFALL },
				}),
				q(102, {	-- Patrolling Westfall
					["lvl"] = 8,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 821,	-- Captain Danuvin
					["g"] = {
						i(1154),	-- Belt of the People's Militia
						i(710),	-- Bracers of the People's Militia
					},
					["coord"] = { 56.4, 47.6, WESTFALL },
				}),
				q(151, {	-- Poor Old Blanchy
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 238,	-- Verna Furlbrow
					["g"] = {
						i(2165),	-- Old Blanchy's Blanket
						i(1537),	-- Old Blanchy's Feed Pouch
					},
					["coord"] = { 60.0, 19.4, WESTFALL },
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
					["coord"] = { 54.0, 53.0, WESTFALL },
				}),
				q(6285, {	-- Return to Lewis
					["lvl"] = 10,
					["races"] = {
						1,	-- Human
					},
					["qg"] = 352,	-- Dungar Longdrink
				}),
				q(50, {	-- Sweet Amber
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
				}),
				q(49, {	-- Sweet Amber
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
				}),
				q(51, {	-- Sweet Amber
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
				}),
				q(53, {	-- Sweet Amber
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(744),	-- Thunderbrew's Boot Flask
					},
				}),
				q(48, {	-- Sweet Amber
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
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
					["coord"] = { 56.3, 47.6, WESTFALL },
				}),
				q(132, {	-- The Defias Brotherhood
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 266,	-- Wiley the Black
					["coord"] = { 26.6, 45.3, REDRIDGE_MOUNTAINS },
					["description"] = "Wiley the Black is located on the 2nd floor of the Lakeshire Inn.",
				}),
				q(155, {	-- The Defias Brotherhood
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 467,	-- The Defias Traitor
					["coord"] = { 55.6, 47.5, WESTFALL },
				}),
				q(65, {	-- The Defias Brotherhood
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 234,	-- Gryan Stoutmantle
					["coord"] = { 56.3, 47.6, WESTFALL },
				}),
				q(142, {	-- The Defias Brotherhood
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 234,	-- Gryan Stoutmantle
					["coord"] = { 56.3, 47.6, WESTFALL },
				}),
				q(64, {	-- The Forgotten Heirloom
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 237,	-- Farmer Furlbrow
					["g"] = {
						i(4541),	-- Freshly Baked Bread
						i(1179),	-- Ice Cold Milk
					},
					["coord"] = { 60.0, 19.4, WESTFALL },
				}),
				q(9, {	-- The Killing Fields
					["lvl"] = 8,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 233,	-- Farmer Saldean
					["g"] = {
						i(3578),	-- Harvester's Pants
						i(1561),	-- Harvester's Robe
					},
					["coord"] = { 56.0, 31.2, WESTFALL },
				}),
				q(13, {	-- The People's Militia
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 234,	-- Gryan Stoutmantle
					["coord"] = { 56.3, 47.6, WESTFALL },
				}),
				q(12, {	-- The People's Militia
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 234,	-- Gryan Stoutmantle
					["coord"] = { 56.3, 47.6, WESTFALL },
				}),
				q(14, {	-- The People's Militia
					["qg"] = 234,	-- Gryan Stoutmantle
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
					["g"] = {
						i(1566),	-- Edge of the People's Militia
						i(1480),	-- Fist of the People's Militia
						i(12296),	-- Spark of the People's Militia
					},
					["coord"] = { 56.3, 47.6, WESTFALL },
				}),
				q(117, {	-- Thunderbrew
					["qg"] = 239,	-- Grimbooze Thunderbrew
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["g"] = {
						i(1262),	-- Keg of Thunderbrew
					},
				}),
				q(36, {	-- Westfall Stew
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 238,	-- Verna Furlbrow
					["coord"] = { 60.0, 19.4, WESTFALL },
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
					["coord"] = { 56.4, 30.6, WESTFALL },
				}),
			}),
		}),
	}),
};