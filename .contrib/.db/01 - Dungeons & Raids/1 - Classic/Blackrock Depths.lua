-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
_.Instances = { tier(1, {	-- Classic
	map(BLACKROCK_DEPTHS, {
		["description"] = "Once the capital city of the Dark Iron dwarves, this volcanic labyrinth now serves as the seat of power for Ragnaros the Firelord. Ragnaros has uncovered the secret to creating life from stone and plans to build an army of unstoppable golems to aid him in conquering the whole of Blackrock Mountain. Obsessed with defeating Nefarian and his draconic minions, Ragnaros will go to any extreme to achieve final victory.",
		["lvl"] = 48,
		["groups"] = {
			n(FACTIONS, {
				faction(59), 	-- Thorium Brotherhood
			}),
			n(QUESTS, {
				{
					["itemID"] = 18628,	-- Thorium Brotherhood Contract
					["questID"] = 7604,	-- A Binding Contract
					["qg"] = 12944,	-- Lokhtos Darkbargainer <The Thorium Brotherhood>
					["description"] = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
					["requireSkill"] = BLACKSMITHING,
					["cost"] = {
						{ "i", 17203, 1 },	-- Sulfuron Ingot
					},
					["lvl"] = 60,
					["groups"] = {
						i(18592),	-- Plans: Sulfuron Hammer
					},
				},
				{
					["itemID"] = 11446,	-- A Crumpled Up Note
					["questID"] = 4264,	-- A Crumpled Up Note
					["sourceQuest"] = 4242,	-- Abandoned Hope
					["description"] = "After completing the Abandoned Hope quest, kill trash until this item drops for you. If your group has not yet killed the Dark Keeper, they have a fairly high chance to drop this item as well.",
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				},
				{
					["questID"] = 4282,	-- A Shred of Hope
					["sourceQuest"] = 4264,	-- A Crumpled Up Note
					["qg"] = 9023,	-- Marshal Windsor
					["cost"] = {
						{ "i", 11464, 1 },	-- Marshal Windsor's Lost Information
						{ "i", 11465, 1 },	-- Marshal Windsor's Lost Information
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				},
				{
					["questID"] = 4022,	-- A Taste of Flame
					["sourceQuest"] = 3481,	-- Trinkets...
					["qg"] = 9459,	-- Cyrus Therepentous
					["altQuests"] = {
						4023,	-- A Taste of Flame
					},
					["description"] = "If you completed the quest 'Trinkets...' in Searing Gorge, you can complete this quest immediately without having to fight the elite dragon by bringing the Black Dragonflight Molt with you.",
					["coord"] = { 95.09, 31.56, BURNING_STEPPES },
					["maps"] = { BURNING_STEPPES },
					["cost"] = {
						{ "i", 10575, 1 },	-- Black Dragonflight Molt
					},
					["lvl"] = 52,
				},
				{
					["questID"] = 4023,	-- A Taste of Flame
					["altQuests"] = {
						4022,	-- A Taste of Flame
					},
					["qg"] = 9459,	-- Cyrus Therepentous
					["coord"] = { 95.09, 31.56, BURNING_STEPPES },
					["maps"] = { BURNING_STEPPES },
					["cost"] = {
						{ "i", 10575, 1 },	-- Black Dragonflight Molt
					},
					["lvl"] = 52,
				},
				{
					["questID"] = 4024,	-- A Taste of Flame
					["sourceQuest"] = 4023,	-- A Taste of Flame
					["qg"] = 9459,	-- Cyrus Therepentous
					["coord"] = { 95.09, 31.56, BURNING_STEPPES },
					["maps"] = { BURNING_STEPPES },
					["cr"] = 9016,	-- Bael'Gar
					["cost"] = {
						{ "i", 11231, 1 },	-- Altered Black Dragonflight Molt
						{ "i", 11230, 1 },	-- Encased Fiery Essence
					},
					["groups"] = {
						i(12066),	-- Shaleskin Cape
						i(12082),	-- Wyrmhide Spaulders
						i(12083),	-- Valconian Sash
					},
				},
				{
					["questID"] = 4242,	-- Abandoned Hope
					["sourceQuest"] = 4241,	-- Marshal Windsor
					["qg"] = 9023,	-- Marshal Windsor
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12018),	-- Conservator Helm
						i(12021),	-- Shieldplate Sabatons
						i(12041),	-- Windshear Leggings
					},
				},
				{
					["questID"] = 3981,	-- Commander Gor'shak
					["sourceQuest"] = 3907,	-- Disharmony of Fire (2/2)
					["qg"] = 9081,	-- Galamav the Marksman <Kargath Expeditionary Force>
					["coord"] = { 5.8, 47.6, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
				},
				{
					["questID"] = 3801,	-- Dark Iron Legacy (1/2)
					["description"] = "You must be a ghost in order to interact with this quest giver. He's in the middle of Blackrock Mountain on the floating island on top of his tomb.",
					["qg"] = 8888,	-- Franclorn Forgewright
					["maps"] = { BLACKROCK_MOUNTAIN },
					["lvl"] = 48,
				},
				{
					["questID"] = 3802,	-- Dark Iron Legacy (2/2)
					["sourceQuest"] = 3801,	-- Dark Iron Legacy (1/2)
					["qg"] = 8888,	-- Franclorn Forgewright
					["maps"] = { BLACKROCK_MOUNTAIN },
					["lvl"] = 48,
					["cost"] = {
						{ "i", 10999, 1 },	-- Ironfel
					},
					["groups"] = {
						{
							["itemID"] = 11000,	-- Shadowforge Key
							["questID"] = 3802,	-- Dark Iron Legacy (2/2)
						},
					},
				},
				{
					["questID"] = 3906,	-- Disharmony of Flame
					["qg"] = 9084,	-- Thunderheart <Kargath Expeditionary Force>
					["coord"] = { 3.3, 48.3, BADLANDS },
					["maps"] = { BLACKROCK_MOUNTAIN, BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["crs"] = {
						9026,	-- Overmaster Pyron
					},
				},
				{
					["questID"] = 3907,	-- Disharmony of Fire
					["sourceQuest"] = 3906,	-- Disharmony of Flame
					["qg"] = 9084,	-- Thunderheart <Kargath Expeditionary Force>
					["coord"] = { 3.3, 48.3, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["crs"] = {
						9017,	-- Lord Incendius
					},
					["groups"] = {
						i(12113),	-- Sunborne Cape
						i(12112),	-- Crypt Demon Bracers
						i(12114),	-- Nightfall Gloves
						i(12115),	-- Stalwart Clutch
					},
				},
				{
					["questID"] = 4182,	-- Dragonkin Menace
					["qg"] = 9562,	-- Helendis Riverhorn
					["description"] = "You should finish this full quest chain up to Marshal Windsor before joining a Blackrock Depths group.",
					["coord"] = { 85.8, 69.0, BURNING_STEPPES },
					["maps"] = { BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
				},
				{
					["questID"] = 6502,	-- Drakefire Amulet
					["sourceQuest"] = 6501,	-- The Dragon's Eye
					["qg"] = 10929,	-- Haleh
					["coord"] = { 54.55, 51.2, WINTERSPRING },
					["maps"] = { BLACKROCK_SPIRE, WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 16663, 1 },	-- Blood of the Black Dragon Champion
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 16309,	-- Drakefire Amulet
							["allianceQuestID"] = 6502,	-- Drakefire Amulet
							["hordeQuestID"] = 6602,	-- Blood of the Black Dragon Champion
						},
					},
				},
				{
					["questID"] = 6646,	-- Favor Amongst the Brotherhood, Blood of the Mountain
					["qg"] = 12944,	-- Lokhtos Darkbargainer
					["cost"] = {
						{ "i", 11382, 1 },	-- Blood of the Mountain
					},
					["repeatable"] = true,
					["lvl"] = 60,
				},
				{
					["questID"] = 6645,	-- Favor Amongst the Brotherhood, Core Leather
					["qg"] = 12944,	-- Lokhtos Darkbargainer
					["cost"] = {
						{ "i", 17012, 2 },	-- Core Leather
					},
					["repeatable"] = true,
					["lvl"] = 60,
				},
				{
					["questID"] = 6642,	-- Favor Amongst the Brotherhood, Dark Iron Ore
					["qg"] = 12944,	-- Lokhtos Darkbargainer
					["cost"] = {
						{ "i", 11370, 10 },	-- Dark Iron Ore
					},
					["repeatable"] = true,
					["lvl"] = 60,
				},
				{
					["questID"] = 6643,	-- Favor Amongst the Brotherhood, Fiery Core
					["qg"] = 12944,	-- Lokhtos Darkbargainer
					["cost"] = {
						{ "i", 17010, 1 },	-- Fiery Core
					},
					["repeatable"] = true,
					["lvl"] = 60,
				},
				{
					["questID"] = 6644,	-- Favor Amongst the Brotherhood, Lava Core
					["qg"] = 12944,	-- Lokhtos Darkbargainer
					["cost"] = {
						{ "i", 17011, 1 },	-- Lava Core
					},
					["repeatable"] = true,
					["lvl"] = 60,
				},
				{
					["questID"] = 4122,	-- Grark Lorkrub
					["qg"] = 9080,	-- Lexlort <Kargath Expeditionary Force>
					["coord"] = { 5.9, 47.6, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11286, 1 },	-- Thorium Shackles
					},
					["lvl"] = 52,
				},
				{
					["questID"] = 4126,	-- Hurley Blackbreath
					["sourceQuest"] = 4128,	-- Ragnar Thunderbrew
					["qg"] = 1267,	-- Ragnar Thunderbrew
					["coord"] = { 46.8, 52.4, DUN_MOROGH },
					["maps"] = { DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11312, 1 },	-- Lost Thunderbrew Recipe
					},
					["lvl"] = 50,
					["groups"] = {
						i(12000),	-- Limb Cleaver
						i(11964),	-- Swiftstrike Cudgel
						i(12003),	-- Dark Dwarven Lager
					},
				},
				{
					["questID"] = 4263,	-- Incendius!
					["sourceQuest"] = 4262,	-- Overmaster Pyron
					["qg"] = 9561,	-- Jalinda Sprig
					["coord"] = { 85.4, 70.1, BURNING_STEPPES },
					["maps"] = { BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["crs"] = {
						9017,	-- Lord Incendius
					},
					["groups"] = {
						i(12112),	-- Crypt Demon Bracers
						i(12114),	-- Nightfall Gloves
						i(12115),	-- Stalwart Clutch
						i(12113),	-- Sunborne Cape
					},
				},
				{
					["questID"] = 4322,	-- Jail Break!
					["sourceQuest"] = 4282,	-- A Shred of Hope
					["qg"] = 9023,	-- Marshal Windsor
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						i(12061),	-- Blade of Reckoning
						i(12062),	-- Skilled Fighting Blade
						i(12065),	-- Ward of the Elements
					},
				},
				{
					["questID"] = 4341,	-- Kharan Mighthammer
					["sourceQuest"] = 3701,	-- The Smoldering Ruins of Thaurissan (2/2)
					["qg"] = 2784,	-- King Magni Bronzebeard <Lord of Ironforge>
					["coord"] = { 39.09, 56.19, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				},
				{
					["questID"] = 4342,	-- Kharan's Tale
					["sourceQuest"] = 4341,	-- Kharan Mighthammer
					["qg"] = 9021,	-- Kharan Mighthammer
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				},
				{
					["questID"] = 4081,	-- KILL ON SIGHT: Dark Iron Dwarves
					["provider"] = { "o", 164867 },	-- WANTED
					["coord"] = { 3.9, 47.4, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
				},
				{
					["questID"] = 4082,	-- KILL ON SIGHT: High Ranking Dark Iron Officials
					["sourceQuest"] = 4081,	-- KILL ON SIGHT: Dark Iron Dwarves
					["provider"] = { "o", 164868 },	-- KILL ON SIGHT
					["coord"] = { 3.9, 47.4, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
				},
				{
					["questID"] = 4134,	-- Lost Thunderbrew Recipe
					["sourceQuest"] = 4133,	-- Vivian Lagrave
					["qg"] = 9078,	-- Shadowmage Vivian Lagrave <Kargath Expeditionary Force>
					["coord"] = { 2.9, 47.8, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11312, 1 },	-- Lost Thunderbrew Recipe
					},
					["lvl"] = 50,
					["groups"] = {
						i(12000),	-- Limb Cleaver
						i(11964),	-- Swiftstrike Cudgel
						i(3928),	-- Superior Healing Potion
						i(6149),	-- Greater Mana Potion
					},
				},
				{
					["questID"] = 4241,	-- Marshal Windsor
					["sourceQuest"] = 4224,	-- The True Masters (6/6)
					["qg"] = 9560,	-- Marshal Maxwell
					["coord"] = { 84.74, 69.02, BURNING_STEPPES },
					["maps"] = { BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
				},
				{
					["questID"] = 4132,	-- Operation: Death to Angerforge
					["sourceQuest"] = 4121,	-- Precarious Predicament
					["qg"] = 9077,	-- Warlord Goretooth <Kargath Expeditionary Force>
					["coord"] = { 5.8, 47.5, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
					["crs"] = {
						9033,	-- General Angerforge
					},
					["groups"] = {
						i(12059),	-- Conqueror's Medallion
					},
				},
				{
					["questID"] = 4262,	-- Overmaster Pyron
					["qg"] = 9561,	-- Jalinda Sprig
					["coord"] = { 85.4, 70.1, BURNING_STEPPES },
					["maps"] = { BLACKROCK_MOUNTAIN, BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["crs"] = {
						9026,	-- Overmaster Pyron
					},
				},
				{
					["questID"] = 4121,	-- Precarious Predicament
					["sourceQuest"] = 4122,	-- Grark Lorkrub
					["qg"] = 9520,	-- Grark Lorkrub
					["coord"] = { 40.2, 34.2, BURNING_STEPPES },
					["maps"] = { BURNING_STEPPES },
					["cost"] = {
						{ "i", 11286, 1 },	-- Thorium Shackles
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
				},
				{
					["questID"] = 4128,	-- Ragnar Thunderbrew
					["qg"] = 9540,	-- Enohar Thunderbrew
					["coord"] = { 63.6, 20.6, BLASTED_LANDS },
					["maps"] = { BLASTED_LANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["isBreadcrumb"] = true,
				},
				{
					["questID"] = 4136,	-- Ribbly Screwspigot
					["qg"] = 9544,	-- Yuka Screwspigot
					["coord"] = { 66.1, 21.9, BLASTED_LANDS },
					["maps"] = { BLASTED_LANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11313, 1 },	-- Ribbly's Head
					},
					["lvl"] = 48,
					["groups"] = {
						i(11963),	-- Penance Spaulders
						i(12049),	-- Splintsteel Armor
						i(11865),	-- Rancor Boots
					},
				},
				{
					["questID"] = 4295,	-- Rocknot's Ale
					["qg"] = 9503,	-- Private Rocknot
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11325, 2 }	-- Dark Iron Ale Mug
					},
					["lvl"] = 48,
				},
				{
					["questID"] = 6402,	-- Stormwind Rendezvous
					["sourceQuest"] = 4322,	-- Jail Break!
					["qg"] = 9560,	-- Marshal Maxwell
					["coord"] = { 84.7, 69.0, BURNING_STEPPES },
					["maps"] = { BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				},
				{
					["questID"] = 4361,	-- The Bearer of Bad News
					["sourceQuest"] = 4342,	-- Kharan's Tale
					["qg"] = 9021,	-- Kharan Mighthammer
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				},
				{
					["questID"] = 6501,	-- The Dragon's Eye
					["sourceQuest"] = 6403,	-- The Great Masquerade
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["coord"] = { 78.2, 18.1, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 16662,	-- Fragment of the Dragon's Eye
							["questID"] = 6501,	-- The Dragon's Eye
							["description"] = "Take this to Haleh in Winterspring. Use the blue rune on the ground inside the cave to reach her. Don't bother going to Dustwallow Marsh.",
						},
					},
				},
				{
					["questID"] = 4002,	-- The Eastern Kingdom
					["sourceQuest"] = 4001,	-- What Is Going On? (2/2)
					["qg"] = 4949,	-- Thrall <Warchief>
					["coord"] = { 31.61, 37.83, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
				},
				{
					["questID"] = 4362,	-- The Fate of the Kingdom
					["sourceQuest"] = 4361,	-- The Bearer of Bad News
					["qg"] = 2784,	-- King Magni Bronzebeard <Lord of Ironforge>
					["coord"] = { 39.09, 56.19, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["crs"] = {
						9019,	-- Emperor Dagran Thaurissan
					},
				},
				{
					["questID"] = 6403,	-- The Great Masquerade
					["sourceQuest"] = 6402,	-- Stormwind Rendezvous
					["qg"] = 12580,	-- Reginald Windsor
					["description"] = "This quest can be solo'd. Do NOT touch anything and let Bolvar take care of the dragons. They do heavy AOE, you will likely die unless you're in a raid group of 20+.",
					["coord"] = { 64.7, 76.8, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				},
				{
					["questID"] = 4286,	-- The Good Stuff
					["qg"] = 9177,	-- Oralius
					["coord"] = { 84.6, 68.7, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11468, 20 },	-- Dark Iron Fanny Pack
					},
					["lvl"] = 50,
					["groups"] = {
						i(11883),	-- A Dingy Fanny Pack
					},
				},
				{
					["questID"] = 4123,	-- The Heart of the Mountain
					["qg"] = 9536,	-- Maxwort Uberglint
					["coord"] = { 65.2, 23.9, BADLANDS },
					["maps"] = { BADLANDS },
					["cost"] = {
						{ "i", 11309, 1 },	-- The Heart of the Mountain
					},
					["lvl"] = 50,
				},
				{
					["questID"] = 7201,	-- The Last Element
					["sourceQuest"] = 3906,	-- Disharmony of Flame
					["qg"] = 9078,	-- Shadowmage Vivian Lagrave <Kargath Expeditionary Force>
					["coord"] = { 2.9, 47.76, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11129, 10 },	-- Essence of the Elements
					},
					["lvl"] = 50,
					["altQuests"] = {
						3911,	-- The Last Element [7201 and 3911 look identical, but WoWHead doesn't have much info on 3911]
					},
					["groups"] = {
						i(12038),	-- Lagrave's Seal
					},
				},
				{
					["questID"] = 4201,	-- The Love Potion
					["qg"] = 9500,	-- Mistress Nagmara
					["maps"] = { AZSHARA, UNGORO_CRATER },
					["cost"] = {
						{ "i", 8846, 4 },	-- Gromsblood
						{ "i", 11405, 10 },	-- Giant Silver Vein
						{ "i", 11413, 1 },	-- Nagmara's Filled Vial
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 11412,	-- Nagmara's Vial
							["questID"] = 4201,	-- The Love Potion
						},
						i(11962),	-- Manacle Cuffs
						i(11866),	-- Nagmara's Whipping Belt
					},
				},
				{
					["questID"] = 4004,	-- The Princess Saved?
					["sourceQuest"] = 4003,	-- The Royal Rescue
					["qg"] = 8929,	-- Princess Moira Bronzebeard <Princess of Ironforge>
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(12545),	-- Eye of Orgrimmar
						i(12544),	-- Thrall's Resolve
					},
				},
				{
					["questID"] = 4363,	-- The Princess's Surprise
					["sourceQuest"] = 4362,	-- The Fate of the Kingdom
					["qg"] = 8929,	-- Princess Moira Bronzebeard <Princess of Ironforge>
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						i(12548),	-- Magni's Will
						i(12543),	-- Songstone of Ironforge
					},
				},
				{
					["questID"] = 4061,	-- The Rise of the Machines (1/3)
					["qg"] = 9079,	-- Hierophant Theodora Mulvadania <Kargath Expeditionary Force>
					["coord"] = { 3.02, 47.81, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11266, 10 },	-- Fractured Elemental Shard
					},
					["lvl"] = 52,
				},
				{
					["questID"] = 4062,	-- The Rise of the Machines (2/3)
					["sourceQuest"] = 4061,	-- The Rise of the Machines (1/3)
					["qg"] = 9079,	-- Hierophant Theodora Mulvadania <Kargath Expeditionary Force>
					["coord"] = { 3.02, 47.81, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
					["cost"] = {
						{ "i", 11267, 1 },	-- Elemental Shard Sample
					},
				},
				{
					["questID"] = 4063,	-- The Rise of the Machines (3/3)
					["sourceQuest"] = 4062,	-- The Rise of the Machines (2/3)
					["qg"] = 2921,	-- Lotwil Veriatus
					["coord"] = { 25.95, 44.87, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11268, 1 },	-- Head of Argelmach
						{ "i", 11269, 10 },	-- Intact Elemental Core
					},
					["lvl"] = 52,
					["groups"] = {
						i(12110),	-- Raincaster Drape
						i(12109),	-- Azure Moon Amice
						i(12111),	-- Lavaplate Gauntlets
						i(12108),	-- Basaltscale Armor
					},
				},
				{
					["questID"] = 4003,	-- The Royal Rescue
					["sourceQuest"] = 4002,	-- The Eastern Kingdom
					["qg"] = 4949,	-- Thrall <Warchief>
					["coord"] = { 31.61, 37.83, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["crs"] = {
						9019,	-- Emperor Dagran Thaurissan
					},
				},
				{
					["questID"] = 3702,	-- The Smoldering Ruins of Thaurissan (1/2)
					["qg"] = 8879,	-- Royal Historian Archesonus
					["coord"] = { 38.37, 55.31, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				},
				{
					["questID"] = 3701,	-- The Smoldering Ruins of Thaurissan (2/2)
					["sourceQuest"] = 3702,	-- The Smoldering Ruins of Thaurissan (1/2)
					["qg"] = 8879,	-- Royal Historian Archesonus
					["coord"] = { 38.37, 55.31, IRONFORGE },
					["maps"] = { BURNING_STEPPES, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						i(12102),	-- Ring of the Aristocrat
					},
				},
				{
					["questID"] = 4083,		-- The Spectral Chalice
					["provider"] = { "o", 164869 },	-- The Spectral Chalice
					["description"] = "If you are a miner with 230 skill, speak with Gloom'rel so he will summon the Spectral Chalice to learn to smelt Dark Iron Ore.\nThe quest requires 2x Star Ruby, 20x Gold Bar, and 10x Truesilver Bar to complete.",
					["requireSkill"] = MINING,
					["cost"] = {
						{ "i", 7910, 2 },	-- Star Ruby
						{ "i", 3577, 20 },	-- Gold Bar
						{ "i", 6037, 10 },	-- Truesilver Bar
					},
					["crs"] = {
						9037,	-- Gloom'rel
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["recipeID"] = 14891,	-- Smelt Dark Iron (Recipe)
							["requireSkill"] = MINING,
						},
					},
				},
				{
					["questID"] = 4183,	-- The True Masters (1/6)
					["sourceQuest"] = 4182,	-- Dragonkin Menace
					["qg"] = 9562,	-- Helendis Riverhorn
					["coord"] = { 85.8, 69.0, BURNING_STEPPES },
					["maps"] = { BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11366, 1 },	-- Helendis Riverhorn's Letter
					},
					["lvl"] = 48,
				},
				{
					["questID"] = 4184,	-- The True Masters (2/6)
					["sourceQuest"] = 4183,	-- The True Masters (1/6)
					["qg"] = 344,	-- Magistrate Solomon
					["coord"] = { 30.0, 44.5, REDRIDGE_MOUNTAINS },
					["maps"] = { REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11367, 1 },	-- Solomon's Plea to Bolvar
					},
					["lvl"] = 48,
				},
				{
					["questID"] = 4185,	-- The True Masters (3/6)
					["sourceQuest"] = 4184,	-- The True Masters (2/6)
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["coord"] = { 78.2, 18.1, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
				},
				{
					["questID"] = 4186,	-- The True Masters (4/6)
					["sourceQuest"] = 4185,	-- The True Masters (3/6)
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["coord"] = { 78.2, 18.1, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11368, 1 },	-- Bolvar's Decree
					},
					["lvl"] = 48,
				},
				{
					["questID"] = 4223,	-- The True Masters (5/6)
					["sourceQuest"] = 4186,	-- The True Masters (4/6)
					["qg"] = 344,	-- Magistrate Solomon
					["coord"] = { 30.0, 44.5, REDRIDGE_MOUNTAINS },
					["maps"] = { REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
				},
				{
					["questID"] = 4224,	-- The True Masters (6/6)
					["sourceQuest"] = 4223,	-- The True Masters (5/6)
					["qg"] = 9560,	-- Marshal Maxwell
					["coord"] = { 84.74, 69.02, BURNING_STEPPES },
					["maps"] = { BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						{
							["npcID"] = 9563,	-- Ragged John
							["questID"] = 4224,	-- The True Masters (6/6)
							["coord"] = { 65.0, 23.8, BURNING_STEPPES },
						},
					},
				},
				{
					["questID"] = 4133,	-- Vivian Lagrave
					["qg"] = 5204,	-- Apothecary Zinge <Royal Apothecary Society>
					["coord"] = { 50.1, 68.0, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
					["isBreadcrumb"] = true,
				},
				{
					["questID"] = 3982,	-- What Is Going On? (1/2)
					["sourceQuest"] = 3981,	-- Commander Gor'shak
					["qg"] = 9020,	-- Commander Gor'shak <Kargath Expeditionary Force>
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
				},
				{
					["questID"] = 4001,	-- What Is Going On? (2/2)
					["sourceQuest"] = 3982,	-- What Is Going On? (1/2)
					["qg"] = 9020,	-- Commander Gor'shak <Kargath Expeditionary Force>
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
				},
				{
					["questID"] = 4324,	-- Yuka Screwspigot
					["qg"] = 9706,	-- Yorba Screwspigot
					["coord"] = { 67.0, 24.0, TANARIS },
					["maps"] = { TANARIS },
					["isBreadcrumb"] = true,
					["lvl"] = 48,
				},
			}),
			n(ZONEDROPS, {
				{
					["itemID"] = 11468,	-- Dark Iron Fanny Pack
					["questID"] = 4286,	-- The Good Stuff
					["races"] = ALLIANCE_ONLY,
				},
				{
					["itemID"] = 11129,	-- Essence of the Elements
					["questID"] = 7201,	-- The Last Element
					["races"] = HORDE_ONLY,
				},
				{
					["itemID"] = 11269,	-- Intact Elemental Core
					["questID"] = 4063,	-- The Rise of the Machines
					["races"] = HORDE_ONLY,
				},
				i(12546),	-- Aristocratic Cuffs
				i(12555),	-- Battlechaser's Greaves
				i(12552),	-- Blisterbane Wrap
				i(12549),	-- Braincage
				i(18945),	-- Dark Iron Residue
				un(PHASE_FIVE, i(22528)),	-- Dark Iron Scraps
				i(12535),	-- Doomforged Straightedge
				i(12542),	-- Funeral Pyre Vestment
				i(12547),	-- Mar Alom's Grip
				i(15781, {	-- Pattern: Black Dragonscale Leggings
					["crs"] = {
						8903,	-- Anvilrage Captain
					},
				}),
				i(15770, {	-- Pattern: Black Dragonscale Shoulders
					["crs"] = {
						8898,	-- Anvilrage Marshal
					},
				}),
				i(14486, {	-- Pattern: Cloak of Fire
					["cr"] = 9026,	-- Overmaster Pyron
				}),
				i(11614, { 	-- Plans: Dark Iron Mail
					["description"] = "|cFFFFD700Plans: Dark Iron Mail|r can spawn in one of four spots.\n\n|cFFFFFFFFLocation 1:|r Located in the |cFFFFD700West Garrison|r. After going up the ramp from where |cFFFFD700General Angerforge|r is located on your left are some tables.  It will be located in the back corner where the Fireguard Destroyer is and two tables in front of it.  This table is close to the table that has vases on it that is near the keg.\n\n|cFFFFFFFFLocation 2:|r In |cFFFFD700Golem Lord Argelmach's|r room.  When you walk into the room it will be in the back left corner where in between barrels.  There will be two barrels to the left and one barrel to the right of it.\n\n|cFFFFFFFFLocation 3:|r In |cFFFFD700The Manufactory|r, on a bench.\n\n|cFFFFFFFFLocation 4:|r After leaving the room with |cFFFFD700Ambassador Flamelash|r you will cross a bridge that leads into the |cFFFFD700Mold Foundry|r.  Once you enter the room you will continue straight until you see the ramp.  Instead of going down the ramp you will jump off the ledge to the right of the ramp.  After landing on the ground you will see the plans located here.",
					["provider"] = { "o", 173232 },	-- Blacksmithing Plans
				}),
				i(11615, { 	-- Plans: Dark Iron Shoulders
					["description"] = "|cFFFFD700Plans: Dark Iron Shoulders|r spawn in one of two spots.\n\n|cFFFFFFFFLocation 1:|r In |cFFFFD700General Angerforge's|r room.  They are sitting on the bottom shelf next to the floating crystal.\n\n|cFFFFFFFFLocation 2:|r On the ground in the |cFFFFD700Detention Block|r. After passing Lexlort you will continue down into the room.  When you come across the first split into two rooms you will enter the room on the left.  They will be located on the seat behind the bench which is located next to the 3 red jugs.",
					["provider"] = { "o", 173232 },	-- Blacksmithing Plans
				}),
				i(11611, {	-- Plans: Dark Iron Sunderer
					["crs"] = {
						 9554,	-- Hammered Patron
						10043,	-- Ribbly's Crony
					},
				}),
				i(11078),	-- Relic Coffer Key
				i(12527),	-- Ribsplitter
				i(12550),	-- Runed Golem Shackles
				i(16049, {  -- Schematic: Dark Iron Bomb
					["crs"] = {
						8920,   -- Weapon Technician
					},
				}),
				i(16048, {	-- Schematic: Dark Iron Rifle
					["crs"] = {
						8897,	-- Doomforge Craftsman
					},
				}),
				i(18235, {	-- Schematic: Field Repair Bot 74A
					["requireSkill"] = ENGINEERING,
					["description"] = "On the floor next to Golem Lord Argelmach",
				}),
				i(18654, {	-- Schematic: Gnomish Alarm-o-Bot
					["crs"] = {
						8920,	-- Weapon Technician
					},
				}),
				i(16053, {	-- Schematic: Master Engineer's Goggles
					["crs"] = {
						8900,	-- Doomforge Arcanasmith
					},
				}),
				i(18661, {	-- Schematic: World Enlarger
					["crs"] = {
						8920,	-- Weapon Technician
					},
				}),
				i(12531),	-- Searing Needle
				i(12532),	-- Spire of the Stoneshaper
				i(12551),	-- Stoneshield Cloak
				i(12528),	-- The Judge's Gavel
			}),
			n(9018, {	-- High Interrogator Gerstahn
				i(11140),	-- Prison Cell Key
				i(11625), 	-- Enthralled Sphere
				i(11626), 	-- Blackveil Cape
				i(11624), 	-- Kentic Amice
				un(PHASE_FIVE, i(22240)), 	-- Greaves of Withering Despaire
			}),
			n(9025, {	-- Lord Roccor
				i(11813),	-- Formula: Smoking Heart of the Mountain
				i(11631), 	-- Stoneshell Guard
				i(11632), 	-- Earthslag Shoulders
				un(PHASE_FIVE, i(22234)), 	-- Mantle of Lost Hope
				un(PHASE_FIVE, i(22397)),	-- Idol of Ferocity
				i(11630),	-- Rockshard Pellets
			}),
			n(9016, {	-- Bael'gar
				i(11803), 	-- Force of Magma
				i(11805), 	-- Rubidium Hammer
				i(11807), 	-- Sash of the Burning Heart
				i(11802), 	-- Lavacrest Leggings
			}),
			n(9319, {	-- Houndmaster Grebmar
				i(11629), 	-- Houndmaster's Rifle
				i(11628), 	-- Houndmaster's Bow
				i(11623), 	-- Spritecaster Cap
				i(11627), 	-- Fleetfoot Greaves
			}),
			un(PHASE_FIVE, n(16059, { 	-- Theldren
				["provider"] = { "o", 181074 },	-- Arena Spoils
				["description"] = "Requires Banner of Provocation (Dungeon Set 2 Questline) to summon this boss. Loot grey chest on grey grate after killing the mobs.",
				["cost"] = {
					{ "i", 21986, 1 },	-- Banner of Provocation
				},
				["groups"] = bubbleDown({ ["u"] = PHASE_FIVE }, {
					{
						["itemID"] = 22047,	-- Top Piece of Lord Valthalak's Amulet
						["questID"] = 9015,	-- The Challenge
					},
					i(22305), 	-- Ironweave Mantle
					i(22317), 	-- Lefty's Brass Knuckle
					i(22318), 	-- Malgen's Long Bow
					i(22330), 	-- Shroud of Arcane Mastery
				}),
			})),
			n(10096, {	-- Ring of Law
				["description"] = "Approaching the center of the ring will start an event, and the High Justice will appear and approach one of the gates and release three waves of non-elite enemies, followed by one of six possible mini-bosses.",
				["cr"] = 10096,	-- High Justice Grimstone
				["groups"] = {
					n(9031, { 	-- Anub'shiah
						i(11677), 	-- Graverot Cape
						i(11678), 	-- Carapace of Anub'shiah
						i(11675), 	-- Shadefiend Boots
					}),
					n(9029, { 	-- Eviscerator
						i(11685), 	-- Splinthide Shoulders
						i(11679), 	-- Rubicund Armguards
						i(11686), 	-- Girdle of Beastial Fury
					}),
					n(9027, { 	-- Gorosh the Dervish
						un(PHASE_FIVE, i(22257)),	-- Bloodclot Band
						un(PHASE_FIVE, i(22266)), 	-- Flarethorn
						un(PHASE_FIVE, i(22271)), 	-- Leggings of Frenzied Magic
						i(11729), 	-- Savage Gladiator Helm
						i(11726), 	-- Savage Gladiator Chain
						i(11730), 	-- Savage Gladiator Grips
						i(11728), 	-- Savage Gladiator Leggings
						i(11731), 	-- Savage Gladiator Greaves
					}),
					n(9028, {	-- Grizzle
						i(11610), 	-- Plans: Dark Iron Pulverizer
						i(11702), 	-- Grizzle's Skinner
						i(11722), 	-- Dregmetal Spaulders
						i(11703), 	-- Stonewall Girdle
						un(PHASE_FIVE, i(22270)),	-- Entrenching Boots
					}),
					n(9032, { 	-- Hedrum the Creeper
						i(11635), 	-- Hookfang Shanker
						i(11633), 	-- Spiderfang Carapace
						i(11634), 	-- Silkweb Gloves
					}),
					n(9030, { 	-- Ok'thor the Breaker
						i(11665), 	-- Ogreseer Fists
						i(11662), 	-- Ban'thok Sash
						i(11824),	-- Cyclopean Band
					}),
				},
			}),
			n(9024, {	-- Pyromancer Loregrain
				i(11207),	-- Formula: Enchant Weapon - Fiery Weapon
				i(11750), 	-- Kindling Stave
				i(11748), 	-- Pyric Caduceus
				i(11747), 	-- Flamestrider Robes
				i(11749), 	-- Searingscale Leggings
			}),
			n(9017, {	-- Lord Incendius
				un(PHASE_FIVE, {
					["itemID"] = 21987,	-- Incendicite of Incendius
					["questID"] = 8961,	-- Three Kings of Flame
				}),
				{
					["itemID"] = 11126,	-- Tablet of Kurniya
					["questID"] = 3907,	-- Disharmony of Fire
					["races"] = HORDE_ONLY,
				},
				i(11766), 	-- Flameweave Cuffs
				i(11764), 	-- Cinderhide Armsplints
				i(11765), 	-- Pyremail Wristguards
				i(11767), 	-- Emberplate Armguards
				i(11768),	-- Incendic Bracers
				un(PHASE_THREE, i(19268)),	-- Ace of Elementals
			}),
			n(9056, {	-- Fineous Darkvire <Chief Architect>
				{
					["itemID"] = 10999,	-- Ironfel
					["questID"] = 3802,	-- Dark Iron Legacy
				},
				i(11840), 	-- Master Builder's Shirt
				i(11839), 	-- Chief Architect's Monocle
				un(PHASE_FIVE, i(22223)), 	-- Foreman's Head Protector
				i(11842), 	-- Land Surveyor's Mantle
				i(11841), 	-- Senior Designer's Pantaloons
			}),
			n(9042, {	-- Verek
				i(11755),	-- Verek's Collar
				un(PHASE_FIVE, i(22242)),	-- Verek's Leash
			}),
			n(9041, {	-- Warder Stilgiss
				i(11784),	-- Arbiter's Blade
				i(11782),	-- Boreal Mantle
				un(PHASE_FIVE, i(22241)),	-- Dark Warder's Pauldrons
				i(11783),	-- Chillsteel Girdle
			}),
			n(9476, {	-- Watchman Doomgrip
				["description"] = "Watchman Doomgrip spawns once all twelve Relic Coffers have been opened using Relic Coffer Keys that can drop from any Dark Iron mob in the instance. Upon defeating all enemies, a hidden door beneath the Dark Coffer will open allowing access to the Secret Safe as well as the Heart of the Mountain.",
				["cost"] = {
					{ "i", 11078, 12 },	-- Relic Coffer Key
				},
				["groups"] = {
					o(160836, {	-- Relic Coffer
						["description"] = "Relic Coffer Keys that can drop from any Dark Iron mob in the instance.",
						["groups"] = {
							i(11946),	-- Fire Opal Necklace
							i(11945),	-- Dark Iron Ring
							i(11938),	-- Sack of Gems
							i(11966),	-- Small Sack of Coins
							i(11937),	-- Fat Sack of Coins
						},
					}),
					o(161495, {	-- Secret Safe
						["description"] = "This lootable chest spawns after defeating Watchman Doomgrip. It can only be looted by one person each run.\n\nWith Phase 1 of WoW Classic, the Secret Safe had a small loot table of 4 items that also dropped from the Chest of The Seven. This was changed in Phase 5.",
						["groups"] = {
							{
								["itemID"] = 11309,	-- The Heart of the Mountain
								["questID"] = 4123,	-- The Heart of the Mountain
							},
							un(PHASE_FIVE, i(22256)),	-- Mana Shaping Handwraps
							un(PHASE_FIVE, i(22205)), 	-- Black Steel Bindings
							un(PHASE_FIVE, i(22254)), 	-- Wand of Eternal Light
							un(PHASE_FIVE, i(22255)),	-- Magma Forged Band
						},
					}),
				},
			}),
			o(164820, {	-- Dark Keeper Nameplate
				["description"] = "Inspect the portrait in front of the coffer room. Opening it will tell you the name of the Dark Keeper you need and where he is located. Only one will spawn each reset.\n\n|cff3399ffDark Keepers:|r\n\n|cFFFFD700Dark Keeper Bethek|r: spawns inside the vault room as soon as you open the portrait\n\n|cFFFFD700Dark Keeper Ofgut|r: Located in |cFFFFD700General Angerforge's|r room.  When you come down the stairs and are looking straight at |cFFFFD700General Angerforge|r you will then see him located directly to the left near the crystal.\n\n|cFFFFD700Dark Keeper Pelver|r: Located in |cFFFFD700The Domicile|r.  For quicker access you can take any of the mole machines and click |cFFFFD700Into the Domicile|r and he will be on top of it.\n\n|cFFFFD700Dark Keeper Uggel|r: quite a close walk; walk outside the vault room and go right to the last room. He is near the entrance where all the golems are.\n\n|cFFFFD700Dark Keeper Vorfalk|r: Located at the |cFFFFD700Grim Guzzler|r.  When you first enter the room after coming from the bridge he will be located on your right side in the corner (in front of the band's playing spot).\n\n|cFFFFD700Dark Keeper Zimrel|r: Located on the second floor of the |cFFFFD700Ring of Law|r.  When entering this floor from the |cFFFFD700East Garrison|r (room with the Shadowforge Lock) you will go around to your right where he will be sitting in the middle of the seats.\n",
				["crs"] = {
					9438,	-- Dark Keeper Bethek
					9442,	-- Dark Keeper Ofgut
					9443,	-- Dark Keeper Pelver
					9439,	-- Dark Keeper Uggel
					9437,	-- Dark Keeper Vorfalk
					9441,	-- Dark Keeper Zimrel
				},
				["groups"] = {
					i(11197, {	-- Dark Keeper Key
						["description"] = "The Dark Coffer contains one or more random world drop BoEs. Usually greens.",
					}),
				},
			}),
			n(9033, {	-- General Angerforge
				{
					["itemID"] = 11464,	-- Marshal Windsor's Lost Information
					["questID"] = 4282,	-- A Shred of Hope
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 4264,	-- A Crumpled Up Note
				},
				i(11816), 	-- Angerforge's Battle Axe
				i(11817), 	-- Lord General's Sword
				i(11820), 	-- Royal Decorated Armor
				i(11821), 	-- Warstrife Leggings
				i(11810),	-- Force of Will
			}),
			n(8983, {	-- Golem Lord Argelmach
				{
					["itemID"] = 11268,	-- Head of Argelmach
					["questID"] = 4063,	-- The Rise of the Machines
					["races"] = HORDE_ONLY,
				},
				{
					["itemID"] = 11465,	-- Marshal Windsor's Lost Information
					["questID"] = 4282,	-- A Shred of Hope
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 4264,	-- A Crumpled Up Note
				},
				i(11823), 	-- Luminary Kilt
				i(11822), 	-- Omnicast Boots
				i(11669),	-- Naglering
				i(11819),	-- Second Wind
			}),
			n(9537, {	-- Hurley Blackbreath
				["description"]	= "Break the 3 Thunderbrew Lager Kegs to start the event.",
				["groups"] = {
					{
						["itemID"] = 11312,	-- Lost Thunderbrew Recipe
						["allianceQuestID"] = 4126,	-- Hurley Blackbreath
						["hordeQuestID"] = 4134,	-- Lost Thunderbrew Recipe
					},
					i(18044), 		-- Hurley's Tankard
					i(11735), 		-- Ragefury Eyepatch
					i(18043), 		-- Coal Miner Boots
					un(PHASE_FIVE, i(22275)), 		-- Firemoss Boots
				},
			}),
			n(9543, {	-- Ribbly Screwspigot
				["description"]	= "Speak to him to start the event.",
				["groups"] = {
					{
						["itemID"] = 11313,	-- Ribbly's Head
						["questID"] = 4136,	-- Ribbly Screwspigot
					},
					i(11612),	-- Plans: Dark Iron Plate
					i(2663),	-- Ribbly's Bandolier
					i(2662),	-- Ribbly's Quiver
					i(11742),	-- Wayfarer's Knapsack
				},
			}),
			n(9499, {	-- Plugger Spazzring
				n(-2, { 	-- Vendors
					i(15759),	-- Pattern: Black Dragonscale Breastplate
					i(13483),	-- Recipe: Transmute Fire to Earth
					i(11325),	-- Dark Iron Ale Mug
				}),
				i(12791), 	-- Barman Shanker
				i(12793), 	-- Mixologist's Tunic
				i(18653),	-- Schematic: Goblin Jumper Cables XL
			}),
			n(9502, {	-- Phalanx
				["description"]	= "Private Rocknot must be sent into a drunken rage to aggro Phalanx. \nTo do that, feed him 6 dark iron ale mugs, which can be bought from Plugger Spazzring. \nRocknot will break one of the kegs, it'll blow the door open and Phalanx will be angry.",
				["groups"] = {
					i(11744), 	-- Bloodfist
					i(11743),	-- Rockfist
					i(11746),	-- Golem Skull Helm
					un(PHASE_FIVE, i(22212)), 	-- Golem Fitted Pauldrons
					i(11745), 	-- Fists of Phalanx
				},
			}),
			n(12944, { 	-- Lokhtos Darkbargainer <The Thorium Brotherhood>
				un(PHASE_THREE, {
					["itemID"] = 19449,	-- Formula: Enchant Weapon - Mighty Intellect
					["minReputation"] = { 59, REVERED },	-- The Thorium Brotherhood, Revered.
				}),
				un(PHASE_THREE, {
					["itemID"] = 19448,	-- Formula: Enchant Weapon - Mighty Spirit
					["minReputation"] = { 59, HONORED },	-- The Thorium Brotherhood, Honored.
				}),
				un(PHASE_THREE, {
					["itemID"] = 19444,	-- Formula: Enchant Weapon - Strength
					["minReputation"] = { 59, FRIENDLY },	-- The Thorium Brotherhood, Friendly.
				}),
				{
					["itemID"] = 17025,	-- Pattern: Black Dragonscale Boots
					["minReputation"] = { 59, HONORED },	-- The Thorium Brotherhood, Honored.
				},
				un(PHASE_THREE, {
					["itemID"] = 19331,	-- Pattern: Chromatic Gauntlets
					["minReputation"] = { 59, REVERED },	-- The Thorium Brotherhood, Revered.
				}),
				un(PHASE_THREE, {
					["itemID"] = 19332,	-- Pattern: Corehound Belt
					["minReputation"] = { 59, REVERED },	-- The Thorium Brotherhood, Revered.
				}),
				{
					["itemID"] = 17022,	-- Pattern: Corehound Boots
					["minReputation"] = { 59, FRIENDLY },	-- The Thorium Brotherhood, Friendly.
				},
				{
					["itemID"] = 17018,	-- Pattern: Flarecore Gloves
					["minReputation"] = { 59, FRIENDLY },	-- The Thorium Brotherhood, Friendly.
				},
				un(PHASE_THREE, {
					["itemID"] = 19220,	-- Pattern: Flarecore Leggings
					["minReputation"] = { 59, REVERED },	-- The Thorium Brotherhood, Revered.
				}),
				{
					["itemID"] = 17017,	-- Pattern: Flarecore Mantle
					["minReputation"] = { 59, HONORED },	-- The Thorium Brotherhood, Honored.
				},
				un(PHASE_THREE, {
					["itemID"] = 19219,	-- Pattern: Flarecore Robe
					["minReputation"] = { 59, HONORED },	-- The Thorium Brotherhood, Honored.
				}),
				un(PHASE_THREE, {
					["itemID"] = 19330,	-- Pattern: Lava Belt
					["minReputation"] = { 59, HONORED },	-- The Thorium Brotherhood, Honored.
				}),
				un(PHASE_THREE, {
					["itemID"] = 19333,	-- Pattern: Molten Belt
					["minReputation"] = { 59, REVERED },	-- The Thorium Brotherhood, Revered.
				}),
				{
					["itemID"] = 17023,	-- Pattern: Molten Helm
					["minReputation"] = { 59, FRIENDLY },	-- The Thorium Brotherhood, Friendly.
				},
				un(PHASE_THREE, {
					["itemID"] = 19208,	-- Plans: Black Amnesty
					["minReputation"] = { 59, REVERED },	-- The Thorium Brotherhood, Revered.
				}),
				un(PHASE_THREE, {
					["itemID"] = 19209,	-- Plans: Blackfury
					["minReputation"] = { 59, REVERED },	-- The Thorium Brotherhood, Revered.
				}),
				un(PHASE_THREE, {
					["itemID"] = 19211,	-- Plans: Blackguard
					["minReputation"] = { 59, EXALTED },	-- The Thorium Brotherhood, Exalted.
				}),
				un(PHASE_FOUR, {
					["itemID"] = 20040,	-- Plans: Dark Iron Boots
					["minReputation"] = { 59, EXALTED },	-- The Thorium Brotherhood, Exalted.
				}),
				{
					["itemID"] = 17051,	-- Plans: Dark Iron Bracers
					["minReputation"] = { 59, FRIENDLY },	-- The Thorium Brotherhood, Friendly.
				},
				{
					["itemID"] = 17060,	-- Plans: Dark Iron Destroyer
					["minReputation"] = { 59, HONORED },	-- The Thorium Brotherhood, Honored.
				},
				un(PHASE_THREE, {
					["itemID"] = 19207,	-- Plans: Dark Iron Gauntlets
					["minReputation"] = { 59, REVERED },	-- The Thorium Brotherhood, Revered.
				}),
				un(PHASE_THREE, {
					["itemID"] = 19206,	-- Plans: Dark Iron Helm
					["minReputation"] = { 59, HONORED },	-- The Thorium Brotherhood, Honored.
				}),
				{
					["itemID"] = 17052,	-- Plans: Dark Iron Leggings
					["minReputation"] = { 59, REVERED },	-- The Thorium Brotherhood, Revered.
				},
				{
					["itemID"] = 17059,	-- Plans: Dark Iron Reaver
					["minReputation"] = { 59, HONORED },	-- The Thorium Brotherhood, Honored.
				},
				un(PHASE_THREE, {
					["itemID"] = 19210,	-- Plans: Ebon Hand
					["minReputation"] = { 59, EXALTED },	-- The Thorium Brotherhood, Exalted.
				}),
				{
					["itemID"] = 17049,	-- Plans: Fiery Chain Girdle
					["minReputation"] = { 59, HONORED },	-- The Thorium Brotherhood, Honored.
				},
				{
					["itemID"] = 17053,	-- Plans: Fiery Chain Shoulders
					["minReputation"] = { 59, REVERED },	-- The Thorium Brotherhood, Revered.
				},
				un(PHASE_THREE, {
					["itemID"] = 19212,	-- Plans: Nightfall
					["minReputation"] = { 59, EXALTED },	-- The Thorium Brotherhood, Exalted.
				}),
				un(PHASE_FIVE, {
					["itemID"] = 20761,	-- Recipe: Transmute Elemental Fire
					["minReputation"] = { 59, FRIENDLY },	-- The Thorium Brotherhood, Friendly.
				}),
			}),
			n(9156, {	-- Ambassador Flamelash
				i(11809), 	-- Flame Wrath
				i(11808), 	-- Circle of Flame
				i(11812), 	-- Cape of the Fire Salamander
				i(11814), 	-- Molten Fists
				i(11832),	-- Burst of Knowledge
			}),
			n(8923, { 	-- Panzor the Invincible
				["description"] = "This is a rare that is not always present.",
				["groups"] = {
					i(11786),	-- Stone of the Earth
					i(11785),	-- Rock Golem Bulwark
					i(11787),	-- Shalehusk Boots
					un(PHASE_FIVE, i(22245)),	-- Soot Encrusted Footwear
				},
			}),
			n(9039, {	-- Doom'rel
				["provider"] = { "o", 169243 },	-- Chest of The Seven
				["groups"] = {
					i(11922), 	-- Blood-Etched Blade
					i(11921), 	-- Impervious Giant
					i(11923), 	-- The Hammer of Grace
					i(11920), 	-- Wraith Scythe
					i(11925), 	-- Ghostshroud
					i(11926), 	-- Deathdealer Breastplate
					i(11929), 	-- Haunting Specter Leggings
					i(11927), 	-- Legplates of the Eternal Guardian
				},
			}),
			n(9938, {	-- Magmus
				un(PHASE_FIVE, i(22208)), 	-- Lavastone Hammer
				i(11935), 	-- Magmus Stone
				i(11746), 	-- Golem Skull Helm
				i(22275), 	-- Firemoss Boots
				un(PHASE_FIVE, i(22400)),	-- Libram of Truth
				un(PHASE_FIVE, i(22395)),	-- Totem of Rage
			}),
			n(8929, {	-- Princess Moira Bronzebeard <Princess of Ironforge>
				i(12557),	-- Ebonsteel Spaulders
				i(12554), 	-- Hands of the Exalted Herald
				i(12556), 	-- High Priestess Boots
				i(12553), 	-- Swiftwalker Boots
			}),
			n(9019, {	-- Emperor Dagran Thaurissan
				i(11931), 	-- Dreadforge Retaliatior
				i(11932), 	-- Guiding Stave of Wisdom
				i(11684), 	-- Ironfoe
				i(11928), 	-- Thaurissan's Royal Scepter
				i(11933),	-- Imperial Jewel
				i(11930), 	-- The Emperor's New Cape
				i(11924), 	-- Robes of the Royal Crown
				un(PHASE_FIVE, i(22204)), 	-- Wristguards of Renown
				un(PHASE_FIVE, i(22207)), 	-- Sash of the Grand Hunt
				i(11934),	-- Emperor's Seal
				i(11815),	-- Hand of Justice
				i(12033),	-- Thaurissan Family Jewels
				i(16724),	-- Lightforge Gauntlets
			}),
		},
	}),
})};