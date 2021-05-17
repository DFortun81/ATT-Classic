---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(THE_BARRENS, {
			n(QUESTS, {
				q(6361, {	-- A Bundle of Hides
					["qg"] = 3079,	-- Varg Windwhisper
					["coord"] = { 45.82, 58.69, MULGORE },
					["races"] = { TAUREN },
					["lvl"] = 10,
				}),
				q(1153, {	-- A New Ore Sample
					["qg"] = 3433,	-- Tatternack Steelforge
					["coord"] = { 45.10, 57.69, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["g"] = {
						i(6741),	-- Orcish War Sword
					},
				}),
				q(5043, {	-- Agamaggan's Agility
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["repeatable"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(5042, {	-- Agamaggan's Strength
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["repeatable"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(880, {	-- Altered Beings
					["qg"] = 3448,	-- Tonga Runetotem
					["sourceQuest"] = 877,	-- The Stagnant Oasis
					["coord"] = { 52.26, 31.92, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(853, {	-- Apothecary Zamah
					["qg"] = 3390,	-- Apothecary Helbrim
					["sourceQuest"] = 848,	-- Fungal Spores
					["coord"] = { 51.44, 30.15, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["g"] = {
						i(2458),	-- Elixir of Minor Fortitude
						i(2457),	-- Elixir of Minor Agility
						i(2456),	-- Minor Rejuvenation Potion
						i(2459),	-- Swiftness Potion
						i(5340),	-- Cauldron Stirrer
					},
				}),
				q(879, {	-- Betrayal from Within
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				}),
				q(906, {	-- Betrayal from Within
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 879,	-- Betrayal from Within
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["g"] = {
						i(5316),	-- Barkshell Tunic
						i(5317),	-- Dry Moss Tunic
					},
				}),
				q(5052, {	-- Blood Shards of Agamaggan
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 878,	-- Tribes at War
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(1838, {	-- Brutal Armor
					["qg"] = 5878,	-- Thun'grim Firegaze
					["sourceQuest"] = 1825,	-- Speak with Thun'grim
					["coord"] = { 57.23, 30.34, THE_BARRENS },
					["maps"] = { HILLSBRAD_FOOTHILLS, RAZORFEN_KRAUL, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 7587, 1 },	-- Thun'grim's Instructions
						{ "i", 3575, 10 },	-- Iron Bar
						{ "i", 7127, 10 },	-- Powdered Azurite
						{ "i", 7126, 15 },	-- Smoky Iron Ingot
						{ "i", 6841, 1 },	-- Vial of Phlogiston
					},
					["lvl"] = 20,
				}),
				q(1848, {	-- Brutal Hauberk
					["qg"] = 5878,	-- Thun'grim Firegaze
					["sourceQuest"] = 1838,	-- Brutal Armor
					["coord"] = { 57.23, 30.34, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["groups"] = {
						i(7133),	-- Brutal Hauberk
					},
				}),
				q(1522, {	-- Call of Fire (1/5) (Orgrimmar)
					["qg"] = 5892,	-- Searn Firewarder
					["coord"] = { 37.8, 37.4, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(1523, {	-- Call of Fire (1/5) (Thunder Bluff)
					["qg"] = 5906,	-- Xanis Flameweaver
					["coord"] = { 25.2, 21, THUNDER_BLUFF },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(2983, {	-- Call of Fire (1/5) (Durotar)
					["qg"] = 3173,	-- Swart <Shaman Trainer>
					["coord"] = { 54.4, 42.6, DUROTAR },
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(2984, {	-- Call of Fire (1/5) (Mulgore)
					["qg"] = 3066,	-- Narm Skychaser <Shaman Trainer>
					["coord"] = { 48.4, 59.2, MULGORE },
					["maps"] = { MULGORE },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(1524, {	-- Call of Fire (2/5)
					["qg"] = 5907,	-- Kranal Fiss
					["sourceQuests"] = {
						1522,	-- Call of Fire (1/5) (Orgrimmar)
						1523,	-- Call of Fire (1/5) (Thunder Bluff)
						2983,	-- Call of Fire (1/5) (Durotar)
						2984,	-- Call of Fire (1/5) (Mulgore)
					},
					["coord"] = { 55.8, 20, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["cost"] = {
						{ "i", 6653, 1 },	-- Torch of the Dormant Flame
					},
					["lvl"] = 10,
				}),
				q(1525, {	-- Call of Fire (3/5)
					["qg"] = 5900,	-- Telf Joolam
					["sourceQuest"] = 1524,	-- Call of Fire (2/5)
					["coord"] = { 38.6, 58.8, DUROTAR },
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["cost"] = {
						{ "i", 5026, 1 },	-- Fire Tar
						{ "i", 6652, 1 },	-- Reagent Pouch
					},
					["lvl"] = 10,
					["g"] = {
						{
							["itemID"] = 6636,	-- Fire Sapta
							["questID"] = 1526,	-- Call of Fire (4/5)
						},
					},
				}),
				q(1526, {	-- Call of Fire (4/5)
					["qg"] = 5900,	-- Telf Joolam
					["sourceQuest"] = 1525,	-- Call of Fire (3/5)
					["coord"] = { 38.6, 58.8, DUROTAR },
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["cost"] = {
						{ "i", 6655, 1 },	-- Glowing Ember
					},
					["lvl"] = 10,
					["g"] = {
						{
							["itemID"] = 6636,	-- Fire Sapta
							["cr"] = 5893,	-- Minor Manifestation of Fire
							["coord"] = { 38.6, 58.2, DUROTAR },
							["groups"] = {
								{
									["itemID"] = 6655,	-- Glowing Ember
									["questID"] = 1526,	-- Call of Fire (4/5)
								},
							},
						},
					},
				}),
				q(1527, {	-- Call of Fire (5/5)
					["provider"] = { "o", 61934 },	-- Brazier of the Dormant Flame
					["sourceQuest"] = 1526,	-- Call of Fire (4/5)
					["coord"] = { 38.9, 58.2, DUROTAR },
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["cost"] = {
						{ "i", 6654, 1 },	-- Torch of the Eternal Flame
					},
					["lvl"] = 10,
					["g"] = {
						recipe(3599),	-- Searing Totem
						{
							["itemID"] = 5176,	-- Fire Totem
							["questID"] = 1527,	-- Call of Fire
							["description"] = "You must keep this in your bags forever.",
						},
					},
				}),
				q(855, {	-- Centaur Bracers
					["qg"] = 3389,	-- Regthar Deathgate
					["coord"] = { 45.34, 28.42, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["g"] = {
						i(5346),	-- Orcish Battle Bow
						i(5344),	-- Pointed Axe
						i(5345),	-- Stonewood Hammer
					},
				}),
				q(819, {	-- Chen's Empty Keg
					["description"] = "Started by picking up one of the many kegs littered throughout the Barrens.",
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
				}),
				q(821, {	-- Chen's Empty Keg
					["qg"] = 3292,	-- Brewmaster Drohn
					["sourceQuest"] = 819,	-- Chen's Empty Keg
					["coord"] = { 62.27, 38.39, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
					["g"] = {
						i(4952),	-- Stormstout
					},
				}),
				q(822, {	-- Chen's Empty Keg
					["qg"] = 3292,	-- Brewmaster Drohn
					["sourceQuest"] = 821,	-- Chen's Empty Keg
					["repeatable"] = true,
					["coord"] = { 62.27, 38.39, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
					["g"] = {
						i(4953),	-- Trogg Brew
					},
				}),
				q(1796, {	-- Components for the Enchanted Gold Bloodrobe (1/5)
					["qg"] = 6266,	-- Menara Voidrender
					["sourceQuests"] = {
						4736,	-- In Search of Menara Voidrender (Ironforge)
						4737,	-- In Search of Menara Voidrender (Orgrimmar)
						4738,	-- In Search of Menara Voidrender (Stormwind)
						4739,	-- In Search of Menara Voidrender (Undercity)
					},
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 5770, 1 },	-- Robes of Arcana
					},
					["lvl"] = 31,
				}),
				q(4781, {	-- Components for the Enchanted Gold Bloodrobe (2/5)
					["qg"] = 6266,	-- Menara Voidrender
					["sourceQuest"] = 1796,	-- Components for the Enchanted Gold Bloodrobe (1/5)
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 3577, 1 },	-- Gold Bar
					},
					["lvl"] = 31,
				}),
				q(4783, {	-- Components for the Enchanted Gold Bloodrobe (4/5)
					["qg"] = 6266,	-- Menara Voidrender
					["sourceQuest"] = 4782,	-- Components for the Enchanted Gold Bloodrobe (3/5)
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["maps"] = { DESOLACE },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 6989, 10 },	-- Vial of Hatefury Blood
						{ "i", 6990, 1 },	-- Lesser Infernal Stone
					},
					["lvl"] = 31,
				}),
				q(4784, {	-- Components for the Enchanted Gold Bloodrobe (5/5)
					["qg"] = 6266,	-- Menara Voidrender
					["sourceQuest"] = 4783,	-- Components for the Enchanted Gold Bloodrobe (4/5)
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["maps"] = { ARATHI_HIGHLANDS },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 12293, 1 },	-- Fine Gold Thread
						{ "i", 6991, 2 },	-- Smoldering Coal
						{ "i", 6265, 1 },	-- Soul Shard
					},
					["lvl"] = 31,
				}),
				q(899, {	-- Consumed by Hatred
					["qg"] = 3432,	-- Mankrik
					["coord"] = { 51.95, 31.58, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
					["g"] = {
						i(5314),	-- Boar Hunter's Cape
						i(6477),	-- Grassland Sash
					},
				}),
				q(4021, {	-- Counterattack!
					["qg"] = 3389,	-- Regthar Deathgate
					["sourceQuest"] = 852,	-- Hezrul Bloodmark
					["coord"] = { 45.34, 28.42, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
				}),
				q(913, {	-- Cry of the Thunderhawk
					["qg"] = 3387,	-- Jorn Skyseer
					["sourceQuest"] = 907,	-- Enraged Thunder Lizards
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(5302),	-- Cobalt Buckler
						i(5306),	-- Wind Rider Staff
						i(5299),	-- Gloves of the Moon
					},
				}),
				q(6129, {	-- Curing the Sick
					["qg"] = 3448,	-- Tonga Runetotem
					["sourceQuest"] = 6128,	-- Gathering the Cure
					["coord"] = { 52.2, 31.8, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 15826, 1 },	-- Curative Animal Salve
					},
					["lvl"] = 14,
					["groups"] = {
						i(15866),	-- Veildust Medicine Bag
					},
				}),
				q(1069, {	-- Deepmoss Spider Eggs
					["qg"] = 3446,	-- Mebok Mizzyrix
					["cost"] = {
						{ "i", 5570, 15 },	-- Deepmoss Egg
					},
					["coord"] = { 62.37, 37.32, THE_BARRENS },
					["maps"] = { STONETALON_MOUNTAINS },
					["lvl"] = 15,
				}),
				q(871, {	-- Disrupt the Attacks
					["qg"] = 3429,	-- Thork
					["coord"] = { 51.50, 30.86, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(1515, {	-- Dogran's Captivity
					["qg"] = 5911,	-- Grunt Logmar
					["sourceQuest"] = 1511,	-- Ken'zigla's Draught
					["coord"] = { 44.6, 59.2, THE_BARRENS },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 6624, 1 },	-- Ken'zigla's Draught
					},
					["lvl"] = 20,
				}),
				q(6385, {	-- Doras the Wind Rider Master
					["qg"] = 6929,	-- Innkeeper Gryshka
					["sourceQuest"] = 6384,	-- Ride to Orgrimmar
					["coord"] = { 54.09, 68.43, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = { ORC, TROLL },
					["lvl"] = 10,
				}),
				q(881, {	-- Echeyakee
					["qg"] = 3338,	-- Sergra Darkthorn
					["sourceQuest"] = 903,	-- Prowlers of the Barrens
					["coord"] = { 52.23, 31.01, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(868, {	-- Egg Hunt
					["qg"] = 3428,	-- Korran
					["coord"] = { 51.07, 29.62, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["g"] = {
						i(6503),	-- Harlequin Robes
						i(6502),	-- Violet Scale Armor
					},
				}),
				q(907, {	-- Enraged Thunder Lizards
					["qg"] = 3387,	-- Jorn Skyseer
					["sourceQuest"] = 882,	-- Ishamuhale
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1464, {	-- Fire Sapta
					["qg"] = 5900,	-- Telf Joolam
					["sourceQuest"] = 1525,	-- Call of Fire (3/5)
					["coord"] = { 38.6, 58.8, DUROTAR },
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["repeatable"] = true,
					["lvl"] = 10,
					["g"] = {
						{
							["itemID"] = 6636,	-- Fire Sapta
							["questID"] = 1526,	-- Call of Fire (4/5)
						},
					},
				}),
				q(1503, {	-- Forged Steel
					["qg"] = 5878,	-- Thun'grim Firegaze
					["sourceQuest"] = 1502,	-- Thun'grim Firegaze
					["coord"] = { 57.23, 30.34, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 6534, 1 },	-- Forged Steel Bars
					},
					["lvl"] = 10,
					["g"] = {
						{
							["itemID"] = 6534,	-- Forged Steel Bars
							["questID"] = 1503,	-- Forged Steel
							["coord"] = { 55.0, 26.6, THE_BARRENS },
						},
						i(7326),	-- Thun'grim's Axe
						i(7327),	-- Thun'grim's Dagger
						i(7328),	-- Thun'grim's Mace
						i(7329),	-- Thun'grim's Sword
					}
				}),
				q(1799, {	-- Fragments of the Orb of Orahil
					["qg"] = 6266,	-- Menara Voidrender
					["sourceQuests"] = {
						4965,	-- Knowledge of the Orb of Orahil [Ironforge]
						4967,	-- Knowledge of the Orb of Orahil [Orgrimmar]
						4968,	-- Knowledge of the Orb of Orahil [Stormwind]
						4969,	-- Knowledge of the Orb of Orahil [Undercity]
					},
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["maps"] = { DESOLACE, DUSTWALLOW_MARSH },
					["classes"] = { WARLOCK },
					["cr"] = 4668,	-- Burning Blade Summoner
					["cost"] = {
						{ "i", 7291, 1 },	-- 	Infernal Orb
					},
					["lvl"] = 35,
				}),
				q(898, {	-- Free From the Hold
					["qg"] = 3465,	-- Gilthares Firebough
					["coord"] = { 61.96, 54.97, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["g"] = {
						i(5311),	-- Buckled Boots
						i(5312),	-- Riveted Gauntlets
					},
				}),
				q(848, {	-- Fungal Spores
					["qg"] = 3390,	-- Apothecary Helbrim
					["coord"] = { 51.44, 30.15, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(843, {	-- Gann's Reclamation
					["qg"] = 3341,	-- Gann Stonespire
					["coord"] = { 46.08, 76.37, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				}),
				q(6128, {	-- Gathering the Cure
					["qg"] = 3448,	-- Tonga Runetotem
					["sourceQuest"] = 6127,	-- The Principal Source
					["coord"] = { 52.2, 31.8, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 2449, 5 },	-- Earthroot
						{ "i", 15852, 5 },	-- Kodo Horn
					},
					["crs"] = {
						3236,	-- Barrens Kodo
						3234,	-- Lost Barrens Kodo
					},
					["lvl"] = 14,
				}),
				q(875, {	-- Harpy Lieutenants
					["qg"] = 3449,	-- Darsok Swiftdagger
					["sourceQuest"] = 867,	-- Harpy Raiders
					["coord"] = { 51.62, 30.90, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(867, {	-- Harpy Raiders
					["qg"] = 3449,	-- Darsok Swiftdagger
					["coord"] = { 51.62, 30.90, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(1738, {	-- Heartswood
					["qg"] = 6244,	-- Takar the Seer
					["sourceQuest"] = 1716,	-- Devourer of Souls
					["coord"] = { 49.2, 57.0, THE_BARRENS },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 6912, 1 },	-- Heartswood
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 6912,	-- Heartswood
							["questID"] = 1738,	-- Heartswood
							["coord"] = { 31, 31, ASHENVALE },
						},
					},
				}),
				q(852, {	-- Hezrul Bloodmark
					["qg"] = 3389,	-- Regthar Deathgate
					["sourceQuest"] = 851,	-- Verog the Dervish
					["coord"] = { 45.34, 28.42, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
					["g"] = {
						i(5351),	-- Bounty Hunter's Ring
					},
				}),
				q(3514, {	-- Horde Presence
					["qg"] = 8582,	-- Kadrak
					["sourceQuest"] = 3513,	-- The Runed Scroll
					["coord"] = { 48.12, 5.42, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 15,
					["g"] = {
						i(10653),	-- Trailblazer Boots
						i(10654),	-- Jutebraid Gloves
					},
				}),
				q(4736, {	-- In Search of Menara Voidrender (Ironforge)
					["qg"] = 5172,	-- Briarthorn
					["coord"] = { 50.2, 6, IRONFORGE },
					["maps"] = { IRONFORGE },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 31,
				}),
				q(4737, {	-- In Search of Menara Voidrender (Orgrimmar)
					["qg"] = 3326,	-- Zevrost
					["coord"] = { 48.4, 45.6, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 31,
				}),
				q(4738, {	-- In Search of Menara Voidrender (Stormwind)
					["qg"] = 461,	-- Demisette Cloyce
					["coord"] = { 25.4, 78.2, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 31,
				}),
				q(4739, {	-- In Search of Menara Voidrender (Undercity)
					["qg"] = 4563,	-- Kaal Soulreaper
					["coord"] = { 86, 15.6, UNDERCITY },
					["maps"] = { UNDERCITY },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 31,
				}),
				q(858, {	-- Ignition
					["qg"] = 3439,	-- Wizzlecrank's Shredder
					["coord"] = { 56.52, 7.45, THE_BARRENS },
					["lvl"] = 13,
				}),
				q(873, {	-- Isha Awak
					["qg"] = 3388,	-- Mahren Skyseer
					["sourceQuest"] = 874,	-- Mahren Skyseer
					["coord"] = { 65.83, 43.85, THE_BARRENS },
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(5356),	-- Branding Rod
						i(5357),	-- Ward of the Vale
						i(5355),	-- Beastmaster's Girdle
					},
				}),
				q(882, {	-- Ishamuhale
					["qg"] = 3387,	-- Jorn Skyseer
					["sourceQuest"] = 3261,	-- Jorn Skyseer
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["g"] = {
						i(10338),	-- Fresh Zhevra Carcass
					},
				}),
				q(3261, {	-- Jorn Skyseer
					["qg"] = 3338,	-- Sergra Darkthorn
					["sourceQuest"] = 905,	-- The Angry Scytheclaws
					["coord"] = { 52.23, 31.01, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(854, {	-- Journey to the Crossroads
					["qg"] = 3418,	-- Kirge Sternhorn
					["coord"] = { 44.8, 58.6, THE_BARRENS },
					["races"] = { TAUREN },
					["isBreadcrumb"] = true,
					["lvl"] = 9,
				}),
				q(4967, {	-- Knowledge of the Orb of Orahil
					["qg"] = 3326,	-- Zevrost
					["coord"] = { 48.4, 45.6, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(4965, {	-- Knowledge of the Orb of Orahil
					["qg"] = 5172,	-- Briarthorn
					["coord"] = { 50.2, 6, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(4968, {	-- Knowledge of the Orb of Orahil
					["qg"] = 461,	-- Demisette Cloyce
					["coord"] = { 25.4, 78.2, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(4969, {	-- Knowledge of the Orb of Orahil
					["qg"] = 4563,	-- Kaal Soulreaper
					["coord"] = { 86, 15.6, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(850, {	-- Kolkar Leaders
					["qg"] = 3389,	-- Regthar Deathgate
					["coord"] = { 45.34, 28.42, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
				}),
				q(883, {	-- Lakota'mani
					["cr"] = 3474,	-- Lakota'mani
					["provider"] = { "i", 5099 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1060, {	-- Letter to Jin'Zil
					["qg"] = 3449,	-- Darsok Swiftdagger
					["sourceQuest"] = 876,	-- Serena Bloodfeather
					["coord"] = { 51.62, 30.90, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 15,
				}),
				q(4921, {	-- Lost in Battle
					["qg"] = 3432,	-- Mankrik
					["coord"] = { 51.95, 31.58, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(1512, {	-- Love's Gift
					["qg"] = 5908,	-- Grunt Dogran
					["sourceQuest"] = 1515,	-- Dogran's Captivity
					["coord"] = { 43.2, 47.8, THE_BARRENS },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 6625, 1 },	-- Dirt-caked Pendant
					},
					["lvl"] = 20,
				}),
				q(874, {	-- Mahren Skyseer
					["qg"] = 3387,	-- Jorn Skyseer
					["sourceQuest"] = 913,	-- Cry of the Thunderhawk
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(6365, {	-- Meats to Orgrimmar
					["qg"] = 3489,	-- Zargh
					["coord"] = { 52.62, 29.84, THE_BARRENS },
					["races"] = { ORC, TROLL },
					["lvl"] = 10,
				}),
				q(9267, {	-- Mending Old Wounds
					["qg"] = 16418,	-- Mupsi Shacklefridd
					["coord"] = { 61.22, 37.86, THE_BARRENS },
					["maxReputation"] = { 470, NEUTRAL },	-- Ratchet, must be less than Neutral
					["cost"] = {
						{ "i", 2589, 40 },	-- Linen Cloth
						{ "i", 3371, 4 },	-- Empty Vial
					},
					["repeatable"] = true,
					["lvl"] = 10,
				}),
				q(896, {	-- Miner's Fortune
					["qg"] = 3453,	-- Wharfmaster Dizzywig
					["coord"] = { 63.35, 38.45, THE_BARRENS },
					["lvl"] = 13,
					["g"] = {
						i(5335, {	-- A Sack of Coins
							i(4957),	-- Old Moneybag
						}),
					},
				}),
				q(2478, {	-- Mission: Possible But Not Probable
					["lvl"] = 20,
					["qg"] = 7233,	-- Taskmaster Fizzule
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { ROGUE },
					["sourceQuest"] = 2458,	-- Deep Cover
					["g"] = {
						i(18160),	-- Recipe: Thistle Tea
					}
				}),
				q(3301, {	-- Mura Runetotem
					["qg"] = 3448,	-- Tonga Runetotem
					["sourceQuest"] = 880,	-- Altered Beings
					["coord"] = { 52.26, 31.92, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["g"] = {
						i(10820),	-- Jackseed Belt
						i(10821),	-- Sower's Cloak
					},
				}),
				q(1946, {	-- Nether-lace Garment
					["qg"] = 3484,	-- Kil'hala <Journeyman Tailor>
					["sourceQuest"] = 1945,	-- Laughing Sisters
					["coord"] = { 52.2, 31.6, THE_BARRENS },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["lvl"] = 26,
					["groups"] = {
						i(7512),	-- Nether-lace Robe
						i(9515),	-- Nether-lace Tunic
					},
				}),
				q(1510, {	-- News of Dogran (2/2)
					["qg"] = 3464,	-- Gazrog
					["sourceQuest"] = 1509,	-- News of Dogran (1/2)
					["coord"] = { 51.8, 30.2, THE_BARRENS },
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["lvl"] = 20,
				}),
				q(3922, {	-- Nugget Slugs
					["qg"] = 9316,	-- Wenikee Boltbucket
					["sourceQuest"] = 3921,	-- Wenikee Boltbucket
					["coord"] = { 49.05, 11.17, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1840, {	-- Orm Stonehoof and the Brutal Helm
					["qg"] = 5878,	-- Thun'grim Firegaze
					["sourceQuest"] = 1838,	-- Brutal Armor
					["coord"] = { 57.2, 30.2, THE_BARRENS },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
				q(884, {	-- Owatanka
					["cr"] = 3473,	-- Owatanka
					["provider"] = { "i", 5102 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1040, {	-- Passage to Booty Bay
					["qg"] = 3453,	-- Wharfmaster Dizzywig
					["sourceQuest"] = 1039,	-- The Barrens Port(Darnassus)
					["coord"] = { 63.35, 38.45, THE_BARRENS },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(1498, {	-- Path of Defense
					["qg"] = 5810,	-- Uzzek
					["sourceQuest"] = 1505,	-- Veteran Uzzek
					["coord"] = { 61.38, 21.11, THE_BARRENS },
					["description"] = "Completing this quest prevents you from accepting \"Speak with Dillinger\" and \"Ulag the Cleaver\" in Silverpine Forest.",
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 6486, 5 },	-- Singed Scale
					},
					["lvl"] = 10,
				}),
				q(844, {	-- Plainstrider Menace
					["qg"] = 3338,	-- Sergra Darkthorn
					["sourceQuest"] = 860,	-- Sergra Darkthorn
					["coord"] = { 52.23, 31.01, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(2381, {	-- Plundering the Plunderers
					["qg"] = 7161,	-- Wrenix the Wretched
					["sourceQuest"] = 2382,	-- Wrenix of Ratchet
					["coord"] = { 63, 36.4, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 7968, 1 },	-- Southsea Treasure
					},
					["lvl"] = 16,
					["groups"] = {
						{
							["itemID"] = 7968,	-- Southsea Treasure
							["questID"] = 2381,	-- Plundering the Plunderers
							["cr"] = 7168,	-- Polly
							["coord"] = { 64.8, 45.4, THE_BARRENS },
						},
						i(7676),	-- Thistle Tea
					},
				}),
				q(903, {	-- Prowlers of the Barrens
					["qg"] = 3338,	-- Sergra Darkthorn
					["sourceQuest"] = 845,	-- The Zhevra
					["coord"] = { 52.23, 31.01, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(865, {	-- Raptor Horns
					["qg"] = 3446,	-- Mebok Mizzyrix
					["coord"] = { 62.37, 37.32, THE_BARRENS },
					["lvl"] = 13,
					["g"] = {
						i(5342),	-- Raptor Punch
						i(5343),	-- Barkeeper's Cloak
					},
				}),
				q(869, {	-- Raptor Thieves
					["qg"] = 3464,	-- Gazrog
					["coord"] = { 51.93, 30.32, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5046, {	-- Razorhide
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["repeatable"] = true,
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(6541, {	-- Report to Kadrak
					["qg"] = 3429,	-- Thork
					["coord"] = { 51.50, 30.86, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				}),
				q(6364, {	-- Return to Jahan
					["qg"] = 2995,	-- Tal
					["sourceQuest"] = 6363,	-- Tal the Wind Rider Master
					["coord"] = { 47.00, 49.84, THUNDER_BLUFF },
					["races"] = { TAUREN },
					["lvl"] = 10,
				}),
				q(6386, {	-- Return to the Crossroads.
					["qg"] = 3310,	-- Doras
					["sourceQuest"] = 6385,	-- Doras the Wind Rider Master
					["coord"] = { 45.21, 63.58, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = { ORC, TROLL },
					["lvl"] = 10,
				}),
				q(849, {	-- Revenge of Gann
					["qg"] = 3341,	-- Gann Stonespire
					["sourceQuest"] = 846,	-- Revenge of Gann
					["coord"] = { 46.08, 76.37, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["g"] = {
						i(5313),	-- Totemic Clan Ring
					},
				}),
				q(846, {	-- Revenge of Gann
					["qg"] = 3341,	-- Gann Stonespire
					["sourceQuest"] = 843,	-- Gann's Reclamation
					["coord"] = { 46.08, 76.37, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				}),
				q(6384, {	-- Ride to Orgrimmar
					["qg"] = 3615,	-- Devrak
					["sourceQuest"] = 6365,	-- Meats to Orgrimmar
					["coord"] = { 51.50, 30.34, THE_BARRENS },
					["lvl"] = 10,
					["races"] = { ORC, TROLL },
				}),
				q(6362, {	-- Ride to Thunder Bluff
					["qg"] = 3615,	-- Devrak
					["sourceQuest"] = 6361,	-- A Bundle of Hides
					["coord"] = { 51.50, 30.34, THE_BARRENS },
					["races"] = { TAUREN },
					["lvl"] = 10,
				}),
				q(3923, {	-- Rilli Greasygob
					["qg"] = 9316,	-- Wenikee Boltbucket
					["sourceQuest"] = 3922,	-- Nugget Slugs
					["coord"] = { 49.05, 11.17, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(5045, {	-- Rising Spirit
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["repeatable"] = true,
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(894, {	-- Samophlange
					["qg"] = 3442,	-- Sputtervalve
					["coord"] = { 62.98, 37.21, THE_BARRENS },
					["lvl"] = 10,
				}),
				q(900, {	-- Samophlange
					["provider"] = { "o", 4141 },	-- Control Console
					["sourceQuest"] = 894,	-- Samophlange
					["coord"] = { 52.41, 11.60, THE_BARRENS },
					["lvl"] = 10,
				}),
				q(901, {	-- Samophlange
					["provider"] = { "o", 4141 },	-- Control Console
					["sourceQuest"] = 900,	-- Samophlange
					["coord"] = { 52.41, 11.60, THE_BARRENS },
					["lvl"] = 10,
				}),
				q(902, {	-- Samophlange
					["provider"] = { "o", 4141 },	-- Control Console
					["sourceQuest"] = 901,	-- Samophlange
					["coord"] = { 52.41, 11.60, THE_BARRENS },
					["lvl"] = 10,
					["g"] = {
						i(5324),	-- Engineer's Hammer
						i(5325),	-- Welding Shield
					},
				}),
				q(3924, {	-- Samophlange Manual
					["qg"] = 9317,	-- Rilli Greasygob
					["sourceQuest"] = 3923,	-- Rilli Greasygob
					["coord"] = { 76.49, 24.47, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["g"] = {
						i(11855),	-- Tork Wrench
						i(11854),	-- Samophlange Screwdriver
						i(11147),	-- Samophlange Manual Cover
						i(11148),	-- Samophlange Manual Page
					},
				}),
				q(2996, {	-- Seeking Strahad (Orgrimmar)
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["coord"] = { 48.2, 45.6, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1798, {	-- Seeking Strahad (Stormwind)
					["qg"] = 6122,	-- Gakin the Darkbinder
					["coord"] = { 25.4, 78.4, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(3001, {	-- Seeking Strahad (Undercity)
					["qg"] = 5675,	-- Carendin Halgar
					["coord"] = { 85, 25.6, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(876, {	-- Serena Bloodfeather
					["qg"] = 3449,	-- Darsok Swiftdagger
					["sourceQuest"] = 875,	-- Harpy Lieutenants
					["coord"] = { 51.62, 30.90, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
					["g"] = {
						i(5321),	-- Elegant Shortsword
						i(5279),	-- Harpy Skinner
						i(5318),	-- Zhovur Axe
					},
				}),
				q(4962, {	-- Shard of a Felhound
					["lvl"] = 35,
					["classes"] = { WARLOCK },
					["altQuests"] = {
						4963 -- Shard of an Infernal
					},
					["qg"] = 6254,	-- Acolyte Wytula
				}),
				q(4963, {   -- Shard of an Infernal
					["lvl"] = 35,
					["classes"] = { WARLOCK },
					["altQuests"] = {
						4962 -- Shard of a Felhound
					},
					["qg"] = 6252, -- Acolyte Magaz
				}),
				q(887, {	-- Southsea Freebooters
					["qg"] = 3391,	-- Gazlowe
					["coord"] = {62.68, 36.24, THE_BARRENS },
					["lvl"] = 9,
				}),
				q(1823, {	-- Speak with Ruga
					["qgs"] = {
						3354,	-- Sorek
						3041,	-- Torm Ragetotem
						4595,	-- Baltus Fowler <Warrior Trainer>
					},
					["coords"] = {
						{ 80.2, 32.4, ORGRIMMAR },
						{ 57.4, 87.2, THUNDER_BLUFF },
						{ 47.2, 17, UNDERCITY },
					},
					["maps"] = { ORGRIMMAR, THUNDER_BLUFF, UNDERCITY },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
				q(1825, {	-- Speak with Thun'grim
					["qg"] = 6394,	-- Ruga Ragetotem
					["sourceQuest"] = 1824,	-- Trial at the Field of Giants
					["coord"] = { 44.68, 59.42, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
				q(889, {	-- Spirit of the Wind
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["repeatable"] = true,
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(888, {	-- Stolen Booty
					["qg"] = 3391,	-- Gazlowe
					["sourceQuest"] = 892,	-- The Missing Shipment
					["coord"] = {62.68, 36.24, THE_BARRENS },
					["lvl"] = 9,
					["g"] = {
						i(5337),	-- Wayfaring Gloves
						i(5320),	-- Padded Lamellar Boots
					},
				}),
				q(3281, {	-- Stolen Silver
					["qg"] = 3464,	-- Gazrog
					["sourceQuest"] = 869,	-- Raptor Thieves
					["coord"] = { 51.93, 30.32, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["g"] = {
						i(11853),	-- Rambling Boots
						i(2694),	-- Settler's Leggings
					},
				}),
				q(4487, {	-- Summon Felsteed (Ironforge)
					["qg"] = 5172,	-- Briarthorn
					["coord"] = { 50.2, 6, IRONFORGE },
					["maps"] = { IRONFORGE },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(3631, {	-- Summon Felsteed (Orgrimmar)
					["qg"] = 3326,	-- Zevrost
					["coord"] = { 48.4, 45.6, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(4488, {	-- Summon Felsteed (Stormwind)
					["qg"] = 461,	-- Demisette Cloyce <Warlock Trainer>
					["coord"] = { 25.4, 78.2, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(4489, {	-- Summon Felsteed (Undercity)
					["qg"] = 4563,	-- Kaal Soulreaper
					["coord"] = { 86, 15.6, UNDERCITY },
					["maps"] = { UNDERCITY },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(4490, {	-- Summon Felsteed
					["qg"] = 6251,	-- Strahad Farsan
					["sourceQuests"] = {
						4487,	-- Summon Felsteed (Ironforge)
						3631,	-- Summon Felsteed (Orgrimmar)
						4488,	-- Summon Felsteed (Stormwind)
						4489,	-- Summon Felsteed (Undercity)
					},
					["coord"] = { 62.6, 35.4, THE_BARRENS },
					["classes"] = { WARLOCK },
					["lvl"] = 40,
					["groups"] = {
						recipe(5784),	-- Summon Felsteed
					},
				}),
				q(5041, {	-- Supplies for the Crossroads
					["qg"] = 3429,	-- Thork
					["coord"] = { 51.50, 30.86, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(6363, {	-- Tal the Wind Rider Master
					["qg"] = 8359,	-- Ahanu
					["sourceQuest"] = 6362,	-- Ride to Thunder Bluff
					["coord"] = { 45.74, 55.86, THUNDER_BLUFF },
					["races"] = { TAUREN },
					["lvl"] = 10,
				}),
				q(1719, {	-- The Affray
					["lvl"] = 30,
					["classes"] = { WARRIOR },
					["qg"] = 6236,	-- Klannoc Macleod
					["sourceQuest"] = 1718,	-- The Islander
				}),
				q(905, {	-- The Angry Scytheclaws
					["qg"] = 3338,	-- Sergra Darkthorn
					["sourceQuest"] = 881,	-- Echeyakee
					["coord"] = { 52.23, 31.01, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["g"] = {
						i(5165),	-- Sunscale Feather
					},
				}),
				q(6382, {	-- The Ashenvale Hunt
					["qg"] = 3387,	-- Jorn Skyseer
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["altQuests"] = {
						6383,	-- The Ashenvale Hunt
					},
					["lvl"] = 20,
				}),
				q(886, {	-- The Barrens Oases
					["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
					["coord"] = { 78.63, 28.56, THUNDER_BLUFF },
					["isBreadcrumb"] = true,
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1795, {	-- The Binding (Felhunter)
					["qg"] = 6251,	-- Strahad Farsan
					["sourceQuests"] = {
						1804,	-- Tome of the Cabal (3/3 Alliance)
						1805,	-- Tome of the Cabal (3/3 Horde)
					},
					["coord"] = { 62.6, 35.4, THE_BARRENS },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 6999, 1 },	-- Tome of the Cabal
					},
					["lvl"] = 30,
					["g"] = {
						recipe(691),	-- Summon Felhunter
						i(22244),	-- Box of Souls
					},
				}),
				q(4964, {	-- The Completed Orb of Dar'Orahil
					["qg"] = 6266,	-- Menara Voidrender
					["altQuests"] = { 4975 },	-- The Completed Orb of Noh'Orahil
					["sourceQuest"] = 4976,	-- Returning the Cleansed Orb
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["classes"] = { WARLOCK },
					["lvl"] = 35,
					["groups"] = {
						i(15108),	-- Orb of Dar'Orahil
						i(15106),	-- Staff of Dar'Orahil
					},
				}),
				q(4975, {	-- The Completed Orb of Noh'Orahil
					["qg"] = 6266,	-- Menara Voidrender
					["altQuests"] = { 4964 },	-- The Completed Orb of Dar'Orahil
					["sourceQuest"] = 4976,	-- Returning the Cleansed Orb
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["classes"] = { WARLOCK },
					["lvl"] = 35,
					["groups"] = {
						i(15107),	-- Orb of Noh'Orahil
						i(15105),	-- Staff of Noh'Orahil
					},
				}),
				q(4786, {	-- The Completed Robe
					["qg"] = 6266,	-- Menara Voidrender
					["sourceQuest"] = 4784,	-- Components for the Enchanted Gold Bloodrobe (5/5)
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["classes"] = { WARLOCK },
					["lvl"] = 31,
					["g"] = {
						i(6900),	-- Enchanted Gold Bloodrobe
					},
				}),
				q(872, {	-- The Disruption Ends
					["qg"] = 3429,	-- Thork
					["sourceQuest"] = 871,	-- Disrupt the Attacks
					["coord"] = { 51.50, 30.86, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["g"] = {
						i(5275),	-- Binding Girdle
						i(5328),	-- Cinched Belt
					},
				}),
				q(863, {	-- The Escape
					["qg"] = 3439,	-- Wizzlecrank's Shredder
					["sourceQuest"] = 858,	-- Ignition
					["coord"] = { 56.52, 7.45, THE_BARRENS },
					["lvl"] = 13,
					["g"] = {
						i(5326),	-- Flaring Baton
						i(5327),	-- Greasy Tinker's Pants
					},
				}),
				q(870, {	-- The Forgotten Pools
					["qg"] = 3448,	-- Tonga Runetotem
					["sourceQuest"] = 886,	-- The Barrens Oases
					["coord"] = { 52.26, 31.92, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(891, {	-- The Guns of Northwatch
					["qg"] = 3339,	-- Captain Thalo'thas Brightsun
					["coord"] = { 62.29, 39.03, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["g"] = {
						i(5309),	-- Privateer Musket
						i(5310),	-- Sea Dog Britches
					},
				}),
				q(897, {	-- The Harvester
					["cr"] = 3253,	-- Silithid Harvester
					["provider"] = { "i", 5138 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1718, {	-- The Islander
					["lvl"] = 30,
					["classes"] = { WARRIOR },
					["qgs"] = {
						3041,	-- Torm Ragetotem
						3354,	-- Sorek
						4595,	-- Baltus Fowler
						5113,	-- Kelv Sternhammer
						5479,	-- Wu Shen
					},
				}),
				q(892, {	-- The Missing Shipment
					["qg"] = 3453,	-- Wharfmaster Dizzywig
					["coord"] = { 63.35, 38.45, THE_BARRENS },
					["sourceQuest"] = 890,	-- The Missing Shipment
					["lvl"] = 9,
				}),
				q(890, {	-- The Missing Shipment
					["qg"] = 3391,	-- Gazlowe
					["sourceQuest"] = 887,	-- Southsea Freebooters
					["coord"] = {62.68, 36.24, THE_BARRENS },
					["lvl"] = 9,
				}),
				q(1740, {	-- The Orb of Soran'ruk
					["qg"] = 6247,	-- Doan Karhan
					["coord"] = { 49.2, 57.2, THE_BARRENS },
					["maps"] = { BLACKFATHOM_DEEPS, SHADOWFANG_KEEP },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 6914, 3 },	-- Soran'ruk Fragment
						{ "i", 6915, 1 },	-- Large Soran'ruk Fragment
					},
					["lvl"] = 20,
					["g"] = {
						i(6898),	-- Orb of Soran'ruk
						i(15109),	-- Staff of Soran'ruk
					},
				}),
				q(3513, {	-- The Runed Scroll
					["cr"] = 5797,	-- Aean Swiftriver
					["provider"] = { "i", 10621 },
					["races"] = HORDE_ONLY,
					["lvl"] = 15,
				}),
				q(877, {	-- The Stagnant Oasis
					["qg"] = 3448,	-- Tonga Runetotem
					["sourceQuest"] = 870,	-- The Forgotten Pools
					["coord"] = { 52.26, 31.92, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1145, {	-- The Swarm Grows
					["qg"] = 3428,	-- Korran
					["coord"] = { 51.07, 29.62, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(857, {	-- The Tear of the Moons
					["qg"] = 3421,	-- Feegly the Exiled
					["coord"] = { 48.95, 86.32, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 22,
				}),
				q(6543, {	-- The Warsong Reports
					["qg"] = 8582,	-- Kadrak
					["sourceQuests"] = { 6542, 6541 },	-- Report to Kadrak
					["coord"] = { 48.12, 5.42, THE_BARRENS },
					["maps"] = { ASHENVALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16783, 1 },	-- Bundle of Reports
						{ "i", 16765, 1 },	-- Warsong Outrider Update
						{ "i", 16763, 1 },	-- Warsong Runner Update
						{ "i", 16764, 1 },	-- Warsong Scout Update
					},
					["lvl"] = 17,
				}),
				q(1791, {	-- The Windwatcher
					["lvl"] = 30,
					["classes"] = { WARRIOR },
					["qg"] = 6236,	-- Klannoc Macleod
					["sourceQuest"] = 1719,	-- The Affray
					["isBreadcrumb"] = true,
				}),
				q(845, {	-- The Zhevra
					["qg"] = 3338,	-- Sergra Darkthorn
					["sourceQuest"] = 844,	-- Plainstrider Menace
					["coord"] = { 52.23, 31.01, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1502, {	-- Thun'grim Firegaze
					["qg"] = 5810,	-- Uzzek
					["sourceQuest"] = 1498,	-- Path of Defense
					["coord"] = { 61.38, 21.11, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(1758, {	-- Tome of the Cabal (1/3 Alliance)
					["qg"] = 6251,	-- Strahad Farsan
					["sourceQuest"] = 1798,	-- Seeking Strahad
					["coord"] = { 62.6, 35.4, THE_BARRENS },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["lvl"] = 30,
				}),
				q(1801, {	-- Tome of the Cabal (1/3 Horde)
					["qg"] = 6251,	-- Strahad Farsan
					["sourceQuests"] = {
						2996,	-- Seeking Strahad (Orgrimmar)
						3001,	-- Seeking Strahad (Undercity)
					},
					["coord"] = { 62.6, 35.4, THE_BARRENS },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 30,
				}),
				q(1824, {	-- Trial at the Field of Giants
					["qg"] = 6394,	-- Ruga Ragetotem
					["sourceQuest"] = 1823,	-- Speak with Ruga
					["coord"] = { 44.68, 59.42, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 7119, 5 },	-- Twitching Antenna
					},
					["lvl"] = 20,
					["groups"] = {
						i(7120),	-- Ruga's Bulwark
					},
				}),
				q(878, {	-- Tribes at War
					["qg"] = 3430,	-- Mangletooth
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(1839, {	-- Ula'elek and the Brutal Gauntlets
					["qg"] = 5878,	-- Thun'grim Firegaze
					["sourceQuest"] = 1838,	-- Brutal Armor
					["coord"] = { 57.2, 30.2, THE_BARRENS },
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
				q(851, {	-- Verog the Dervish
					["qg"] = 3389,	-- Regthar Deathgate
					["coord"] = { 45.34, 28.42, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
				}),
				q(1505, {	-- Veteran Uzzek
					["qgs"] = {
						3170,	-- Tarshaw Jaggedscar
						3354,	-- Sorek
						3063,	-- Krang Stonehoof
					},
					["coords"] = {
						{ 54.18, 42.47, DUROTAR },
						{ 49.4, 60.4, MULGORE },
						{ 80.3, 32.4, ORGRIMMAR },
					},
					["maps"] = {
						DUROTAR,
						MULGORE,
						ORGRIMMAR,
					},
					["description"] = "This quest becomes unavailable after completing \"Ulag the Cleaver\" in Tirisfal Glades.",
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(895, {	-- WANTED: Baron Longshore
					["provider"] = { "o", 3972 },
					["coord"] = { 62.59, 37.47, THE_BARRENS },
					["lvl"] = 11,
				}),
				q(885, {	-- Washte Pawne
					["cr"] = 3472,	-- Washte Pawne
					["provider"] = { "i", 5103 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(893, {	-- Weapons of Choice
					["qg"] = 3433,	-- Tatternack Steelforge
					["coord"] = { 45.10, 57.69, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["g"] = {
						i(5322),	-- Demolition Hammer
						i(5323),	-- Everglow Lantern
					},
				}),
				q(3921, {	-- Wenikee Boltbucket
					["qg"] = 3442,	-- Sputtervalve
					["sourceQuest"] = 902,	-- Samophlange
					["coord"] = { 62.98, 37.21, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1492, {	-- Wharfmaster Dizzywig
					["qg"] = 3390,	-- Apothecary Helbrim
					["coord"] = { 51.44, 30.15, THE_BARRENS },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5044, {	-- Wisdom of Agamaggan
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["repeatable"] = true,
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
			}),
		}),
	}),
};