---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(EASTERN_PLAGUELANDS, {	-- Eastern Plaguelands
			n(-17, {	-- Quests
				q(8947, {	-- Anthion's Strange Request
					["u"] = 3,	-- Added in later phase
					["lvl"] = 58,
				}),
				q(5503, {	-- Argent Dawn Commission
					["lvl"] = 50,
					["g"] = {
						i(12846),	-- Argent Dawn Commission
					},
				}),
				q(6164, {	-- Augustus' Receipt Book
					["lvl"] = 50,
					["qg"] = 12384,	-- Augustus the Touched
				}),
				q(5152, {	-- Auntie Marlene
					["lvl"] = 50,
					["qg"] = 10926,	-- Pamela Redpath
				}),
				q(9131, {	-- Binding the Dreadnaught
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16112,	-- Korfax, Champion of the Light
					["g"] = {
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(5543, {	-- Blood Tinged Skies
					["lvl"] = 52,
					["qg"] = 1855,	-- Tirion Fordring
				}),
				q(9665, {	-- Bolstering Our Defenses
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
					["qg"] = 17072,	-- Emmisary Gormok
				}),
				q(9127, {	-- Bone Fragments
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["qg"] = 16131,	-- Rohan the Assassin
					["g"] = {
						i(22524),	-- Insignia of the Crusade
					},
				}),
				q(9126, {	-- Bonescythe Digs
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["qg"] = 16131,	-- Rohan the Assassin
					["g"] = {
						i(22524),	-- Insignia of the Crusade
					},
				}),
				q(5544, {	-- Carrion Grubbage
					["lvl"] = 52,
					["qg"] = 1855,	-- Tirion Fordring
				}),
				q(5517, {	-- Chromatic Mantle of the Dawn
					["lvl"] = 55,
					["g"] = {
						i(18182),	-- Chromatic Mantle of the Dawn
					},
				}),
				q(9129, {	-- Core of Elements
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(5508, {	-- Corruptor's Scourgestones
					["lvl"] = 50,
					["repeatable"] = true,
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff
					["g"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(9142, {	-- Craftsman's Writ
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22568),	-- Sealed Craftsman's Writ
					},
				}),
				q(9188, {	-- Craftsman's Writ - Brightcloth Pants
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9178, {	-- Craftsman's Writ - Dense Weightstone
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9197, {	-- Craftsman's Writ - Gnomish Battle Chicken
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9195, {	-- Craftsman's Writ - Goblin Sapper Charge
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9201, {	-- Craftsman's Writ - Greater Arcane Protection Potion
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9182, {	-- Craftsman's Writ - Huge Thorium Battleaxe
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9179, {	-- Craftsman's Writ - Imperial Plate Chest
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9206, {	-- Craftsman's Writ - Lightning Eel
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9202, {	-- Craftsman's Writ - Major Healing Potion
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9200, {	-- Craftsman's Writ - Major Mana Potion
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9205, {	-- Craftsman's Writ - Plated Armorfish
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9203, {	-- Craftsman's Writ - Potion of Petrification
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9183, {	-- Craftsman's Writ - Radiant Circlet
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9185, {	-- Craftsman's Writ - Rugged Armor Kit
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9191, {	-- Craftsman's Writ - Runecloth Bag
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9190, {	-- Craftsman's Writ - Runecloth Boots
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9194, {	-- Craftsman's Writ - Runecloth Robe
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9187, {	-- Craftsman's Writ - Runic Leather Pants
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9204, {	-- Craftsman's Writ - Stonescale Eel
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9196, {	-- Craftsman's Writ - Thorium Grenade
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9198, {	-- Craftsman's Writ - Thorium Tube
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9181, {	-- Craftsman's Writ - Volcanic Hammer
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9186, {	-- Craftsman's Writ - Wicked Leather Belt
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9184, {	-- Craftsman's Writ - Wicked Leather Headband
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["repeatable"] = true,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9125, {	-- Crypt Fiend Parts
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16132,	-- Huntsman Leopold
					["g"] = {
						i(22524),	-- Insignia of the Crusade
					},
				}),
				q(9124, {	-- Cryptstalker Armor Doesn't Make Itself...
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["qg"] = 16132,	-- Huntsman Leopold
					["g"] = {
						i(22524),	-- Insignia of the Crusade
					},
				}),
				q(9132, {	-- Dark Iron Scraps
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16112,	-- Korfax, Champion of the Light
					["g"] = {
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(5211, {	-- Defenders of Darrowshire
					["lvl"] = 50,
					["qg"] = 11063,	-- Carlin Redpath
				}),
				q(5542, {	-- Demon Dogs
					["lvl"] = 52,
					["qg"] = 1855,	-- Tirion Fordring
				}),
				q(6135, {	-- Duskwing, Oh How I Hate Thee...
					["lvl"] = 56,
					["races"] = HORDE_ONLY,
					["qg"] = 11878,	-- Nathanos Blightcaller
					["g"] = {
						i(16994),	-- Duskwing Gloves
						i(16995),	-- Duskwing Mantle
					},
				}),
				q(9228, {	-- Epic Armaments of Battle - Exalted Amongst the Dawn
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock
					["minReputation"] = { 529, EXALTED },	-- Argent Dawn
					["g"] = {
						i(22657),	-- Amulet of the Dawn
						i(22667),	-- Bracers of Hope
						i(22668),	-- Bracers of Subterfuge
						i(22659),	-- Medallion of the Dawn
						i(22678),	-- Talisman of Ascendance
						i(22656),	-- The Purifier
					},
				}),
				q(9222, {	-- Epic Armaments of Battle - Friend of the Dawn
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock
					["minReputation"] = { 529, FRIENDLY },	-- Argent Dawn
					["g"] = {
						i(22657),	-- Amulet of the Dawn
						i(22667),	-- Bracers of Hope
						i(22668),	-- Bracers of Subterfuge
						i(22659),	-- Medallion of the Dawn
						i(22678),	-- Talisman of Ascendance
						i(22656),	-- The Purifier
					},
				}),
				q(9224, {	-- Epic Armaments of Battle - Honored Amongst the Dawn
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock
					["minReputation"] = { 529, HONORED },	-- Argent Dawn
					["g"] = {
						i(22657),	-- Amulet of the Dawn
						i(22667),	-- Bracers of Hope
						i(22668),	-- Bracers of Subterfuge
						i(22659),	-- Medallion of the Dawn
						i(22678),	-- Talisman of Ascendance
						i(22656),	-- The Purifier
					},
				}),
				q(9225, {	-- Epic Armaments of Battle - Revered Amongst the Dawn
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock
					["minReputation"] = { 529, REVERED },	-- Argent Dawn
					["g"] = {
						i(22657),	-- Amulet of the Dawn
						i(22667),	-- Bracers of Hope
						i(22668),	-- Bracers of Subterfuge
						i(22659),	-- Medallion of the Dawn
						i(22678),	-- Talisman of Ascendance
						i(22656),	-- The Purifier
					},
				}),
				q(9664, {	-- Establishing New Outposts
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["races"] = ALLIANCE_ONLY,
				}),
				q(5861, {	-- Find Myranda
					["lvl"] = 52,
					["qg"] = 1855,	-- Tirion Fordring
					["sourceQuest"] = 5848,	-- Of Love and Family
				}),
				q(5246, {	-- Fragments of the Past
					["lvl"] = 53,
					["qg"] = 10304,	-- Aurora Skycaller
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 5245,	-- Troubled Spirits of Kel'Theril
				}),
				q(5247, {	-- Fragments of the Past
					["lvl"] = 53,
					["qg"] = 10304,	-- Aurora Skycaller
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 5246,	-- Fragments of the Past
				}),
				q(6024, {	-- Hameya's Plea
					["lvl"] = 54,
					["provider"] = { "o", 177667 },	-- Torn Scroll
					["g"] = {
						i(15814),	-- Hameya's Slayer
						i(15815),	-- Hameya's Cloak
					},
				}),
				q(5168, {	-- Heroes of Darrowshire
					["lvl"] = 50,
					["qg"] = 11063,	-- Carlin Redpath
				}),
				q(5942, {	-- Hidden Treasures
					["lvl"] = 50,
					["sourceQuest"] = 5721,	-- The Battle of Darrowshire
					["g"] = {
						i(15855),	-- Ring of Protection
						i(15856),	-- Archlight Talisman
					},
				}),
				q(8929, {	-- In Search of Anthion
					["u"] = 3,	-- Added in later phase
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
				}),
				q(8930, {	-- In Search of Anthion
					["u"] = 3,	-- Added in later phase
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16012,	-- Mokvar
				}),
				q(5509, {	-- Invader's Scourgestones
					["lvl"] = 50,
					["repeatable"] = true,
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff
					["g"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(5142, {	-- Little Pamela
					["lvl"] = 50,
					["qg"] = 10927,	-- Marlene Redpath
				}),
				q(5264, {	-- Lord Maxwell Tyrosus
					["lvl"] = 55,
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff
					["sourceQuest"] = 5263,	-- Above and Beyond
				}),
				q(5513, {	-- Mantles of the Dawn
					["lvl"] = 55,
					["minReputation"] = { 529, REVERED },	-- Argent Dawn
				}),
				q(5206, {	-- Marauders of Darrowshire
					["lvl"] = 50,
					["qg"] = 11063,	-- Carlin Redpath
					["sourcequest"] = 5181,	-- Villains of Darrowshire
				}),
				q(5464, {	-- Menethil's Gift
					["lvl"] = 57,
					["provider"] = { "o", 176631 },	-- Menethil's Gift
					["sourceQuest"] = 5463,	-- Menethil's Gift
				}),
				q(5510, {	-- Minion's Scourgestones
					["lvl"] = 50,
					["repeatable"] = true,
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff
					["g"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(6146, {	-- Nathanos' Ruse
					["lvl"] = 56,
					["races"] = HORDE_ONLY,
					["qg"] = 11878,	-- Nathanos Blightcaller
					["sourcequest"] = 6145,	-- The Crimson Courier
					["g"] = {
						i(15875),	-- Rotten Apple
					},
				}),
				q(5781, {	-- Of Forgotten Memories
					["lvl"] = 52,
					["qg"] = 1855,	-- Tirion Fordring
					["sourceQuest"] = 5742,	-- Redemption
				}),
				q(5845, {	-- Of Lost Honor
					["lvl"] = 52,
					["qg"] = 1855,	-- Tirion Fordring
					["sourceQuest"] = 5781,	-- Of Forgotten Memories
				}),
				q(5846, {	-- Of Love and Family
					["lvl"] = 52,
					["qg"] = 1855,	-- Tirion Fordring
					["sourceQuest"] = 5845,	-- Of Lost Honor
				}),
				q(5149, {	-- Pamela's Doll
					["lvl"] = 50,
					["g"] = {
						i(12886),	-- Pamela's Doll's Head
						i(12887),	-- Pamela's Doll's Left Side
					},
				}),
				q(8946, {	-- Proof of Life
					["u"] = 3,	-- Added in later phase
					["lvl"] = 58,
					["qg"] = 16031,	-- Ysida Harmon
				}),
				q(5742, {	-- Redemption
					["lvl"] = 52,
					["qg"] = 1855,	-- Tirion Fordring
					["sourceQuests"] = {
						5543,	-- Blood Tinged Skies
						5544,	-- Carrion Grubbage						
						5542,	-- Demon Dogs
					},
				}),
				q(5941, {	-- Return to Chromie
					["lvl"] = 50,
					["qg"] = 11063,	-- Carlin Redpath
					["sourceQuest"] = 5206,	-- Marauders of Darrowshire
				}),
				q(6147, {	-- Return to Nathanos
					["lvl"] = 56,
					["qg"] = 11898,	-- Crusader Lord Valdelmar
					["sourceQuest"] = 6146,	-- Nathanos' Ruse
					["races"] = HORDE_ONLY,
				}),
				q(9136, {	-- Savage Flora
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
					["qg"] = 16135,	-- Rayne
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9137, {	-- Savage Fronds
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22523),	-- Insignia of the Dawn
						i(22524),	-- Insignia of the Crusade
					},
				}),
				q(9227, {	-- Superior Armaments of Battle - Exalted Amongst the Dawn
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["minReputation"] = { 529, EXALTED },	-- Argent Dawn
					["g"] = {
						i(22681),	-- Band of Piety
						i(22680),	-- Band of Resolution
						i(22688),	-- Verimonde's Last Resort
						i(22679),	-- Supply Bag
						i(22690),	-- Leggings of the Plague Hunter
						i(22689),	-- Sanctified Leather Helm
					},
				}),
				q(9221, {	-- Superior Armaments of Battle - Friend of the Dawn
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["minReputation"] = { 529, FRIENDLY },	-- Argent Dawn
					["g"] = {
						i(22681),	-- Band of Piety
						i(22680),	-- Band of Resolution
						i(22688),	-- Verimonde's Last Resort
						i(22679),	-- Supply Bag
						i(22690),	-- Leggings of the Plague Hunter
						i(22689),	-- Sanctified Leather Helm
					},
				}),
				q(9223, {	-- Superior Armaments of Battle - Honored Amongst the Dawn
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["minReputation"] = { 529, HONORED },	-- Argent Dawn
					["g"] = {
						i(22681),	-- Band of Piety
						i(22680),	-- Band of Resolution
						i(22688),	-- Verimonde's Last Resort
						i(22679),	-- Supply Bag
						i(22690),	-- Leggings of the Plague Hunter
						i(22689),	-- Sanctified Leather Helm
					},
				}),
				q(9226, {	-- Superior Armaments of Battle - Revered Amongst the Dawn
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["minReputation"] = { 529, REVERED },	-- Argent Dawn
					["g"] = {
						i(22681),	-- Band of Piety
						i(22680),	-- Band of Resolution
						i(22688),	-- Verimonde's Last Resort
						i(22679),	-- Supply Bag
						i(22690),	-- Leggings of the Plague Hunter
						i(22689),	-- Sanctified Leather Helm
					},
				}),
				q(6026, {	-- That's Asking A Lot
					["lvl"] = 54,
					["qg"] = 11033,	-- Smokey LaRue
				}),
				q(5265, {	-- The Argent Hold
					["lvl"] = 55,
					["g"] = {
						i(13246),	-- Argent Avenger
						i(13243),	-- Argent Defender
						i(13249),	-- Argent Crusader
					},
				}),
				q(5721, {	-- The Battle of Darrowshire
					["lvl"] = 55,
					["sourceQuest"] = 5941,	-- Return to Chromie
					["g"] = {
						i(15723),	-- Tea with Sugar
					},
				}),
				q(6144, {	-- The Call to Command
					["lvl"] = 56,
					["races"] = HORDE_ONLY,
					["qg"] = 11878,	-- Nathanos Blightcaller
				}),
				q(6136, {	-- The Corpulent One
					["lvl"] = 56,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(17002),	-- Ichor Spitter
						i(17003),	-- Skullstone Hammer
						i(17004),	-- Sarah's Guide
					},
				}),
				q(9128, {	-- The Elemental Equation
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 16116,	-- Archmage Angela Dosantos
					["g"] = {
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9211, {	-- The Ice Guard
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["races"] = HORDE_ONLY,
					["qg"] = 16133,	-- Mataus the Wrathcaster
					["g"] = {
						i(22636),	-- Ice Guard
					},
				}),
				q(6133, {	-- The Ranger Lord's Behest
					["lvl"] = 54,
					["races"] = HORDE_ONLY,
					["qg"] = 11878,	-- Nathanos Blightcaller
				}),
				q(5281, {	-- The Restless Souls
					["lvl"] = 55,
					["qg"] = 11038,	-- Caretaker Alen
				}),
				q(5282, {	-- The Restless Souls
					["lvl"] = 55,
					["qg"] = 11140,	-- Egan
					["sourceQuest"] = 5281,	-- The Restless Souls
				}),
				q(6148, {	-- The Scarlet Oracle, Demetria
					["lvl"] = 56,
					["races"] = HORDE_ONLY,
					["qg"] = 11878,	-- Nathanos Blightcaller
					["sourceQuest"] = 6147,	-- Return to Nathanos
					["g"] = {
						i(16996),	-- Gorewood Bow
						i(16997),	-- Stormrager
						i(16998),	-- Sacred Protector
					},
				}),
				q(9213, {	-- The Shadow Guard
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22638),	-- Shadow Guard
					},
				}),
				q(9141, {	-- They Call Me "The Rooster"
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(22568),	-- Sealed Craftsman's Writ
					},
				}),
				q(6022, {	-- To Kill With Purpose
					["lvl"] = 54,
					["races"] = HORDE_ONLY,
					["qg"] = 11878,	-- Nathanos Blightcaller
					["g"] = {
						i(15447),	-- Living Rot
					},
				}),
				q(5248, {	-- Tormented By the Past
					["lvl"] = 53,
					["races"] = ALLIANCE_ONLY,
				}),
				q(6042, {	-- Un-Life's Little Annoyances
					["lvl"] = 54,
					["races"] = HORDE_ONLY,
					["qg"] = 11878,	-- Nathanos Blightcaller
				}),
				q(5241, {	-- Uncle Carlin
					["lvl"] = 50,
					["qg"] = 10926,	-- Pamela Redpath
				}),
				q(5181, {	-- Villains of Darrowshire
					["lvl"] = 50,
					["qg"] = 11063,	-- Carlin Redpath
				}),
				q(6041, {	-- When Smokey Sings, I Get Violent
					["lvl"] = 54,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(16992),	-- Smokey's Explosive Launcher
						i(16993),	-- Smokey's Fireshooter
						i(5951),	-- Moist Towelette
						i(17523),	-- Smokey's Drape
					},
				}),
				q(9165, {	-- Writ of Safe Passage
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["qg"] = 16226,	-- Guard Didier
					["g"] = {
						i(22523),	-- Insignia of the Dawn
						i(22524),	-- Insignia of the Crusade
					},
				}),
				q(6021, {	-- Zaeldarr the Outcast
					["lvl"] = 50,
					["qg"] = 11038,	-- Caretaker Alen
				}),
			}),
		}),
	}),
};