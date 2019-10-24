---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(IRONFORGE, {	-- Ironforge
			n(-17, {	-- Quests
				q(5090, {	-- A Call to Arms: The Plaguelands!
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10877,	-- Courier Hammerfall
				}),
				q(7809, {	-- A Donation of Mageweave
					["qg"] = 14724,	-- Bubulo Acerbus
					["cost"] = { 
						{ "i", 4338, 60 }, -- Mageweave Cloth 
					},	
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["coord"] = { 74.1, 48.1, IRONFORGE },
				}),
				q(7804, {	-- A Donation of Mageweave
					["qg"] = 14723,	-- Mistina Steelshield
					["cost"] = { 
						{ "i", 4338, 60 }, 	-- Mageweave Cloth
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["coord"] = { 43.2, 31.9, IRONFORGE },
				}),
				q(7811, {	-- A Donation of Runecloth
					["qg"] = 14724,	-- Bubulo Acerbus
					["cost"] = { 
						{ "i", 14047, 60 }, -- Runecloth
					},	
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["coord"] = { 74.1, 48.1, IRONFORGE },
				}),
				q(7805, {	-- A Donation of Runecloth
					["qg"] = 14723,	-- Mistina Steelshield
					["cost"] = { 
						{ "i", 14047, 60 }, -- Runecloth
					},	
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["coord"] = { 43.2, 31.9, IRONFORGE },
				}),
				q(7808, {	-- A Donation of Silk
					["qg"] = 14724,	-- Bubulo Acerbus
					["cost"] = {
						{ "i", 4306, 60 }, -- Silk Cloth
					},	
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
					["coord"] = { 74.1, 48.1, IRONFORGE },
				}),
				q(7803, {	-- A Donation of Silk
					["qg"] = 14723,	-- Mistina Steelshield
					["cost"] = { 
						{ "i", 4306, 60 }, 	-- Silk Cloth
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
					["coord"] = { 43.2, 31.9, IRONFORGE },
				}),
				q(7802, {	-- A Donation of Wool
					["qg"] = 14723,	-- Mistina Steelshield
					["cost"] = { 
						{ "i", 2592, 60 },	-- Wool Cloth
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["coord"] = { 43.2, 31.9, IRONFORGE },
				}),
				q(7807, {	-- A Donation of Wool
					["qg"] = 14724,	-- Bubulo Acerbus
					["cost"] = { 
						{ "i", 2592, 60 },	-- Wool Cloth
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["coord"] = { 74.1, 48.1, IRONFORGE },
				}),
				q(2964, {	-- A Future Task
					["lvl"] = 45,
					["races"] = ALLIANCE_ONLY,
				}),
				q(686, {	-- A King's Tribute (1/3)
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2784,	-- King Magni Bronzebeard
					["sourceQuest"] = 683,	-- Sara Balloo's Plea
				}),
				q(689, {	-- A King's Tribute (2/3)
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2790,	-- Grand Mason Marblesten
					["sourceQuest"] = 686,	-- A King's Tribute (1/3)
				}),
				q(700, {	-- A King's Tribute
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2790,	-- Grand Mason Marblesten
					["sourceQuest"] = 689,	-- A King's Tribute (2/3)
					["groups"] = {
						i(4535),	-- Ironforge Memorial Ring
					},
				}),
				q(4512, {	-- A Little Slime Goes a Long Way
					["lvl"] = 48,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9616,	-- Laris Geardawdle
					["coord"] = { 75.6, 23.5, IRONFORGE },
				}),
				q(4513, {	-- A Little Slime Goes a Long Way
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9616,	-- Laris Geardawdle
					["groups"] = {
						i(12050),	-- Hazecover Boots
						i(12051),	-- Brazen Gauntlets
					},
					["coord"] = { 75.6, 23.5, IRONFORGE },
				}),
				q(212, { -- A Meal Served Cold
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1141, -- Angus Stern
				}),
				q(7806, {	-- Additional Runecloth
					["qg"] = 14723,	-- Mistina Steelshield
					["sourceQuest"] = 7805,	-- A Donation of Runecloth
					["cost"] = { 
						{ "i", 14047, 20 }, 	-- Runecloth
					},
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
					["coord"] = { 43.2, 31.9, IRONFORGE },
				}),
				q(7812, {	-- Additional Runecloth
					["qg"] = 14724,	-- Bubulo Acerbus
					["sourceQuest"] = 7811,	-- A Donation of Runecloth
					["cost"] = {
						{ "i", 14047, 20 },	-- Runecloth 
					},
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
					["coord"] = { 74.1, 48.1, IRONFORGE },
				}),
				q(8910, { -- An Earnest Proposition
					["qg"] = 16013,	-- Deliana
					["coord"] = { 43.5, 52.6, IRONFORGE },
					["cost"] = {
						{ "i", 21928, 15 },	-- Winterspring Blood Sample
						{ "i", 16710, 1 },	-- Shadowcraft Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { 4 },	-- Rogue
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 58,
					["u"] = 3,	-- Added in later phase
					["groups"] = {
						i(22004),	-- Darkmantle Bracers
					},
				}),
				q(8909, {	-- An Earnest Proposition
					["qg"] = 16013,	-- Deliana
					["coord"] = { 43.5, 52.6, IRONFORGE },
					["cost"] = {
						{ "i", 21928, 15 },	-- Winterspring Blood Sample
						{ "i", 16697, 1 },	-- Devout Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { 5 },	-- Priest
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 58,
					["u"] = 3,	-- Added in later phase
					["groups"] = {
						i(22079),	-- Virtuous Bracers
					},
				}),
				q(8907, {	-- An Earnest Proposition
					["qg"] = 16013,	-- Deliana
					["coord"] = { 43.5, 52.6, IRONFORGE },
					["cost"] = {
						{ "i", 21928, 15 },	-- Winterspring Blood Sample
						{ "i", 16683, 1 },	-- Magister's Bindings
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { 8 },	-- Mage
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 58,
					["u"] = 3,	-- Added in later phase
					["groups"] = {
						i(22063),	-- Sorcerer's Bindings
					},
				}),
				q(8912, {	-- An Earnest Proposition
					["qg"] = 16013,	-- Deliana
					["coord"] = { 43.5, 52.6, IRONFORGE },
					["cost"] = {
						{ "i", 21928, 15 },	-- Winterspring Blood Sample
						{ "i", 16735, 1 },	-- Bracers of Valor
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { 1 },	-- Warrior
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 58,
					["u"] = 3,	-- Added in later phase
					["groups"] = {
						i(21996),	-- Bracers of Heroism
					},
				}),
				q(8908, { -- An Earnest Proposition
					["qg"] = 16013,	-- Deliana
					["coord"] = { 43.5, 52.6, IRONFORGE },
					["cost"] = {
						{ "i", 21928, 15 },	-- Winterspring Blood Sample
						{ "i", 16722, 1 },	-- Lightforge Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { 2 },	-- Paladin
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 58,
					["u"] = 3,	-- Added in later phase
					["groups"] = {
						i(22088),	-- Soulforge Bracers
					},
				}),
				q(8911, {	-- An Earnest Proposition
					["qg"] = 16013,	-- Deliana
					["coord"] = { 43.5, 52.6, IRONFORGE },
					["cost"] = {
						{ "i", 21928, 15 },	-- Winterspring Blood Sample
						{ "i", 16703, 1 },	-- Dreadmist Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { 9 },	-- Warlock
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 58,
					["u"] = 3,	-- Added in later phase
					["groups"] = {
						i(22071),	-- Deathmist Bracers
					},
				}),
				q(8905,	{ -- An Earnest Proposition
					["qg"] = 16013,	-- Deliana
					["coord"] = { 43.5, 52.6, IRONFORGE },
					["cost"] = {
						{ "i", 21928, 15 },	-- Winterspring Blood Sample
						{ "i", 16714, 1 },	-- Wildheart Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { 11 },	-- Druid
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 58,
					["u"] = 3,	-- Added in later phase
					["groups"] = {
						i(22108),	-- Feralheart Bracers
					},
				}),
				q(8906,	{ -- An Earnest Proposition
					["qg"] = 16013,	-- Deliana
					["coord"] = { 43.5, 52.6, IRONFORGE },
					["cost"] = {
						{ "i", 21928, 15 },	-- Winterspring Blood Sample
						{ "i", 16681, 1 },	-- Beaststalker's Bindings
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { 3 },	-- Hunter
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 58,
					["u"] = 3,	-- Added in later phase
					["groups"] = {
						i(22011),	-- Beastmaster's Bindings
					},					
				}),
				q(3450, {	-- An Easy Pickup
					["lvl"] = 45,
					["races"] = ALLIANCE_ONLY,
				}),
				q(8958, {	-- Anthion's Parting Words
					["u"] = 3,	-- Added in later phase
					["classes"] = {9},	-- Warlock
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["groups"] = {
						i(22076),	-- Deathmist Sandals
						i(22072),	-- Deathmist Leggings
					},
				}),
				q(8953, {	-- Anthion's Parting Words
					["u"] = 3,	-- Added in later phase
					["classes"] = {8},	-- Mage
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["groups"] = {
						i(22064),	-- Sorcerer's Boots
						i(22067),	-- Sorcerer's Leggings
					},
				}),
				q(8951, {	-- Anthion's Parting Words
					["u"] = 3,	-- Added in later phase
					["classes"] = {11},	-- Druid
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["groups"] = {
						i(22107),	-- Feralheart Boots
						i(22111),	-- Feralheart Kilt
					},
				}),
				q(8955, {	-- Anthion's Parting Words
					["u"] = 3,	-- Added in later phase
					["classes"] = {5},	-- Priest
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["groups"] = {
						i(22084),	-- Virtuous Sandals
						i(22085),	-- Virtuous Skirt
					},
				}),
				q(8954, {	-- Anthion's Parting Words
					["u"] = 3,	-- Added in later phase
					["classes"] = {2},	-- Paladin
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["groups"] = {
						i(22087),	-- Soulforge Boots
						i(22092),	-- Soulforge Legplates
					},
				}),
				q(8952, {	-- Anthion's Parting Words
					["u"] = 3,	-- Added in later phase
					["classes"] = {3},	-- Hunter
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["groups"] = {
						i(22061),	-- Beastmaster's Boots
						i(22017),	-- Beastmaster's Pants
					},
				}),
				q(8959, {	-- Anthion's Parting Words
					["u"] = 3,	-- Added in later phase
					["classes"] = {1},	-- Warrior
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["groups"] = {
						i(21995),	-- Boots of Heroism
						i(22000),	-- Legplates of Heroism
					},
				}),
				q(8956, {	-- Anthion's Parting Words
					["u"] = 3,	-- Added in later phase
					["classes"] = {4},	-- Rogue
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["groups"] = {
						i(22003),	-- Darkmantle Boots
						i(22007),	-- Darkmantle Pants
					},
				}),
				q(3449, {	-- Arcane Runes
					["lvl"] = 45,
					["races"] = ALLIANCE_ONLY,
				}),
				q(7342, {	-- Arrows Are For Sissies
					["lvl"] = 52,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(18042),	-- Thorium Headed Arrow
					},
				}),
				q(3790, {	-- Assisting Arch Druid Staghelm
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5111,	-- Innkeeper Firebrew
				}),
				q(3201, {	-- At Last!
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 3182,	-- Proof of Deed
					["groups"] = {
						i(5396),	-- Key to Searing Gorge
					},
				}),
				q(8997, {	-- Back to the Beginning
					["u"] = 3,	-- Added in later phase
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
				}),
				q(3371, {	-- Dwarven Justice
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["maps"] = { SEARING_GORGE },
					["qg"] = 8256,	-- Curator Thorius
					["sourceQuest"] = 3368,	-- Suntara Stones
				}),
				q(2039, {	-- Find Bingles
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 6569,	-- Gnoarn
					["coord"] = { 69.4, 50.8, IRONFORGE },
				}),
				q(6388, {	-- Gryth Thurden
					["lvl"] = 10,
					["races"] = {
						3,	-- Dwarf
						7,	-- Gnome
					},
					["sourceQuest"] = 6387,	-- Honor Students
					["qg"] = 4256,	-- Golnir Bouldertoe
				}),
				q(4736, { -- In Search of Menara Voidrender
					["lvl"] = 31,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 9 },	-- Warlock
					["qg"] = 5172, -- Briarthorn
				}),
				q(1073, {	-- Ineptitude + Chemicals = Fun
					["qg"] = 4081,	-- Lomac Gearstrip
					["sourceQuest"] = 1072,	-- An Old Colleague
					["cost"] = {
						{ "i", 2455, 4 },	-- Minor Mana Potion
						{ "i", 2458, 2 },	-- Elixir of Minor Fortitude
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["coord"] = { 71.9, 51.9, IRONFORGE },
				}),
				q(1074, {	-- Ineptitude + Chemicals = Fun
					["qg"] = 4081,	-- Lomac Gearstrip
					["sourceQuest"] = 1073,	-- Ineptitude + Chemicals = Fun
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["coord"] = { 71.9, 51.9, IRONFORGE },
				}),
				q(707, {	-- Ironband Wants You!
					["qg"] = 1356,	-- Prospector Stormpike
					["coord"] = { 74.64, 11.74, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(8932, {	-- Just Compensation
					["u"] = 3,	-- Added in later phase
					["classes"] = {8},	-- Mage
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(22062),	-- Sorcerer's Belt
						i(22066),	-- Sorcerer's Gloves
					},
				}),
				q(8935, {	-- Just Compensation
					["u"] = 3,	-- Added in later phase
					["classes"] = {4},	-- Rogue
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(22002),	-- Darkmantle Belt
						i(22006),	-- Darkmantle Gloves
					},
				}),
				q(8931, {	-- Just Compensation
					["u"] = 3,	-- Added in later phase
					["classes"] = {3},	-- Hunter
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(22010),	-- Beastmaster's Belt
						i(22015),	-- Beastmaster's Gloves
					},
				}),
				q(8926, {	-- Just Compensation
					["u"] = 3,	-- Added in later phase
					["classes"] = {11},	-- Druid
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(22106),	-- Feralheart Belt
						i(22110),	-- Feralheart Gloves
					},
				}),
				q(8933, {	-- Just Compensation
					["u"] = 3,	-- Added in later phase
					["classes"] = {2},	-- Paladin
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(22086),	-- Soulforge Belt
						i(22090),	-- Soulforge Gauntlets
					},
				}),
				q(8934, {	-- Just Compensation
					["u"] = 3,	-- Added in later phase
					["classes"] = {5},	-- Priest
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(22078),	-- Virtuous Belt
						i(22081),	-- Virtuous Gloves
					},
				}),
				q(8936, {	-- Just Compensation
					["u"] = 3,	-- Added in later phase
					["classes"] = {9},	-- Warlock
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(22070),	-- Deathmist Belt
						i(22077),	-- Deathmist Wraps
					},
				}),
				q(8937, {	-- Just Compensation
					["u"] = 3,	-- Added in later phase
					["classes"] = {1},	-- Warrior
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21994),	-- Belt of Heroism
						i(21998),	-- Gauntlets of Heroism
					},
				}),
				q(2298, {	-- Kingly Shakedown
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
					["qg"] = 5165,	-- Hulfdan Blackbeard
					["sourceQuest"] = 2299, --	To Hulfdan!
					["isBreadcrumb"] = true,
				}),
				q(4965, { -- Knowledge of the Orb of Orahil
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 9 },	-- Warlock
					["qg"] = 5172, -- Briarthorn
				}),
				q(1880,	{ -- Mage-tastic Gizmonitor
					["qg"] = 5144, -- Bink <Mage Trainer>
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = {8}, -- Mage
					["altQuests"] = {
						1861,	-- Mirror Lake
					},
					["groups"] = {
						i(7507),	-- Arcane Orb
						i(9514),	-- Arcane Staff
					},
				}),
				q(3448, {	-- Passing the Burden
					["lvl"] = 45,
					["races"] = ALLIANCE_ONLY,
				}),
				q(2963, {	-- Portents of Uldum
					["sourceQuest"] = 2439,	-- The Platinum Discs [Alliance - Part 3]
					["qg"] = 5387,	-- High Explorer Magellas
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 45,
				}),
				q(302, {	-- Powder to Ironband
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1356,	-- Prospector Stormpike
					["maps"] = { LOCH_MODAN },
					["sourceQuest"] = 301,	-- Report to Ironforge
				}),
				q(1453, {	-- Reclaimers' Business in Desolace
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5637,	-- Roetten Stonehammer
				}),
				q(6392, {	-- Return to Brock
					["lvl"] = 10,
					["races"] = {
						3,	-- Dwarf
						7,	-- Gnome
					},
					["qg"] = 1573,	-- Gryth Thurden
					["sourceQuest"] = 6388,	-- Gryth Thurden
				}),
				q(8977, {	-- Return to Deliana
					["u"] = 3,	-- Added in later phase
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
				}),
				q(2977, {	-- Return to Ironforge
					["lvl"] = 45,
					["races"] = ALLIANCE_ONLY,
				}),
				q(3461, {	-- Return to Tymor
					["lvl"] = 45,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(10707),	-- Steelsmith Greaves
						i(10708),	-- Skullspell Orb
					},
				}),
				q(683, {	-- Sara Balloo's Plea
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2695,	-- Sara Balloo
					["sourceQuest"] = 637,	-- Sully Balloo's Letter
					["coord"] = { 63.5, 67.2, IRONFORGE },
				}),
				q(9003, {	-- Saving the Best for Last
					["u"] = 3,	-- Added in later phase
					["classes"] = {5},	-- Priest
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(22080),	-- Virtuous Crown
						i(22083),	-- Virtuous Robe
					},
				}),
				q(9001, {	-- Saving the Best for Last
					["u"] = 3,	-- Added in later phase
					["classes"] = {8},	-- Mage
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(22065),	-- Sorcerer's Crown
						i(22069),	-- Sorcerer's Robes
					},
				}),
				q(8999, {	-- Saving the Best for Last
					["u"] = 3,	-- Added in later phase
					["classes"] = {11},	-- Druid
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(22109),	-- Feralheart Cowl
						i(22113),	-- Feralheart Vest
					},
				}),
				q(9006, {	-- Saving the Best for Last
					["u"] = 3,	-- Added in later phase
					["classes"] = {1},	-- Warrior
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21999),	-- Helm of Heroism
						i(21997),	-- Breastplate of Heroism
					},
				}),
				q(9005, {	-- Saving the Best for Last
					["u"] = 3,	-- Added in later phase
					["classes"] = {9},	-- Warlock
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(22074),	-- Deathmist Mask
						i(22075),	-- Deathmist Robe
					},
				}),
				q(9000, {	-- Saving the Best for Last
					["u"] = 3,	-- Added in later phase
					["classes"] = {3},	-- Hunter
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(22013),	-- Beastmaster's Cap
						i(22060),	-- Beastmaster's Tunic
					},
				}),
				q(9004, {	-- Saving the Best for Last
					["u"] = 3,	-- Added in later phase
					["classes"] = {4},	-- Rogue
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(22005),	-- Darkmantle Cap
						i(22009),	-- Darkmantle Tunic
					},
				}),
				q(9002, {	-- Saving the Best for Last
					["u"] = 3,	-- Added in later phase
					["classes"] = {2},	-- Paladin
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(22091),	-- Soulforge Helm
						i(22089),	-- Soulforge Breastplate
					},
				}),
				q(2946, {	-- Seeing What Happens
					["lvl"] = 45,
					["races"] = ALLIANCE_ONLY,
				}),
				q(3451, {	-- Signal for Pickup
					["lvl"] = 45,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 8517,	-- Xiggs Fuselighter
					["sourceQuest"] = 3450,	-- An Easy Pickup
					["groups"] = {
						i(10444),	-- Standard Issue Flare Gun
					},
				}),
				q(3483, {	-- Signal for Pickup
					["lvl"] = 45,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 8517,	-- Xiggs Fuselighter
					["repeatable"] = true,
					["groups"] = {
						i(10444),	-- Standard Issue Flare Gun
					},
				}),
				q(2238, {	-- Simple Subterfugin'
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
					["qg"] = 5165,	-- Hulfdan Blackbeard
					["sourceQuest"] = 2218,	-- Road to Salvation
				}),
				q(2041, {	-- Speak with Shoni
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 6569,	-- Gnoarn
					["isBreadcrumb"] = true,
					["coord"] = { 69.4, 50.8, IRONFORGE },
				}),
				q(4487, { -- Summon Felsteed
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 9 },	-- Warlock
					["qg"] = 5172, -- Briarthorn
				}),
				q(8275, {	-- Taking Back Silithus
					["lvl"] = 54,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 15187,	-- Cenarion Emissary Jademoon
				}),
				q(7905, {	-- The Darkmoon Faire
					["u"] = 3,	-- Added in later phase
					["lvl"] = 6,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 14842,	-- Melnan Darkstone
					["groups"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(6721, {	-- The Hunter's Path
					["qg"] = 5117,	-- Regnus Thundergranite <Hunter Trainer>
					["coord"] = { 69.87, 82.89, IRONFORGE },
					["races"] = { 4 },	-- Night Elf Only
					["classes"] = { 3 },	-- Hunter Only!
					["isBreadcrumb"] = true,
					["altQuests"] = {
						6071,	-- The Hunter's Path
						6072,	-- The Hunter's Path
						6073,	-- The Hunter's Path
						-- 6721,	-- The Hunter's Path
						6722,	-- The Hunter's Path
					},
					["lvl"] = 10,
				}),
				q(1019, {	-- The New Frontier
					["lvl"] = 54,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10877,	-- Courier Hammerfall
				}),
			}),
		}),
	}),
};