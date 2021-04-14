---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(EASTERN_PLAGUELANDS, {
			n(QUESTS, {
				q(5503, {	-- Argent Dawn Commission
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["lvl"] = 50,
					["g"] = {
						i(12846),	-- Argent Dawn Commission
					},
				}),
				q(6164, {	-- Augustus' Receipt Book
					["qg"] = 12384,	-- Augustus the Touched
					["coord"] = { 14.4, 33.6, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 15884, 1 },	-- Augustus' Receipt Book
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 15884,	-- Augustus' Receipt Book
							["questID"] = 6164,	-- Augustus' Receipt Book
							["coord"] = { 17.5, 31.2, EASTERN_PLAGUELANDS },
						},
					},
				}),
				q(5152, {	-- Auntie Marlene
					["qg"] = 10926,	-- Pamela Redpath
					["sourceQuest"] = 5149,	-- Pamela's Doll
					["coord"] = { 36.4, 90.8, EASTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				un(PHASE_SIX, q(9131, {	-- Binding the Dreadnaught
					["qg"] = 16112,	-- Korfax, Champion of the Light
					["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 22528, 30 },	-- Dark Iron Scraps
					},
					["lvl"] = 55,
					["g"] = {
						i(22523),	-- Insignia of the Dawn
					},
				})),
				q(5543, {	-- Blood Tinged Skies
					["qg"] = 1855,	-- Tirion Fordring
					["coord"] = { 7.6, 43.6, EASTERN_PLAGUELANDS },
					["lvl"] = 52,
				}),
				un(PHASE_SIX, q(9665, {	-- Bolstering Our Defenses
					["qg"] = 17072,	-- Emmisary Gormok
					["coord"] = { 80.0, 57.4, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- Capture Crown Guard Tower
							["coord"] = { 39.7, 75.4, EASTERN_PLAGUELANDS },
						}),
						objective(2, {	-- Capture Eastwall Tower
							["coord"] = { 67.4, 48.0, EASTERN_PLAGUELANDS },
						}),
						objective(3, {	-- Capture Northpass Tower
							["coord"] = { 56.6, 24.4, EASTERN_PLAGUELANDS },
						}),
						objective(4, {	-- Capture Plaguewood Tower
							["coord"] = { 22.0, 32.0, EASTERN_PLAGUELANDS },
						}),
					},
				})),
				un(PHASE_SIX, q(9127, {	-- Bone Fragments
					["qg"] = 16131,	-- Rohan the Assassin
					["sourceQuest"] = 9126,	-- Bonescythe Digs
					["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22526, 30 },	-- Bone Fragments
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
					},
				})),
				un(PHASE_SIX, q(9126, {	-- Bonescythe Digs
					["qg"] = 16131,	-- Rohan the Assassin
					["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 22526, 30 },	-- Bone Fragments
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
					},
				})),
				q(5544, {	-- Carrion Grubbage
					["qg"] = 1855,	-- Tirion Fordring
					["coord"] = { 7.6, 43.6, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13853, 15 },	-- Slab of Carrion Worm Meat
					},
					["lvl"] = 52,
				}),
				q(5517, {	-- Chromatic Mantle of the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["sourceQuest"] = 5513,	-- Mantles of the Dawn
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, EXALTED },	-- Argent Dawn
					["altQuests"] = {
						5517,	-- Chromatic Mantle of the Dawn
						5521,	-- Chromatic Mantle of the Dawn
						5524,	-- Chromatic Mantle of the Dawn
					},
					["cost"] = {
						{ "i", 12844, 25 },	-- Argent Dawn Valor Token
					},
					["lvl"] = 55,
					["g"] = {
						i(18182),	-- Chromatic Mantle of the Dawn
					},
				}),
				un(PHASE_SIX, q(9129, {	-- Core of Elements
					["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
					["sourceQuest"] = 9128,	-- The Elemental Equation
					["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22527, 30 },	-- Core of Elements
					},
					["lvl"] = 55,
					["g"] = {
						i(22523),	-- Insignia of the Dawn
					},
				})),
				q(5508, {	-- Corruptor's Scourgestones
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12843, 1 },	-- Corruptor's Scourgestone
					},
					["lvl"] = 50,
					["g"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				un(PHASE_SIX, q(9142, {	-- Craftsman's Writ
					["qg"] = 16212,	-- Dispatch Commander Metz <The Argent Dawn>
					["sourceQuest"] = 9141,	-- They Call Me "The Rooster"
					["coord"] = { 81.1, 57.5, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12844, 1 },	-- Argent Dawn Valor Token
					},
					["lvl"] = 55,
					["g"] = {
						i(22568, {	-- Sealed Craftsman's Writ
							i(22609),	-- Craftsman's Writ - Brightcloth Pants
							i(22600),	-- Craftsman's Writ - Dense Weightstone
							i(22621),	-- Craftsman's Writ - Flask of Petrification
							i(22615),	-- Craftsman's Writ - Gnomish Battle Chicken
							i(22613),	-- Craftsman's Writ - Goblin Sapper Charge
							i(22620),	-- Craftsman's Writ - Greater Arcane Protection Potion
							i(22603),	-- Craftsman's Writ - Huge Thorium Battleaxe
							i(22601),	-- Craftsman's Writ - Imperial Plate Chest
							i(22624),	-- Craftsman's Writ - Lightning Eel
							i(22618),	-- Craftsman's Writ - Major Healing Potion
							i(22617),	-- Craftsman's Writ - Major Mana Potion
							i(22623),	-- Craftsman's Writ - Plated Armorfish
							i(22604),	-- Craftsman's Writ - Radiant Circlet
							i(22606),	-- Craftsman's Writ - Rugged Armor Kit
							i(22611),	-- Craftsman's Writ - Runecloth Bag
							i(22610),	-- Craftsman's Writ - Runecloth Boots
							i(22612),	-- Craftsman's Writ - Runecloth Robe
							i(22608),	-- Craftsman's Writ - Runic Leather Pants
							i(22622),	-- Craftsman's Writ - Stonescale Eel
							i(22614),	-- Craftsman's Writ - Thorium Grenade
							i(22616),	-- Craftsman's Writ - Thorium Tube
							i(22602),	-- Craftsman's Writ - Volcanic Hammer
							i(22607),	-- Craftsman's Writ - Wicked Leather Belt
							i(22605),	-- Craftsman's Writ - Wicked Leather Headband
						}),
					},
				})),
				un(PHASE_SIX, q(9188, {	-- Craftsman's Writ - Brightcloth Pants
					["provider"] = { "i", 22609 },	-- Craftsman's Writ - Brightcloth Pants
					["repeatable"] = true,
					["cost"] = {
						{ "i", 14104, 6 },	-- Brightcloth Pants
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9178, {	-- Craftsman's Writ - Dense Weightstone
					["provider"] = { "i", 22600 },	-- Craftsman's Writ - Dense Weightstone
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12643, 120 },	-- Dense Weightstone
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9203, {	-- Craftsman's Writ - Flask of Petrification
					["provider"] = { "i", 22621 },	-- Craftsman's Writ - Flask of Petrification
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13506, 1 },	-- Flask of Petrification
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9197, {	-- Craftsman's Writ - Gnomish Battle Chicken
					["provider"] = { "i", 22615 },	-- Craftsman's Writ - Gnomish Battle Chicken
					["repeatable"] = true,
					["cost"] = {
						{ "i", 10725, 4 },	-- Gnomish Battle Chicken
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9195, {	-- Craftsman's Writ - Goblin Sapper Charge
					["provider"] = { "i", 22613 },	-- Craftsman's Writ - Goblin Sapper Charge
					["repeatable"] = true,
					["cost"] = {
						{ "i", 10646, 20 },	-- Goblin Sapper Charge
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9201, {	-- Craftsman's Writ - Greater Arcane Protection Potion
					["provider"] = { "i", 22620 },	-- Craftsman's Writ - Greater Arcane Protection Potion
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13461, 15 },	-- Greater Arcane Protection Potion
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9182, {	-- Craftsman's Writ - Huge Thorium Battleaxe
					["provider"] = { "i", 22603 },	-- Craftsman's Writ - Huge Thorium Battleaxe
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12775, 3 },	-- Huge Thorium Battleaxe
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9179, {	-- Craftsman's Writ - Imperial Plate Chest
					["provider"] = { "i", 22601 },	-- Craftsman's Writ - Imperial Plate Chest
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12422, 3 },	-- Imperial Plate Chest
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9206, {	-- Craftsman's Writ - Lightning Eel
					["provider"] = { "i", 22624 },	-- Craftsman's Writ - Lightning Eel
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13757, 30 },	-- Lightning Eel
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9202, {	-- Craftsman's Writ - Major Healing Potion
					["provider"] = { "i", 22618 },	-- Craftsman's Writ - Major Healing Potion
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13446, 20 },	-- Major Healing Potion
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9200, {	-- Craftsman's Writ - Major Mana Potion
					["provider"] = { "i", 22617 },	-- Craftsman's Writ - Major Mana Potion
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13444, 10 },	-- Major Mana Potion
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9205, {	-- Craftsman's Writ - Plated Armorfish
					["provider"] = { "i", 22623 },	-- Craftsman's Writ - Plated Armorfish
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13890, 30 },	-- Plated Armorfish
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9183, {	-- Craftsman's Writ - Radiant Circlet
					["provider"] = { "i", 22604 },	-- Craftsman's Writ - Radiant Circlet
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12417, 3 },	-- Radiant Circlet
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9185, {	-- Craftsman's Writ - Rugged Armor Kit
					["provider"] = { "i", 22606 },	-- Craftsman's Writ - Rugged Armor Kit
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15564, 25 },	-- Rugged Armor Kit
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9191, {	-- Craftsman's Writ - Runecloth Bag
					["provider"] = { "i", 22611 },	-- Craftsman's Writ - Runecloth Bag
					["repeatable"] = true,
					["cost"] = {
						{ "i", 14046, 8 },	-- Runecloth Bag
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9190, {	-- Craftsman's Writ - Runecloth Boots
					["provider"] = { "i", 22610 },	-- Craftsman's Writ - Runecloth Boots
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13864, 8 },	-- Runecloth Boots
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9194, {	-- Craftsman's Writ - Runecloth Robe
					["provider"] = { "i", 22612 },	-- Craftsman's Writ - Runecloth Robe
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13858, 8 },	-- Runecloth Robe
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9187, {	-- Craftsman's Writ - Runic Leather Pants
					["provider"] = { "i", 22608 },	-- Craftsman's Writ - Runic Leather Pants
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15095, 4 },	-- Runic Leather Pants
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9204, {	-- Craftsman's Writ - Stonescale Eel
					["provider"] = { "i", 22622 },	-- Craftsman's Writ - Stonescale Eel
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13422, 40 },	-- Stonescale Eel
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9196, {	-- Craftsman's Writ - Thorium Grenade
					["provider"] = { "i", 22614 },	-- Craftsman's Writ - Thorium Grenade
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15993, 20 },	-- Thorium Grenade
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9198, {	-- Craftsman's Writ - Thorium Tube
					["provider"] = { "i", 22616 },	-- Craftsman's Writ - Thorium Tube
					["repeatable"] = true,
					["cost"] = {
						{ "i", 16000, 14 },	-- Thorium Tube
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9181, {	-- Craftsman's Writ - Volcanic Hammer
					["provider"] = { "i", 22602 },	-- Craftsman's Writ - Volcanic Hammer
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12792, 3 },	-- Volcanic Hammer
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9186, {	-- Craftsman's Writ - Wicked Leather Belt
					["provider"] = { "i", 22607 },	-- Craftsman's Writ - Wicked Leather Belt
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15088, 9 },	-- Wicked Leather Belt
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9184, {	-- Craftsman's Writ - Wicked Leather Headband
					["provider"] = { "i", 22605 },	-- Craftsman's Writ - Wicked Leather Headband
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15086, 10 },	-- Wicked Leather Headband
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9125, {	-- Crypt Fiend Parts
					["qg"] = 16132,	-- Huntsman Leopold
					["sourceQuest"] = 9124,	-- Cryptstalker Armor Doesn't Make Itself...
					["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22525, 30 },	-- Crypt Fiend Parts
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
					},
				})),
				un(PHASE_SIX, q(9124, {	-- Cryptstalker Armor Doesn't Make Itself...
					["qg"] = 16132,	-- Huntsman Leopold
					["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 22525, 30 },	-- Crypt Fiend Parts
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
					},
				})),
				un(PHASE_SIX, q(9132, {	-- Dark Iron Scraps
					["qg"] = 16112,	-- Korfax, Champion of the Light
					["sourceQuest"] = 9131,	-- Binding the Dreadnaught
					["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22528, 30 },	-- Dark Iron Scraps
					},
					["lvl"] = 55,
					["g"] = {
						i(22523),	-- Insignia of the Dawn
					},
				})),
				q(5211, {	-- Defenders of Darrowshire
					["qg"] = 11063,	-- Carlin Redpath
					["sourceQuest"] = 5241,	-- Uncle Carlin
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(5542, {	-- Demon Dogs
					["qg"] = 1855,	-- Tirion Fordring
					["coord"] = { 7.6, 43.6, EASTERN_PLAGUELANDS },
					["lvl"] = 52,
				}),
				q(6135, {	-- Duskwing, Oh How I Hate Thee...
					["qg"] = 11878,	-- Nathanos Blightcaller
					["sourceQuest"] = 6133,	-- The Ranger Lord's Behest
					["coord"] = { 26.6, 74.8, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cr"] = 11897,	-- Duskwing
					["cost"] = {
						{ "i", 15850, 1 },	-- Patch of Duskwing's Fur
					},
					["lvl"] = 56,
					["g"] = {
						i(16994),	-- Duskwing Gloves
						i(16995),	-- Duskwing Mantle
					},
				}),
				un(PHASE_SIX, q(9228, {	-- Epic Armaments of Battle - Exalted Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, EXALTED },	-- Argent Dawn
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 27 },	-- Insignia of the Crusade
						{ "i", 22523, 27 },	-- Insignia of the Dawn
					},
					["lvl"] = 55,
					["g"] = {
						i(22657),	-- Amulet of the Dawn
						i(22667),	-- Bracers of Hope
						i(22668),	-- Bracers of Subterfuge
						i(22659),	-- Medallion of the Dawn
						i(22678),	-- Talisman of Ascendance
						i(22656),	-- The Purifier
					},
				})),
				un(PHASE_SIX, q(9222, {	-- Epic Armaments of Battle - Friend of the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, FRIENDLY },	-- Argent Dawn
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 110 },	-- Insignia of the Crusade
						{ "i", 22523, 110 },	-- Insignia of the Dawn
					},
					["lvl"] = 55,
					["g"] = {
						i(22657),	-- Amulet of the Dawn
						i(22667),	-- Bracers of Hope
						i(22668),	-- Bracers of Subterfuge
						i(22659),	-- Medallion of the Dawn
						i(22678),	-- Talisman of Ascendance
						i(22656),	-- The Purifier
					},
				})),
				un(PHASE_SIX, q(9224, {	-- Epic Armaments of Battle - Honored Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, HONORED },	-- Argent Dawn
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 75 },	-- Insignia of the Crusade
						{ "i", 22523, 75 },	-- Insignia of the Dawn
					},
					["lvl"] = 55,
					["g"] = {
						i(22657),	-- Amulet of the Dawn
						i(22667),	-- Bracers of Hope
						i(22668),	-- Bracers of Subterfuge
						i(22659),	-- Medallion of the Dawn
						i(22678),	-- Talisman of Ascendance
						i(22656),	-- The Purifier
					},
				})),
				un(PHASE_SIX, q(9225, {	-- Epic Armaments of Battle - Revered Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, REVERED },	-- Argent Dawn
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 45 },	-- Insignia of the Crusade
						{ "i", 22523, 45 },	-- Insignia of the Dawn
					},
					["lvl"] = 55,
					["g"] = {
						i(22657),	-- Amulet of the Dawn
						i(22667),	-- Bracers of Hope
						i(22668),	-- Bracers of Subterfuge
						i(22659),	-- Medallion of the Dawn
						i(22678),	-- Talisman of Ascendance
						i(22656),	-- The Purifier
					},
				})),
				un(PHASE_SIX, q(9664, {	-- Establishing New Outposts
					["qg"] = 17069,	-- Emissary Whitebeard
					["coord"] = { 81.3, 59.4, EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- Capture Crown Guard Tower
							["coord"] = { 39.7, 75.4, EASTERN_PLAGUELANDS },
						}),
						objective(2, {	-- Capture Eastwall Tower
							["coord"] = { 67.4, 48.0, EASTERN_PLAGUELANDS },
						}),
						objective(3, {	-- Capture Northpass Tower
							["coord"] = { 56.6, 24.4, EASTERN_PLAGUELANDS },
						}),
						objective(4, {	-- Capture Plaguewood Tower
							["coord"] = { 22.0, 32.0, EASTERN_PLAGUELANDS },
						}),
					},
				})),
				q(5246, {	-- Fragments of the Past (1/2)
					["qg"] = 10304,	-- Aurora Skycaller
					["sourceQuest"] = 5245,	-- Troubled Spirits of Kel'Theril
					["coord"] = { 53.4, 22, EASTERN_PLAGUELANDS },
					["maps"] = { AZSHARA },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13313, 1 },	-- Sacred Highborne Writings
					},
					["lvl"] = 53,
					["groups"] = {
						{
							["itemID"] = 13313,	-- Sacred Highborne Writings
							["questID"] = 5246,	-- Fragments of the Past (1/2)
							["coord"] = { 41.4, 52.5, AZSHARA }
						},
					},
				}),
				q(5247, {	-- Fragments of the Past (2/2)
					["qg"] = 10304,	-- Aurora Skycaller
					["sourceQuest"] = 5246,	-- Fragments of the Past (1/2)
					["coord"] = { 53.4, 22, EASTERN_PLAGUELANDS },
					["maps"] = { DIRE_MAUL, FERALAS, UNGORO_CRATER },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12655, 1 },	-- Enchanted Thorium Bar
						{ "i", 11562, 5 },	-- Crystal Restore
						{ "i", 16973, 1 },	-- Vial of Dire Water
					},
					["lvl"] = 53,
					["groups"] = {
						{
							["itemID"] = 16974,	-- Empty Water Vial
							["coord"] = { 42.70, 68.63, FERALAS },
							["groups"] = {
								{
									["itemID"] = 16973,	-- Vial of Dire Water
									["questID"] = 5247,	-- Fragments of the Past (2/2)
								},
							},
						},
					},
				}),
				q(6024, {	-- Hameya's Plea
					["provider"] = { "o", 177667 },	-- Torn Scroll
					["coord"] = { 27.3, 85.3, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 15767, 1 },	-- Hameya's Key
					},
					["lvl"] = 54,
					["g"] = {
						{
							["itemID"] = 15767,	-- Hameya's Key
							["questID"] = 6024,	-- Hameya's Plea
							["cr"] = 12248,	-- Infiltrator Hameya
							["coord"] = { 70.6, 18.8, EASTERN_PLAGUELANDS },
						},
						i(15814),	-- Hameya's Slayer
						i(15815),	-- Hameya's Cloak
					},
				}),
				q(5168, {	-- Heroes of Darrowshire
					["qg"] = 11063,	-- Carlin Redpath
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12954, 1 },	-- Davil's Libram
						{ "i", 12955, 1 },	-- Redpath's Shield
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 12954,	-- Davil's Libram
							["questID"] = 5168,	-- Heroes of Darrowshire
							["coord"] = { 42.4, 18.9, WESTERN_PLAGUELANDS },
						},
						{
							["itemID"] = 12955,	-- Redpath's Shield
							["questID"] = 5168,	-- Heroes of Darrowshire
							["coord"] = { 63.7, 57.2, WESTERN_PLAGUELANDS },
						},
					},
				}),
				q(5942, {	-- Hidden Treasures
					["qg"] = 10926,	-- Pamela Redpath
					["sourceQuest"] = 5721,	-- The Battle of Darrowshire
					["coord"] = { 36.4, 90.8, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 15328, 1 },	-- Joseph's Key
					},
					["lvl"] = 50,
					["g"] = {
						i(15855),  -- Ring of Protection
						i(15856),  -- Archlight Talisman
						i(15857),  -- Magebane Scion
					},
				}),
				q(5509, {	-- Invader's Scourgestones
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12841, 10 },	-- Invader's Scourgestones
					},
					["lvl"] = 50,
					["g"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(5513, {	-- Mantles of the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, REVERED },	-- Argent Dawn
					["cost"] = {
						{ "i", 12844, 10 },	-- Argent Dawn Valor Token
					},
					["lvl"] = 55,
				}),
				q(5206, {	-- Marauders of Darrowshire
					["qg"] = 11063,	-- Carlin Redpath
					["sourceQuests"] = {
						5181,	-- Villains of Darrowshire
						5168,	-- Heroes of Darrowshire
						5154,	-- The Annals of Darrowshire
					},
					["cost"] = {
						{ "i", 13155, 5 },	-- Resonating Skull
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 13156,	-- Mystic Crystal
							["cost"] = {
								{ "i", 13157, 1 },	-- Fetid Skull
							},
							["groups"] = {
								{
									["itemID"] = 13155,	-- Resonating Skull
									["questID"] = 5206,	-- Marauders of Darrowshire
									["cr"] = 8529,	-- Scourge Champion
								},
							},
						},
					},
				}),
				q(5510, {	-- Minion's Scourgestones
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12840, 20 },	-- Minion's Scourgestone
					},
					["lvl"] = 50,
					["g"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(6146, {	-- Nathanos' Ruse
					["qg"] = 11878,	-- Nathanos Blightcaller
					["sourceQuest"] = 6145,	-- The Crimson Courier
					["coord"] = { 26.6, 74.8, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15876, 1 },	-- Nathanos' Chest
						{ "i", 15875, 1 },	-- Rotten Apple
						{ "i", 13852, 1 },	-- The Grand Crusader's Command
					},
					["lvl"] = 56,
				}),
				q(5149, {	-- Pamela's Doll
					["qg"] = 10926,	-- Pamela Redpath
					["sourceQuests"] = {
						5142,	-- Little Pamela
						5601,	-- Sister Pamela
					},
					["coord"] = { 36.4, 90.8, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12886, 1 },	-- Pamela's Doll's Head
						{ "i", 12887, 1 },	-- Pamela's Doll's Left Side
						{ "i", 12888, 1 },	-- Pamela's Doll's Right Side
						{ "i", 12885, 1 },	-- Pamela's Doll
					},
					["lvl"] = 50,
					["g"] = {
						{
							["itemID"] = 12886,	-- Pamela's Doll's Head
							["questID"] = 5149,	-- Pamela's Doll
							["coords"] = {
								{ 39.6, 90.1, EASTERN_PLAGUELANDS },
								{ 38.1, 92.5, EASTERN_PLAGUELANDS },
								{ 39.6, 92.5, EASTERN_PLAGUELANDS },
							},
						},
						{
							["itemID"] = 12887,	-- Pamela's Doll's Left Side
							["questID"] = 5149,	-- Pamela's Doll
							["coords"] = {
								{ 38.2, 92.1, EASTERN_PLAGUELANDS },
								{ 29.6, 90.2, EASTERN_PLAGUELANDS },
								{ 39.6, 92.7, EASTERN_PLAGUELANDS },
							},
						},
						{
							["itemID"] = 12888,	-- Pamela's Doll's Right Side
							["questID"] = 5149,	-- Pamela's Doll
							["coords"] = {
								{ 38.6, 92.7, EASTERN_PLAGUELANDS },
								{ 39.5, 92.5, EASTERN_PLAGUELANDS },
								{ 39.6, 90.0, EASTERN_PLAGUELANDS },
							},
						},
					},
				}),
				q(5941, {	-- Return to Chromie
					["qg"] = 11063,	-- Carlin Redpath
					["sourceQuest"] = 5206,	-- Marauders of Darrowshire
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 15314, 1 },	-- Bundle of Relics
					},
					["lvl"] = 50,
				}),
				q(6147, {	-- Return to Nathanos
					["qg"] = 11898,	-- Crusader Lord Valdelmar
					["sourceQuest"] = 6146,	-- Nathanos' Ruse
					["coord"] = { 88.2, 86.2, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 56,
				}),
				un(PHASE_SIX, q(9136, {	-- Savage Flora
					["qg"] = 16135,	-- Rayne
					["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 22529, 30 },	-- Savage Frond
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9137, {	-- Savage Fronds
					["qg"] = 16135,	-- Rayne
					["sourceQuest"] = 9136,	-- Savage Flora
					["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22529, 30 },	-- Savage Frond
					},
					["lvl"] = 55,
					["g"] = {
						i(22523),	-- Insignia of the Dawn
						i(22524),	-- Insignia of the Crusade
					},
				})),
				un(PHASE_SIX, q(9227, {	-- Superior Armaments of Battle - Exalted Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["minReputation"] = { 529, EXALTED },	-- Argent Dawn
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 6 },	-- Insignia of the Crusade
						{ "i", 22523, 6 },	-- Insignia of the Dawn
					},
					["lvl"] = 55,
					["g"] = {
						i(22681),	-- Band of Piety
						i(22680),	-- Band of Resolution
						i(22688),	-- Verimonde's Last Resort
						i(22679),	-- Supply Bag
						i(22690),	-- Leggings of the Plague Hunter
						i(22689),	-- Sanctified Leather Helm
					},
				})),
				un(PHASE_SIX, q(9221, {	-- Superior Armaments of Battle - Friend of the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["minReputation"] = { 529, FRIENDLY },	-- Argent Dawn
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 30 },	-- Insignia of the Crusade
						{ "i", 22523, 30 },	-- Insignia of the Dawn
					},
					["lvl"] = 55,
					["g"] = {
						i(22681),	-- Band of Piety
						i(22680),	-- Band of Resolution
						i(22688),	-- Verimonde's Last Resort
						i(22679),	-- Supply Bag
						i(22690),	-- Leggings of the Plague Hunter
						i(22689),	-- Sanctified Leather Helm
					},
				})),
				un(PHASE_SIX, q(9223, {	-- Superior Armaments of Battle - Honored Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["minReputation"] = { 529, HONORED },	-- Argent Dawn
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 20 },	-- Insignia of the Crusade
						{ "i", 22523, 20 },	-- Insignia of the Dawn
					},
					["lvl"] = 55,
					["g"] = {
						i(22681),	-- Band of Piety
						i(22680),	-- Band of Resolution
						i(22688),	-- Verimonde's Last Resort
						i(22679),	-- Supply Bag
						i(22690),	-- Leggings of the Plague Hunter
						i(22689),	-- Sanctified Leather Helm
					},
				})),
				un(PHASE_SIX, q(9226, {	-- Superior Armaments of Battle - Revered Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["minReputation"] = { 529, REVERED },	-- Argent Dawn
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 7 },	-- Insignia of the Crusade
						{ "i", 22523, 7 },	-- Insignia of the Dawn
					},
					["lvl"] = 55,
					["g"] = {
						i(22681),	-- Band of Piety
						i(22680),	-- Band of Resolution
						i(22688),	-- Verimonde's Last Resort
						i(22679),	-- Supply Bag
						i(22690),	-- Leggings of the Plague Hunter
						i(22689),	-- Sanctified Leather Helm
					},
				})),
				q(6026, {	-- That's Asking A Lot
					["qg"] = 11033,	-- Smokey LaRue
					["coord"] = { 80.6, 58.0, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 10562, 8 },	-- Hi-Explosive Bomb
						{ "i", 10560, 8 },	-- Unstable Trigger
						{ "i", 12359, 2 },	-- Thorium Bar
						{ "i", 11128, 1 },	-- Golden Rod
					},
					["lvl"] = 54,
				}),
				q(7622, {	-- The Balance of Light and Shadow
					["qg"] = 14494,	-- Eris Havenfire
					["coord"] = { 20.8, 18.4, EASTERN_PLAGUELANDS },
					["classes"] = { PRIEST },
					["lvl"] = 60,
					["g"] = {
						i(18659, {	-- Splinter of Nordrassil
							["cost"] = {
								{ "i", 18646, 1 },	-- The Eye of Divinity
								{ "i", 18665, 1 },	-- The Eye of Shadow
							},
							["groups"] = {
								i(18609),	-- Anathema
								i(18608),	-- Benediction
							},
						}),
					},
				}),
				q(5721, {	-- The Battle of Darrowshire
					["qg"] = 10667,	-- Chromie
					["sourceQuest"] = 5941,	-- Return to Chromie
					["coord"] = { 39.4, 66.8, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 15209, 1 },	-- Relic Bundle
					},
					["lvl"] = 55,
					["g"] = {
						i(15723),	-- Tea with Sugar
					},
				}),
				q(6144, {	-- The Call to Command
					["qg"] = 11878,	-- Nathanos Blightcaller
					["coord"] = { 26.6, 74.8, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 56,
				}),
				q(6136, {	-- The Corpulent One
					["qg"] = 11878,	-- Nathanos Blightcaller
					["coord"] = { 26.6, 74.8, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cr"] = 11896,	-- Borelgore
					["lvl"] = 56,
					["g"] = {
						i(17002),	-- Ichor Spitter
						i(17003),	-- Skullstone Hammer
						i(17004),	-- Sarah's Guide
					},
				}),
				q(6145, {	-- The Crimson Courier
					["qg"] = 2425,	-- Varimathras
					["sourceQuest"] = 6144,	-- The Call to Command
					["coord"] = { 56.2, 92.6, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15868, 1 },	-- The Grand Crusader's Command
					},
					["lvl"] = 56,
					["groups"] = {
						{
							["itemID"] = 15868,	-- The Grand Crusader's Command
							["questID"] = 6145,	-- The Crimson Courier
							["cr"] = 12337,	-- Crimson Courier
						},
					},
				}),
				un(PHASE_SIX, q(9128, {	-- The Elemental Equation
					["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
					["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 22527, 30 },	-- Core of Elements
					},
					["g"] = {
						i(22523),	-- Insignia of the Dawn
					},
				})),
				un(PHASE_SIX, q(9211, {	-- The Ice Guard
					["qg"] = 16133,	-- Mataus the Wrathcaster
					["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 10 },	-- Insignia of the Crusade
						{ "g", 300000 },	-- 30g
					},
					["lvl"] = 60,
					["g"] = {
						i(22636),	-- Ice Guard
					},
				})),
				q(6133, {	-- The Ranger Lord's Behest
					["qg"] = 11878,	-- Nathanos Blightcaller
					["coord"] = { 26.6, 74.8, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15847, 1 },	-- Quel'Thalas Registry
					},
					["lvl"] = 54,
					["groups"] = {
						{
							["itemID"] = 15847,	-- Quel'Thalas Registry
							["questID"] = 6133,	-- The Ranger Lord's Behest
							["coord"] = { 52.1, 18.5, EASTERN_PLAGUELANDS },
						},
					},
				}),
				q(6148, {	-- The Scarlet Oracle, Demetria
					["qg"] = 11878,	-- Nathanos Blightcaller
					["sourceQuest"] = 6147,	-- Return to Nathanos
					["coord"] = { 26.6, 74.8, EASTERN_PLAGUELANDS },
					["cr"] = 12339,	-- Demetria <The Scarlet Oracle>
					["races"] = HORDE_ONLY,
					["lvl"] = 56,
					["g"] = {
						i(16996),	-- Gorewood Bow
						i(16997),	-- Stormrager
						i(16998),	-- Sacred Protector
					},
				}),
				un(PHASE_SIX, q(9213, {	-- The Shadow Guard
					["qg"] = 16133,	-- Mataus the Wrathcaster
					["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 10 },	-- Insignia of the Crusade
						{ "g", 300000 },	-- 30g
					},
					["lvl"] = 60,
					["g"] = {
						i(22638),	-- Shadow Guard
					},
				})),
				un(PHASE_SIX, q(9141, {	-- They Call Me "The Rooster"
					["qg"] = 16212,	-- Dispatch Commander Metz <The Argent Dawn>
					["coord"] = { 81.1, 57.5, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12844, 1 },	-- Argent Dawn Valor Token
					},
					["lvl"] = 55,
					["g"] = {
						i(22568),	-- Sealed Craftsman's Writ
					},
				})),
				q(6022, {	-- To Kill With Purpose
					["qg"] = 11878,	-- Nathanos Blightcaller
					["coord"] = { 26.6, 74.8, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15448, 1 },	-- Coagulated Rot
					},
					["lvl"] = 54,
					["g"] = {
						i(15454, {	-- Mortar and Pestle
							["cost"] = {
								{ "i", 15447, 7 },	-- Living Rot
							},
							["groups"] = {
								{
									["itemID"] = 15448,	-- Coagulated Rot
									["questID"] = 6022,	-- To Kill With Purpose
								},
							},
						}),
					},
				}),
				q(5248, {	-- Tormented By the Past
					["qg"] = 10304,	-- Aurora Skycaller
					["sourceQuest"] = 5247,	-- Fragments of the Past
					["coord"] = { 53.4, 22, EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13347, 1 },	-- Crystal of Zin-Malor (Provided)
					},
					["lvl"] = 53,
				}),
				q(6042, {	-- Un-Life's Little Annoyances
					["qg"] = 11878,	-- Nathanos Blightcaller
					["coord"] = { 26.6, 74.8, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				q(5241, {	-- Uncle Carlin
					["qg"] = 10926,	-- Pamela Redpath
					["sourceQuest"] = 5149,	-- Pamela's Doll
					["coord"] = { 36.4, 90.8, EASTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(5181, {	-- Villains of Darrowshire
					["qg"] = 11063,	-- Carlin Redpath
					["sourceQuest"] = 5210,	-- Brother Carlin
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12957, 1 },	-- Shattered Sword of Marduk
						{ "i", 12956, 1 },	-- Skull of Horgus
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 12957,	-- Shattered Sword of Marduk
							["questID"] = 5181,	-- Villains of Darrowshire
							["coord"] = { 53.9, 65.8, EASTERN_PLAGUELANDS },
						},
						{
							["itemID"] = 12956,	-- Skull of Horgus
							["questID"] = 5181,	-- Villains of Darrowshire
							["coord"] = { 51.1, 49.9, EASTERN_PLAGUELANDS },
						},
					},
				}),
				q(6041, {	-- When Smokey Sings, I Get Violent
					["qg"] = 11033,	-- Smokey LaRue
					["sourceQuest"] = 6026,	-- That's Asking A Lot
					["coord"] = { 80.6, 58.0, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 15736, 1 },	-- Smokey's Special Compound
					},
					["lvl"] = 54,
					["g"] = {
						i(16992),	-- Smokey's Explosive Launcher
						i(16993),	-- Smokey's Fireshooter
						i(5951),	-- Moist Towelette
						i(17523),	-- Smokey's Drape
					},
				}),
				un(PHASE_SIX, q(9165, {	-- Writ of Safe Passage
					["qg"] = 16226,	-- Guard Didier <Brotherhood of the Light>
					["description"] = "Twice per day, Guard Didier starts a caravan westward. Simply protect him and the mules, but if any of them die, it's over. After the caravan arrives at its destination, he will offer this quest.",
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22593, 1 },	-- Writ of Safe Passage
					},
					["lvl"] = 55,
					["g"] = {
						i(22523),	-- Insignia of the Dawn
						i(22524),	-- Insignia of the Crusade
					},
				})),
				q(6021, {	-- Zaeldarr the Outcast
					["qg"] = 11038,	-- Caretaker Alen
					["coord"] = { 79.4, 63.8, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 15785, 1 },	-- Zaeldarr's Head
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 15785,	-- Zaeldarr's Head
							["questID"] = 6021,	-- Zaeldarr the Outcast
							["cr"] = 12250,	-- Zaeldarr the Outcast
							["coord"] = { 27.6, 85.2, EASTERN_PLAGUELANDS },
						},
					},
				}),
			}),
		}),
	}),
};