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
					["lvl"] = 50,
					["qg"] = 12384,	-- Augustus the Touched
				}),
				q(5152, {	-- Auntie Marlene
					["qg"] = 10926,	-- Pamela Redpath
					["sourceQuest"] = 5149,	-- Pamela's Doll
					["coord"] = { 36.4, 90.8, EASTERN_PLAGUELANDS },
					["lvl"] = 50,
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
					["qg"] = 1855,	-- Tirion Fordring
					["coord"] = { 7.6, 43.6, EASTERN_PLAGUELANDS },
					["lvl"] = 52,
				}),
				q(9665, {	-- Bolstering Our Defenses
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
					["qg"] = 17072,	-- Emmisary Gormok
				}),
				q(9127, {	-- Bone Fragments
					["qg"] = 16131,	-- Rohan the Assassin
					["sourceQuest"] = 9126,	-- Bonescythe Digs
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["cost"] = {
						{ "i", 22526, 30 },	-- Bone Fragments
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
					},
				}),
				q(9126, {	-- Bonescythe Digs
					["qg"] = 16131,	-- Rohan the Assassin
					["u"] = 3,	-- Added in later phase
					["cost"] = {
						{ "i", 22526, 30 },	-- Bone Fragments
					},
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
					},
				}),
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
					["cost"] = {
						{ "i", 12844, 25 },	-- Argent Dawn Valor Token
					},
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
				q(9142, {	-- Craftsman's Writ
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22568),	-- Sealed Craftsman's Writ
					},
				}),
				q(9188, {	-- Craftsman's Writ - Brightcloth Pants
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9178, {	-- Craftsman's Writ - Dense Weightstone
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9197, {	-- Craftsman's Writ - Gnomish Battle Chicken
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9195, {	-- Craftsman's Writ - Goblin Sapper Charge
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9201, {	-- Craftsman's Writ - Greater Arcane Protection Potion
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9182, {	-- Craftsman's Writ - Huge Thorium Battleaxe
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9179, {	-- Craftsman's Writ - Imperial Plate Chest
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9206, {	-- Craftsman's Writ - Lightning Eel
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9202, {	-- Craftsman's Writ - Major Healing Potion
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9200, {	-- Craftsman's Writ - Major Mana Potion
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9205, {	-- Craftsman's Writ - Plated Armorfish
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9203, {	-- Craftsman's Writ - Potion of Petrification
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9183, {	-- Craftsman's Writ - Radiant Circlet
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9185, {	-- Craftsman's Writ - Rugged Armor Kit
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9191, {	-- Craftsman's Writ - Runecloth Bag
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9190, {	-- Craftsman's Writ - Runecloth Boots
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9194, {	-- Craftsman's Writ - Runecloth Robe
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9187, {	-- Craftsman's Writ - Runic Leather Pants
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9204, {	-- Craftsman's Writ - Stonescale Eel
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9196, {	-- Craftsman's Writ - Thorium Grenade
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9198, {	-- Craftsman's Writ - Thorium Tube
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9181, {	-- Craftsman's Writ - Volcanic Hammer
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9186, {	-- Craftsman's Writ - Wicked Leather Belt
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9184, {	-- Craftsman's Writ - Wicked Leather Headband
					["repeatable"] = true,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9125, {	-- Crypt Fiend Parts
					["qg"] = 16132,	-- Huntsman Leopold
					["races"] = ALLIANCE_ONLY,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
					},
				}),
				q(9124, {	-- Cryptstalker Armor Doesn't Make Itself...
					["qg"] = 16132,	-- Huntsman Leopold
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22524),	-- Insignia of the Crusade
					},
				}),
				q(9132, {	-- Dark Iron Scraps
					["qg"] = 16112,	-- Korfax, Champion of the Light
					["races"] = ALLIANCE_ONLY,
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
					["g"] = {
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(5211, {	-- Defenders of Darrowshire
					["lvl"] = 50,
					["qg"] = 11063,	-- Carlin Redpath
				}),
				q(5542, {	-- Demon Dogs
					["qg"] = 1855,	-- Tirion Fordring
					["coord"] = { 7.6, 43.6, EASTERN_PLAGUELANDS },
					["lvl"] = 52,
				}),
				q(6135, {	-- Duskwing, Oh How I Hate Thee...
					["qg"] = 11878,	-- Nathanos Blightcaller
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
				q(9228, {	-- Epic Armaments of Battle - Exalted Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, EXALTED },	-- Argent Dawn
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
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
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, FRIENDLY },	-- Argent Dawn
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
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
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, HONORED },	-- Argent Dawn
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
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
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, REVERED },	-- Argent Dawn
					["u"] = 3,	-- Added in later phase
					["lvl"] = 55,
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
					["provider"] = { "o", 177667 },	-- Torn Scroll
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
					["lvl"] = 50,
					["qg"] = 11063,	-- Carlin Redpath
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
					["sourceQuest"] = 5181,	-- Villains of Darrowshire
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
					["lvl"] = 56,
					["races"] = HORDE_ONLY,
					["qg"] = 11878,	-- Nathanos Blightcaller
					["sourceQuest"] = 6145,	-- The Crimson Courier
					["g"] = {
						i(15875),	-- Rotten Apple
					},
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
					["cost"] = {
						{ "i", 15314, 1 },	-- Bundle of Relics
					},
					["lvl"] = 50,
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
					["qg"] = 11878,	-- Nathanos Blightcaller
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
					["lvl"] = 53,
					["races"] = ALLIANCE_ONLY,
				}),
				q(6042, {	-- Un-Life's Little Annoyances
					["lvl"] = 54,
					["races"] = HORDE_ONLY,
					["qg"] = 11878,	-- Nathanos Blightcaller
				}),
				q(5241, {	-- Uncle Carlin
					["qg"] = 10926,	-- Pamela Redpath
					["sourceQuest"] = 5149,	-- Pamela's Doll
					["coord"] = { 36.4, 90.8, EASTERN_PLAGUELANDS },
					["lvl"] = 50,
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
					["qg"] = 11038,	-- Caretaker Alen
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