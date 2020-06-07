---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(DUN_MOROGH, {
			n(QUESTS, {
				q(319, {	-- A Favor for Evershine
					["qg"] = 1374,	-- Rejold Barleybrew
					["sourceQuest"] = 318,	-- Evershine
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 2,
				}),
				q(170, {	-- A New Threat
					["qg"] = 713,	-- Balir Frosthammer
					["sourceQuest"] = 179,	-- Dwarven Outfitters
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(6185),	-- Bear Shawl
						i(2172),	-- Rustic Belt
						i(6173),	-- Snow Boots
					},
				}),
				q(417, {	-- A Pilot's Revenge
					["provider"] = { "o", 2059 },	-- A Dwarven Corpse
					["sourceQuest"] = 419,	-- The Lost Pilot
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3117, 1 },	-- Hildelve's Journal
						{ "i", 3183, 1 },	-- Mangy Claw
					},
					["lvl"] = 8,
					["g"] = {
						{
							["itemID"] = 3183, 	-- Mangy Claw
							["questID"] = 417,	-- A Pilot's Revenge
							["cr"] = 1961,	-- Mangeclaw
							["coord"] = { 78.34, 37.74, DUN_MOROGH },
						},
						i(2218),	-- Craftsman's Dagger
						i(1009),	-- Compact Hammer
					},
				}),
				q(3361, {	-- A Refugee's Quandary
					["qg"] = 8416,	-- Felix Whindlebolt
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10438, 1 },	-- Felix's Box
						{ "i", 16314, 1 },	-- Felix's Bucket of Bolts
						{ "i", 16313, 1 },	-- Felix's Chest
					},
					["lvl"] = 3,
					["groups"] = {
						{
							["itemID"] = 10438,	-- Felix's Box
							["questID"] = 3361,	-- A Refugee's Quandary
							["coord"] = { 20.9, 76.1, DUN_MOROGH },
						},
						{
							["itemID"] = 16314,	-- Felix's Bucket of Bolts
							["questID"] = 3361,	-- A Refugee's Quandary
							["coord"] = { 26.3, 79.2, DUN_MOROGH },
						},
						{
							["itemID"] = 16313,	-- Felix's Chest
							["questID"] = 3361,	-- A Refugee's Quandary
							["coord"] = { 22.8, 79.9, DUN_MOROGH },
						},
					},
				}),
				q(5541, {	-- Ammo for Rumbleshot
					["qg"] = 1694,	-- Loslor Rudge
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13850, 1 },	-- Rumbleshot's Ammo
					},
					["lvl"] = 5,
					["groups"] = {
						{
							["itemID"] = 13850,	-- Rumbleshot's Ammo
							["questID"] = 5541,	-- Ammo for Rumbleshot
							["coord"] = { 44.13, 56.95, DUN_MOROGH },
						},
					},
				}),
				q(310, {	-- Bitter Rivals
					["qg"] = 1375,	-- Marleth Barleybrew
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2548, 1 },	-- Barrel of Barleybrew Scalder
					},
					["lvl"] = 2,
				}),
				q(3365, {	-- Bring Back the Mug
					["qg"] = 836,	-- Durnan Furcutter
					["sourceQuest"] = 3364,	-- Scalding Mornbrew Delivery
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10440, 1 },	-- Nori's Mug
					},
					["lvl"] = 4,
				}),
				q(234, {	-- Coldridge Valley Mail Delivery
					["qg"] = 714,	-- Talin Keeneye
					["sourceQuest"] = 233,	-- Coldridge Valley Mail Delivery
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2188, 1 },	-- A Letter to Grelin Whitebeard
					},
				}),
				q(233, {	-- Coldridge Valley Mail Delivery
					["qg"] = 658,	-- Sten Stoutarm
					["sourceQuest"] = 179,	-- Dwarven Outfitters
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2187, 1 },	-- A Stack of Letters
					},
				}),
				q(308, {	-- Distracting Jarven
					["qg"] = 1373,	-- Jarven Thunderbrew
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["altQuests"] = {
						311,	-- Return to Marleth
					},
				}),
				q(179, {	-- Dwarven Outfitters
					["qg"] = 658,	-- Sten Stoutarm
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(719),	-- Rabbit Handler Gloves
						i(6171),	-- Wolf Handler Gloves
						i(2547),	-- Boar Handler Gloves
					},
				}),
				q(3113, {	-- Encrypted Memorandum
					["qg"] = 658,	-- Sten Stoutarm
					["sourceQuest"] = 179,	-- Dwarven Outfitters
					["races"] = { GNOME },
					["classes"] = { ROGUE },
				}),
				q(3109, {	-- Encrypted Rune
					["qg"] = 658,	-- Sten Stoutarm
					["sourceQuest"] = 179,	-- Dwarven Outfitters
					["races"] = { DWARF },
					["classes"] = { ROGUE },
				}),
				q(3108, {	-- Etched Rune
					["qg"] = 658,	-- Sten Stoutarm
					["sourceQuest"] = 179,	-- Dwarven Outfitters
					["races"] = { DWARF },
					["classes"] = { HUNTER },
				}),
				q(318, {	-- Evershine
					["qg"] = 1378,	-- Pilot Bellowfiz
					["sourceQuest"] = 317,	-- Stocking Jetsteam
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 2,
				}),
				q(287, {	-- Frostmane Hold
					["qg"] = 1252,	-- Senir Whitebeard
					["sourceQuest"] = 420,	-- Senir's Observations (2/2)
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
					["g"] = {
						i(3216),	-- Warm Winter Robe
						i(2900),	-- Stone Buckler
					},
				}),
				q(5625, {	-- Garments of the Light
					["qg"] = 1226,	-- Maxan Anvol <Priest Trainer>
					["sourceQuest"] = 5626,	-- In Favor of the Light
					["coord"] = { 47.2, 52.2, DUN_MOROGH },
					["races"] = { DWARF },
					["classes"] = { PRIEST },
					["lvl"] = 5,
					["groups"] = {
						i(16605),	-- Friar's Robes of the Light
					},
				}),
				q(403, {	-- Guarded Thunderbrew Barrel
					["provider"] = { "o", 269 },	-- Guarded Thunder Ale Barrel
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["altQuests"] = {
						311,	-- Return to Marleth
					},
				}),
				q(5626, {	-- In Favor of the Light
					["qg"] = 837,	-- Branstock Khalder <Priest Trainer>
					["coord"] = { 28.6, 66.4, DUN_MOROGH },
					["races"] = { DWARF },
					["classes"] = { PRIEST },
					["lvl"] = 5,
				}),
				q(1679, {	-- Muren Stormpike
					["qg"] = 1229,	-- Granis Swiftaxe <Warrior Trainer>
					["altQuests"] = {
						1684,	-- Elanaria
						1638,	-- A Warrior's Training
					},
					["coord"] = { 47.2, 52.6, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(2239, {	-- Onin's Report
					["qg"] = 6886,	-- Onin MacHammer
					["sourceQuest"] = 2238,	-- Simple Subterfugin'
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["g"] = {
						i(7298),	-- Blade of Cunning
					},
				}),
				q(412, {	-- Operation Recombobulation
					["qg"] = 1269,	-- Razzle Sprysprocket
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3084, 8 },	-- Gyromechanic Gear
						{ "i", 3083, 8 },	-- Restabilization Cog
					},
					["lvl"] = 7,
					["g"] = {
						i(3152),	-- Driving Gloves
						i(3153),	-- Oil-stained Cloak
					},
				}),
				q(314, {	-- Protecting the Herd
					["qg"] = 1265,	-- Rudra Amberstill
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3627, 1 },	-- Fang of Vagash
					},
					["lvl"] = 6,
					["g"] = {
						{
							["itemID"] = 3627,	-- Fang of Vagash
							["questID"] = 314,	-- Protecting the Herd
							["cr"] = 1388,	-- Vagash
							["coord"] = { 62.65, 46.08, DUN_MOROGH },
						},
						i(10549),	-- Rancher's Trousers
						i(2817),	-- Soft Leather Tunic
						i(3103),	-- Coldridge Hammer
					},
				}),
				q(415, {	-- Rejold's New Brew
					["qgs"] = {
						1378,	-- Pilot Bellowfiz
						1872,	-- Tharek Blackstone
					},
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 8,
					["g"] = {
						i(3087),	-- Mug of Shimmer Stout
					},
				}),
				q(320, {	-- Return to Bellowfiz
					["qg"] = 1374,	-- Rejold Barleybrew
					["sourceQuest"] = 319,	-- A Favor for Evershine
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2696, 1 },	-- Cask of Evershine
					},
					["lvl"] = 2,
					["g"] = {
						i(1011),	-- Sharp Axe
						i(1010),	-- Gnarled Short Staff
						i(10547),	-- Camping Knife
					},
				}),
				q(311, {	-- Return to Marleth
					["provider"] = { "o", 270 },	-- Unguarded Thunder Ale Barrel
					["sourceQuest"] = 310,	-- Bitter Rivals
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2666, 1 },	-- Barrel of Thunder Ale
					},
					["lvl"] = 2,
				}),
				q(2218, {	-- Road to Salvation
					["qg"] = 1234,	-- Hogral Bakkan
					["altQuests"] = {
						2205,	-- Seek out SI:7
						2241,	-- The Apple Falls
					},
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(3364, {	-- Scalding Mornbrew Delivery
					["qg"] = 12738,	-- Nori Pridedrift
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10439, 1 },	-- Durnan's Scalding Mornbrew
					},
					["lvl"] = 4,
				}),
				q(466, {	-- Search for Incendicite
					["qg"] = 1377,	-- Pilot Stonegear
					["races"] = ALLIANCE_ONLY,
					["maps"] = { WETLANDS },
					["cost"] = {
						{ "i", 3340, 6 },	-- Incendicite Ore
					},
					["lvl"] = 20,
					["g"] = {
						i(3565),	-- Beerstained Gloves
					},
				}),
				q(282, {	-- Senir's Observations (1/2)
					["qg"] = 786,	-- Grelin Whitebeard
					["sourceQuest"] = 218,	-- The Stolen Journal
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2619, 1 },	-- Grelin's Report
					},
				}),
				q(420, {	-- Senir's Observations (2/2)
					["qg"] = 1965,	-- Mountaineer Thalos
					["sourceQuest"] = 282,	-- Senir's Observations (1/2)
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2619, 1 },	-- Grelin's Report
					},
				}),
				q(413, {	-- Shimmer Stout
					["qg"] = 1374,	-- Rejold Barleybrew
					["sourceQuests"] = {
						415,	-- Rejold's New Brew
						315,	-- The Perfect Stout
					},
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3085, 1 },	-- Barrel of Shimmer Stout
					},
					["lvl"] = 8,
				}),
				q(1879, {	-- Speak with Bink
					["qg"] = 1228,	-- Magis Sparkmantle <Mage Trainer>
					["altQuests"] = {
						1860,	-- Speak with Jennea
					},
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["lvl"] = 10,
				}),
				q(317, {	-- Stocking Jetsteam
					["qg"] = 1378,	-- Pilot Bellowfiz
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 769, 4 },	-- Chunk of Boar Meat
						{ "i", 6952, 2 },	-- Thick Bear Fur
					},
					["lvl"] = 2,
				}),
				q(467, {	-- Stonegear's Search
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["qgs"] = {
						1340,	-- Mountaineer Kadrell
						2092,	-- Pilot Longbeard
					},
				}),
				q(414, {	-- Stout to Kadrell
					["qg"] = 1959,	-- Mountaineer Barleybrew
					["sourceQuest"] = 413,	-- Shimmer Stout
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3086, 1 },	-- Cask of Shimmer Stout
					},
					["lvl"] = 8,
				}),
				q(2160, {	-- Supplies to Tannok
					["qg"] = 6782,	-- Hands Springsprocket
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 7646, 1 },	-- Crate of Inn Supplies
					},
					["g"] = {
						i(117),	-- Tough Jerky
						i(159),	-- Refreshing Spring Water
					},
				}),
				q(6064, {	-- Taming the Beast
					["qg"] = 1231,	-- Grif Wildheart <Hunter Trainer>
					["sourceQuests"] = {
						6074,	-- The Hunter's Path
						6075,	-- The Hunter's Path
						6076,	-- The Hunter's Path
					},
					["coord"] = { 45.8, 53.0, DUN_MOROGH },
					["races"] = { DWARF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
				}),
				q(6084, {	-- Taming the Beast
					["qg"] = 1231,	-- Grif Wildheart <Hunter Trainer>
					["sourceQuest"] = 6064,  -- Taming the Beast
					["coord"] = { 45.8, 53.0, DUN_MOROGH },
					["races"] = { DWARF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
				}),
				q(6085, {	-- Taming the Beast
					["qg"] = 1231,	-- Grif Wildheart <Hunter Trainer>
					["sourceQuest"] = 6084,  -- Taming the Beast
					["coord"] = { 45.8, 53.0, DUN_MOROGH },
					["races"] = { DWARF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
				}),
				q(6085, {	-- Taming the Beast
					["qg"] = 1231,	-- Grif Wildheart <Hunter Trainer>
					["sourceQuest"] = 6085,  -- Taming the Beast
					["coord"] = { 45.8, 53.0, DUN_MOROGH },
					["races"] = { DWARF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						recipe(883),	-- Call Pet
						recipe(2641),	-- Dismiss Pet
						recipe(1515),	-- Tame Beast
					},
				}),
				q(183, {	-- The Boar Hunter
					["qg"] = 714,	-- Talin Keeneye
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(79),	-- Dwarven Cloth Britches
						i(61),	-- Dwarven Leather Pants
					},
				}),
				q(313, {	-- The Grizzled Den
					["qg"] = 1377,	-- Pilot Stonegear
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2671, 8 },	-- Wendigo Mane
					},
					["lvl"] = 4,
				}),
				q(6074, {	-- The Hunter's Path
					["qg"] = 5116,	-- Olmin Burningbeard <Hunter Trainer>
					["coord"] = { 70, 84.6, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = { DWARF },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6075, {	-- The Hunter's Path
					["qg"] = 11807,	-- Tristane Shadowstone
					["coord"] = { 30.6, 45.4, DUN_MOROGH },
					["races"] = { DWARF },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6076, {	-- The Hunter's Path
					["qg"] = 5515,	-- Einris Brightspear <Hunter Trainer>
					["coord"] = { 61.6, 15.4, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = { DWARF },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(419, {	-- The Lost Pilot
					["qg"] = 1960,	-- Pilot Hammerfoot
					["coord"] = { 83.8, 39.2, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 8,
					["g"] = {
						i(3151),	-- Siege Brigade Vest
					},
				}),
				q(315, {	-- The Perfect Stout
					["qg"] = 1374,	-- Rejold Barleybrew
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2676, 6 },	-- Shimmerweed
					},
					["lvl"] = 5,
					["g"] = {
						i(2905),	-- Goat Fur Cloak
						i(2326),	-- Ivy-weave Bracers
					},
				}),
				q(433, {	-- The Public Servant
					["qg"] = 1977,	-- Senator Mehr Stonehallow
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 6,
				}),
				q(291, {	-- The Reports
					["qg"] = 1252,	-- Senir Whitebeard
					["sourceQuest"] = 287,	-- Frostmane Hold
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2628, 1 },	-- Senir's Report
					},
				}),
				q(218, {	-- The Stolen Journal
					["qg"] = 786,	-- Grelin Whitebeard
					["sourceQuest"] = 182,	-- The Troll Cave
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2004, 1 },	-- Grenlin Whitebeard's Journal
					},
					["g"] = {
						i(6176),	-- Dwarven Kite Shield
						i(5581),	-- Smooth Walking Staff
					},
				}),
				q(182, {	-- The Troll Cave
					["qg"] = 786,	-- Grelin Whitebeard
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(2047),	-- Anvilmar Hand Axe
						i(2048),	-- Anvilmar Hammer
						i(2195),	-- Anvilmar Knife
						i(5761),	-- Anvilmar Sledge
						i(961),	-- Healing Herb
					},
				}),
				q(432, {	-- Those Blasted Troggs!
					["qg"] = 1254,	-- Foreman Stonebrow
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 5,
				}),
				q(2299, {	-- To Hulfdan!
					["qg"] = 1234,	-- Hogral Bakkan
					["sourceQuest"] = 2218,	-- Road to Salvation
					["altQuests"] = {
						2205,	-- Seek out SI:7
						2241,	-- The Apple Falls
					},
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				q(400, {	-- Tools for Steelgrill
					["qg"] = 1872,	-- Tharek Blackstone
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 2,
				}),
				q(312, {	-- Tundra MacGrann's Stolen Stash
					["qg"] = 1266,	-- Tundra MacGrann
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2667, 1 },	-- MacGrann's Dried Meats
					},
					["lvl"] = 7,
					["g"] = {
						{
							["itemID"] = 2667,	-- MacGrann's Dried Meats
							["questID"] = 312,	-- Tundra MacGrann's Stolen Stash
							["coord"] = { 38.5, 53.93, DUN_MOROGH },
						},
						i(6177),	-- Ironwrought Bracers
						i(10550),	-- Wooly Mittens
					},
				}),
				q(5841, {	-- Welcome!
					["provider"] = { "i", 14647 },	-- Coldridge Valley Gift Voucher
					["u"] = 2,
					["g"] = {
						un(2, i(13584)),	-- Diablo Stone
						un(2, i(13583)),	-- Panda Collar
						un(2, i(13582)),	-- Zergling Leash
					},
				}),
			}),
		}),
	}),
};