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
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7804, {	-- A Donation of Mageweave
					["qg"] = 14723,	-- Mistina Steelshield
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7811, {	-- A Donation of Runecloth
					["qg"] = 14724,	-- Bubulo Acerbus
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(7805, {	-- A Donation of Runecloth
					["qg"] = 14723,	-- Mistina Steelshield
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(7808, {	-- A Donation of Silk
					["qg"] = 14724,	-- Bubulo Acerbus
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
				}),
				q(7803, {	-- A Donation of Silk
					["qg"] = 14723,	-- Mistina Steelshield
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
				}),
				q(7802, {	-- A Donation of Wool
					["qg"] = 14723,	-- Mistina Steelshield
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(7807, {	-- A Donation of Wool
					["qg"] = 14724,	-- Bubulo Acerbus
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(2964, {	-- A Future Task
					["lvl"] = 45,
					["races"] = ALLIANCE_ONLY,
				}),
				q(700, {	-- A King's Tribute
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2790,	-- Grand Mason Marblesten
					["g"] = {
						i(4535),	-- Ironforge Memorial Ring
					},
				}),
				q(686, {	-- A King's Tribute
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2784,	-- King Magni Bronzebeard
				}),
				q(689, {	-- A King's Tribute
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2790,	-- Grand Mason Marblesten
				}),
				q(4512, {	-- A Little Slime Goes a Long Way
					["lvl"] = 48,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9616,	-- Laris Geardawdle
				}),
				q(4513, {	-- A Little Slime Goes a Long Way
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9616,	-- Laris Geardawdle
					["g"] = {
						i(12050),	-- Hazecover Boots
						i(12051),	-- Brazen Gauntlets
					},
				}),
				q(7806, {	-- Additional Runecloth
					["qg"] = 14723,	-- Mistina Steelshield
					["sourceQuest"] = 7805,	-- A Donation of Runecloth
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(7812, {	-- Additional Runecloth
					["qg"] = 14724,	-- Bubulo Acerbus
					["sourceQuest"] = 7811,	-- A Donation of Runecloth
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(8910, {	-- An Earnest Proposition
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22004),	-- Darkmantle Bracers
					},
				}),
				q(8909, {	-- An Earnest Proposition
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22079),	-- Virtuous Bracers
					},
				}),
				q(8907, {	-- An Earnest Proposition
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22063),	-- Sorcerer's Bindings
					},
				}),
				q(8912, {	-- An Earnest Proposition
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(21996),	-- Bracers of Heroism
					},
				}),
				q(8908, {	-- An Earnest Proposition
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22088),	-- Soulforge Bracers
					},
				}),
				q(8911, {	-- An Earnest Proposition
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22071),	-- Deathmist Bracers
					},
				}),
				q(8905, {	-- An Earnest Proposition
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22108),	-- Feralheart Bracers
					},
				}),
				q(8906, {	-- An Earnest Proposition
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22011),	-- Beastmaster's Bindings
					},
				}),
				q(3450, {	-- An Easy Pickup
					["lvl"] = 45,
					["races"] = ALLIANCE_ONLY,
				}),
				q(8958, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22076),	-- Deathmist Sandals
						i(22072),	-- Deathmist Leggings
					},
				}),
				q(8953, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22064),	-- Sorcerer's Boots
						i(22067),	-- Sorcerer's Leggings
					},
				}),
				q(8951, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22107),	-- Feralheart Boots
						i(22111),	-- Feralheart Kilt
					},
				}),
				q(8955, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22084),	-- Virtuous Sandals
						i(22085),	-- Virtuous Skirt
					},
				}),
				q(8954, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22087),	-- Soulforge Boots
						i(22092),	-- Soulforge Legplates
					},
				}),
				q(8952, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22061),	-- Beastmaster's Boots
						i(22017),	-- Beastmaster's Pants
					},
				}),
				q(8959, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(21995),	-- Boots of Heroism
						i(22000),	-- Legplates of Heroism
					},
				}),
				q(8956, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
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
					["g"] = {
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
					["g"] = {
						i(5396),	-- Key to Searing Gorge
					},
				}),
				q(8997, {	-- Back to the Beginning
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
				}),
				q(3371, {	-- Dwarven Justice
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
				}),
				q(2039, {	-- Find Bingles
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 6569,	-- Gnoarn
				}),
				q(707, {	-- Ironband Wants You!
					["qg"] = 1356,	-- Prospector Stormpike
					["coord"] = { 74.64, 11.74, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(8932, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22062),	-- Sorcerer's Belt
						i(22066),	-- Sorcerer's Gloves
					},
				}),
				q(8935, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22002),	-- Darkmantle Belt
						i(22006),	-- Darkmantle Gloves
					},
				}),
				q(8931, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22010),	-- Beastmaster's Belt
						i(22015),	-- Beastmaster's Gloves
					},
				}),
				q(8926, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22106),	-- Feralheart Belt
						i(22110),	-- Feralheart Gloves
					},
				}),
				q(8933, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22086),	-- Soulforge Belt
						i(22090),	-- Soulforge Gauntlets
					},
				}),
				q(8934, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22078),	-- Virtuous Belt
						i(22081),	-- Virtuous Gloves
					},
				}),
				q(8936, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22070),	-- Deathmist Belt
						i(22077),	-- Deathmist Wraps
					},
				}),
				q(8937, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(21994),	-- Belt of Heroism
						i(21998),	-- Gauntlets of Heroism
					},
				}),
				q(4341, {	-- Kharan Mighthammer
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2784,	-- King Magni Bronzebeard <Lord of Ironforge>
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
				q(1453, {	-- Reclaimers' Business in Desolace
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5637,	-- Roetten Stonehammer
				}),
				q(8977, {	-- Return to Deliana
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
					["g"] = {
						i(10707),	-- Steelsmith Greaves
						i(10708),	-- Skullspell Orb
					},
				}),
				q(683, {	-- Sara Balloo's Plea
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2695,	-- Sara Balloo
				}),
				q(9003, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22080),	-- Virtuous Crown
						i(22083),	-- Virtuous Robe
					},
				}),
				q(9001, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22065),	-- Sorcerer's Crown
						i(22069),	-- Sorcerer's Robes
					},
				}),
				q(8999, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22109),	-- Feralheart Cowl
						i(22113),	-- Feralheart Vest
					},
				}),
				q(9006, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(21999),	-- Helm of Heroism
						i(21997),	-- Breastplate of Heroism
					},
				}),
				q(9005, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22074),	-- Deathmist Mask
						i(22075),	-- Deathmist Robe
					},
				}),
				q(9000, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22013),	-- Beastmaster's Cap
						i(22060),	-- Beastmaster's Tunic
					},
				}),
				q(9004, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22005),	-- Darkmantle Cap
						i(22009),	-- Darkmantle Tunic
					},
				}),
				q(9002, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22091),	-- Soulforge Helm
						i(22089),	-- Soulforge Breastplate
					},
				}),
				q(2946, {	-- Seeing What Happens
					["lvl"] = 45,
					["races"] = ALLIANCE_ONLY,
				}),
				q(3483, {	-- Signal for Pickup
					["lvl"] = 45,
					["g"] = {
						i(10444),	-- Standard Issue Flare Gun
					},
				}),
				q(3451, {	-- Signal for Pickup
					["lvl"] = 45,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(10444),	-- Standard Issue Flare Gun
					},
				}),
				q(2041, {	-- Speak with Shoni
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 6569,	-- Gnoarn
					["isBreadcrumb"] = true,
				}),
				q(637, {	-- Sully Balloo's Letter
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
				}),
				q(8275, {	-- Taking Back Silithus
					["lvl"] = 54,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 15187,	-- Cenarion Emissary Jademoon
				}),
				q(7905, {	-- The Darkmoon Faire
					["lvl"] = 6,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 14842,	-- Melnan Darkstone
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(6721, {	-- The Hunter's Path
					["qg"] = 5117,	-- Regnus Thundergranite <Hunter Trainer>
					["coord"] = { 69.87, 82.89, IRONFORGE },
					["races"] = { 4 },	-- Night Elf Only
					["classes"] = { 3 },	-- Hunter Only!
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
				q(3701, {	-- The Smoldering Ruins of Thaurissan
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 8879,	-- Royal Historian Archesonus
					["g"] = {
						i(12102),	-- Ring of the Aristocrat
					},
				}),
				q(3702, {	-- The Smoldering Ruins of Thaurissan
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 8879,	-- Royal Historian Archesonus
				}),
			}),
		}),
	}),
};