---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(MULGORE, {
			n(QUESTS, {
				q(752, {	-- A Humble Task (1/2)
					["qg"] = 2981,	-- Chief Hawkwind
					["coord"] = { 44.2, 76, MULGORE },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(753, {	-- A Humble Task (2/2)
					["qg"] = 2991,	-- Greatmother Hawkwind
					["coord"] = { 50.0, 81.0, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4755, 1 },	-- Water Pitcher
					},
					["groups"] = {
						{
							["itemID"] = 4755,	-- Water Pitcher
							["questID"] = 753,	-- A Humble Task (2/2)
							["coord"] = { 50.2, 81.3, MULGORE },
						},
					},
				}),
				q(833, {	-- A Sacred Burial
					["qg"] = 3233,	-- Lorekeeper Raintotem
					["coord"] = { 59.8, 25.6, MULGORE },
					["races"] = HORDE_ONLY,
					["lvl"] = 7,
				}),
				q(1656, {	-- A Task Unfinished
					["qg"] = 6775,	-- Antur Fallow
					["coord"] = { 38.6, 81.6, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 7626, 1 },	-- Bundle of Furs
					},
				}),
				q(781, {	-- Attack on Camp Narache
					["provider"] = { "i", 4851 },	-- Dirt-stained Map
					["coord"] = { 63.3, 82.6, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4850, 1 },	-- Bristleback Attack Plans
					},
					["g"] = {
						i(4911),	-- Thick Bark Buckler
					},
				}),
				q(3376, {	-- Break Sharptusk!
					["qg"] = 3209,	-- Brave Windfeather
					["coord"] = { 44.8, 76.6, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10459, 1 },	-- Chief Sharptusk Thornmantle's Head
					},
					["lvl"] = 3,
					["g"] = {
						{
							["itemID"] = 10459,	-- Chief Sharptusk Thornmantle's Head
							["questID"] = 3376,	-- Break Sharptusk!
							["cr"] = 8554,	-- Chief Sharptusk Thornmantle
							["coord"] = { 64.6, 77.8, MULGORE },
						},
						i(10635),	-- Painted Chain Leggings
						i(10636),	-- Nomadic Gloves
					},
				}),
				q(1519, {	-- Call of Earth (1/3)
					["qg"] = 5888,	-- Seer Ravenfeather
					["coord"] = { 44.8, 76.2, MULGORE },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["altQuests"] = {
							1516, -- Call of Earth (1/3 Durotar)
							},
					["cost"] = {
						{ "i", 6634, 2 },	-- Ritual Salve
					},
					["lvl"] = 4,
				}),
				q(1520, {	-- Call of Earth (2/3)
					["qg"] = 5888,	-- Seer Ravenfeather
					["sourceQuest"] = 1519,	-- Call of Earth (1/3)
					["coord"] = { 44.8, 76.2, MULGORE },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["altQuests"] = {
						1517, -- Call of Earth (2/3 Durotar)
					},
					["cost"] = {
						{ "i", 6635, 1 },	-- Earth Sapta
					},
					["lvl"] = 4,
				}),
				q(1521, {	-- Call of Earth (3/3)
					["qg"] = 5891,	-- Minor Manifestation of Earth
					["sourceQuest"] = 1520,	-- Call of Earth (2/3)
					["coord"] = { 53.8, 80.4, MULGORE },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["altQuests"] = {
							1518, -- Call of Earth (3/3 Durotar)
							},
					["cost"] = {
						{ "i", 6656, 1 },	-- Rough Quartz
					},
					["lvl"] = 4,
					["groups"] = {
						recipe(8071),	-- Stoneskin Totem
						{
							["itemID"] = 5175,	-- Earth Totem
							["questID"] = 1521,	-- Call of Earth (3/3)
							["description"] = "You must keep this in your bags forever.",
						},
					},
				}),
				q(743, {	-- Dangers of the Windfury
					["qg"] = 2985,	-- Ruul Eagletalon
					["coord"] = { 47.4, 62.0, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4751, 8 },	-- Windfury Talon
					},
					["lvl"] = 5,
				}),
				q(746, {	-- Dwarven Digging
					["qg"] = 2993,	-- Baine Bloodhoof
					["coord"] = { 47.5, 60.2, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4703, 6 },	-- Broken Tools
					},
					["lvl"] = 6,
					["g"] = {
						{
							["itemID"] = 4702,	-- Prospector's Pick
							["coord"] = { 34, 46, MULGORE },
							["crs"] = {
								2990,	-- Bael'dun Appraiser
								2989,	-- Bael'dun Digger
							},
							["groups"] = {
								{
									["itemID"] = 4703,	-- Broken Tools
									["questID"] = 746,	-- Dwarven Digging
								},
							},
						},
						i(4969),	-- Fortified Bindings
						i(4970),	-- Rough-hewn Kodo Leggings
						i(4702),	-- Prospector's Pick
					},
				}),
				q(1462, {	-- Earth Sapta
					["qg"] = 5888,	-- Seer Ravenfeather
					["sourceQuest"] = 1519,	-- Call of Earth (1/3)
					["coord"] = { 44.8, 76.2, MULGORE },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["altQuests"] = {
						1463, -- Earth Sapta (Durotar)
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 6635, 1 },	-- Earth Sapta
					},
					["lvl"] = 4,
				}),
				q(3092, {	-- Etched Note
					["qg"] = 2980,	-- Grull Hawkwind
					["sourceQuest"] = 747,	-- The Hunt Begins
					["coord"] = { 44.9, 77.1, MULGORE },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 9565, 1 },	-- Etched Note
					},
				}),
				q(775, {	-- Journey into Thunder Bluff
					["qg"] = 2994,	-- Ancestral Spirit
					["sourceQuest"] = 773,	-- Rite of Wisdom
					["coord"] = { 61.4, 21, MULGORE },
					["races"] = HORDE_ONLY,
					["lvl"] = 3,
				}),
				q(766, {	-- Mazzranache
					["qg"] = 3055,	-- Maur Raincaller
					["coord"] = { 47, 57, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4805, 1 },	-- Flatland Cougar Femur
						{ "i", 4806, 1 },	-- Plainstrider Scale
						{ "i", 4804, 1 },	-- Prairie Wolf Heart
						{ "i", 4807, 1 },	-- Swoop Gizzard
					},
					["lvl"] = 5,
					["g"] = {
						i(4972),	-- Cliff Runner Boots
						i(4973),	-- Plains Hunter Wristguards
					},
				}),
				q(748, {	-- Poison Water
					["qg"] = 2948,	-- Mull Thunderhorn
					["coord"] = { 48.5, 60.4, MULGORE },
					["races"] = { TAUREN },
					["cost"] = {
						{ "i", 4759, 4 },	-- Plainstrider Talon
						{ "i", 4758, 6 },	-- Prairie Wolf Paw
					},
					["lvl"] = 4,
				}),
				q(757, {	-- Rite of Strength
					["qg"] = 2982,	-- Seer Graytongue
					["sourceQuest"] = 755,	-- Rites of the Earthmother (1/3)
					["coord"] = { 42.6, 92, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4770, 12 },	-- Bristleback Belt
					},
					["g"] = {
						i(1382),	-- Rock Mace
						i(1383),	-- Stone Tomahawk
						i(2137),	-- Whittling Knife
						i(5776),	-- Elder's Cane
						i(5777),	-- Brave's Axe
					},
				}),
				q(767, {	-- Rite of Vision (1/3)
					["qg"] = 2993,	-- Baine Bloodhoof
					["sourceQuest"] = 763,	-- Rites of the Earthmother (2/3)
					["coord"] = { 47.5, 60.2, MULGORE },
					["races"] = HORDE_ONLY,
					["lvl"] = 3,
				}),
				q(771, {	-- Rite of Vision (2/3)
					["qg"] = 3054,	-- Zarlman Two-Moons
					["sourceQuest"] = 767,	-- Rite of Vision (1/3)
					["coord"] = { 47.8, 57.5, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4809, 2 },	-- Ambercorn
						{ "i", 4808, 2 },	-- Well Stone
					},
					["lvl"] = 3,
				}),
				q(772, {	-- Rite of Vision (3/3)
					["qg"] = 3054,	-- Zarlman Two-Moons
					["sourceQuest"] = 771,	-- Rite of Vision (2/3)
					["coord"] = { 47.8, 57.5, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4823, 1 },	-- Water of the Seers
					},
					["lvl"] = 3,
					["g"] = {
						i(4906),	-- Rainwalker Boots
						i(4958),	-- Sun-beaten Cloak
					},
				}),
				q(773, {	-- Rite of Wisdom
					["qg"] = 2984,	-- Seer Wiserunner
					["sourceQuest"] = 772,	-- Rite of Vision (3/3)
					["coord"] = { 32.8, 36.0, MULGORE },
					["races"] = HORDE_ONLY,
					["lvl"] = 3,
				}),
				q(755, {	-- Rites of the Earthmother (1/3)
					["qg"] = 2981,	-- Chief Hawkwind
					["sourceQuest"] = 753,	-- A Humble Task (2/2)
					["coord"] = { 44.2, 76.1, MULGORE },
					["races"] = HORDE_ONLY,
				}),
				q(763, {	-- Rites of the Earthmother (2/3)
					["qg"] = 2981,	-- Chief Hawkwind
					["sourceQuest"] = 757,	-- Rite of Strength
					["coord"] = { 44.2, 76.1, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4783, 1 },	-- Totem of Hawkwind
					},
				}),
				q(776, {	-- Rites of the Earthmother (3/3)
					["qg"] = 3057,	-- Cairne Bloodhoof <High Chieftain>
					["sourceQuest"] = 775,	-- Journey into Thunder Bluff
					["coord"] = { 59.8, 51.6, THUNDER_BLUFF },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4841, 1 },	-- Horn of Arra'chea
					},
					["lvl"] = 3,
					["g"] = {
						{
							["itemID"] = 4841,	-- Horn of Arra'chea
							["questID"] = 776,	-- Rites of the Earthmother (3/3)
							["coords"] = {
								{ 48.4, 15.6, MULGORE },
								{ 53.0, 13.2, MULGORE },
								{ 55.0, 22.0, MULGORE },
								{ 56.4, 29.0, MULGORE },
								{ 52.2, 31.2, MULGORE },
								{ 51.0, 25.8, MULGORE },
								{ 49.6, 20.8, MULGORE },
							},
							["cr"] = 3058,	-- Arra'chea
						},
						i(4909),	-- Kodo Hunter's Leggings
					},
				}),
				q(3093, {	-- Rune-Inscribed Note
					["qg"] = 2980,	-- Grull Hawkwind
					["sourceQuest"] = 747,	-- The Hunt Begins
					["coord"] = { 44.9, 77.1, MULGORE },
					["races"] = { TAUREN },
					["classes"] = { SHAMAN },
					["cost"] = {
						{ "i", 9552, 1 },	-- Rune-Inscribed Note
					},
				}),
				q(745, {	-- Sharing the Land
					["qg"] = 2993,	-- Baine Bloodhoof
					["coord"] = { 47.5, 60.2, MULGORE },
					["races"] = HORDE_ONLY,
					["g"] = {
						i(4960),	-- Flash Pellet
					},
				}),
				q(3091, {	-- Simple Note
					["qg"] = 2980,	-- Grull Hawkwind
					["sourceQuest"] = 747,	-- The Hunt Begins
					["coord"] = { 44.9, 77.1, MULGORE },
					["races"] = { TAUREN },
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 9547, 1 },	-- Simple Note
					},
				}),
				q(765, {	-- Supervisor Fizsprocket
					["qg"] = 2988,	-- Morin Cloudstalker
					["sourceQuest"] = 751,	-- The Ravaged Caravan (2/2)
					["coord"] = { 54.4, 60.4, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4819, 1 },	-- Fizsprocket's Clipboard
					},
					["lvl"] = 5,
					["g"] = {
						{
							["itemID"] = 4819,	-- Fizsprocket's Clipboard
							["questID"] = 765,	-- Supervisor Fizsprocket
							["coord"] = { 64.8, 43.4, MULGORE },
							["cr"] = 3051,	-- Supervisor Fizsprocket
						},
						i(4974),	-- Compact Fighting Knife
						i(4964),	-- Goblin Smasher
					},
				}),
				q(761, {	-- Swoop Hunting
					["qg"] = 2947,	-- Harken Windtotem
					["coord"] = { 48.7, 59.3, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4769, 8 },	-- Trophy Swoop Quill
					},
					["lvl"] = 4,
				}),
				q(6061, {	-- Taming the Beast (1/3)
					["qg"] = 3065,	-- Yaw Sharpmane <Hunter Trainer>
					["sourceQuests"] = {
						6065,	-- The Hunter's Path
						6066,	-- The Hunter's Path
						6067,	-- The Hunter's Path
					},
					["coord"] = { 47.8, 55.6, MULGORE },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 15914, 1 },	-- Taming Rod
					},
					["lvl"] = 10,
				}),
				q(6087, {	-- Taming the Beast (2/3)
					["qg"] = 3065,	-- Yaw Sharpmane <Hunter Trainer>
					["sourceQuest"] = 6061,	-- Taming the Beast (1/3)
					["coord"] = { 47.8, 55.6, MULGORE },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 15915, 1 },	-- Taming Rod
					},
					["lvl"] = 10,
				}),
				q(6088, {	-- Taming the Beast (3/3)
					["qg"] = 3065,	-- Yaw Sharpmane <Hunter Trainer>
					["sourceQuest"] = 6087,	-- Taming the Beast (2/3)
					["coord"] = { 47.8, 55.6, MULGORE },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 15916, 1 },	-- Taming Rod
					},
					["lvl"] = 10,
					["groups"] = {
						recipe(883),	-- Call Pet
						recipe(2641),	-- Dismiss Pet
						recipe(1515),	-- Tame Beast
					},
				}),
				q(780, {	-- The Battleboars
					["qg"] = 2980,	-- Grull Hawkwind
					["sourceQuest"] = 750,	-- The Hunt Continues
					["coord"] = { 44.9, 77.1, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4849, 8 },	-- Battleboar Flank
						{ "i", 4848, 8 },	-- Battleboar Snout
					},
					["g"] = {
						i(6059),	-- Nomadic Vest
					},
				}),
				q(770, {	-- The Demon Scarred Cloak
					["provider"] = { "i", 4854 },	-- Demon Scarred Cloak
					["races"] = HORDE_ONLY,
					["cr"] = 3056,	-- Ghost Howl
					["lvl"] = 6,
					["g"] = {
						i(4971),	-- Skorn's Hammer
						i(3079),	-- Skorn's Rifle
					},
				}),
				q(747, {	-- The Hunt Begins
					["qg"] = 2980,	-- Grull Hawkwind
					["coord"] = { 44.9, 77.1, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4740, 7 },	-- Plainstrider Feather
						{ "i", 4739, 7 },	-- Plainstrider Meat
					},
					["g"] = {
						i(4954),	-- Nomadic Belt
						i(4910),	-- Painted Chain Gloves
					},
				}),
				q(750, {	-- The Hunt Continues
					["qg"] = 2980,	-- Grull Hawkwind
					["sourceQuest"] = 747,	-- The Hunt Begins
					["coord"] = { 44.9, 77.1, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4742, 10 },	-- Mountain Cougar Pelt
					},
					["g"] = {
						i(4908),	-- Nomadic Bracers
						i(4913),	-- Painted Chain Belt
					},
				}),
				q(6065, {	-- The Hunter's Path
					["qg"] = 3038,	-- Kary Thunderhorn <Hunter Trainer>
					["coord"] = { 58.4, 88.0, THUNDER_BLUFF },
					["maps"] = { THUNDER_BLUFF },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6066, {	-- The Hunter's Path
					["qg"] = 3061,	-- Lanka Farshot <Hunter Trainer>
					["coord"] = { 44.3, 75.7, MULGORE },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6067, {	-- The Hunter's Path
					["qg"] = 3171,	-- Thotar <Hunter Trainer>
					["coord"] = { 51.9, 43.5, DUROTAR },
					["maps"] = { DUROTAR },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(861, {	-- The Hunter's Way
					["qg"] = 3052,	-- Skorn Whitecloud
					["coord"] = { 46.76, 60.22, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5203, 4 },	-- Flatland Prowler Claw
					},
					["altQuests"] = {
						860,	-- Sergra Darkthorn
						844,	-- Plainstrider Menace
					},
					["lvl"] = 10,
				}),
				q(749, {	-- The Ravaged Caravan (1/2)
					["qg"] = 2988,	-- Morin Cloudstalker
					["coord"] = { 54.4, 60.4, MULGORE },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
				}),
				q(751, {	-- The Ravaged Caravan (2/2)
					["provider"] = { "o", 2908 },	-- Sealed Supply Crate
					["sourceQuest"] = 749,	-- The Ravaged Caravan (1/2)
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4834, 1 },	-- Venture Co. Documents
					},
					["lvl"] = 5,
				}),
				q(764, {	-- The Venture Co.
					["qg"] = 2988,	-- Morin Cloudstalker
					["sourceQuest"] = 751,	-- The Ravaged Caravan (2/2)
					["coord"] = { 54.4, 60.4, MULGORE },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
				}),
				q(758, {	-- Thunderhorn Cleansing
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 5415,	-- Thunderhorn Totem
					["coord"] = { 48.5, 60.4, MULGORE },
					["races"] = { TAUREN },
					["cost"] = {
						{ "i", 5415, 1 },	-- Thunderhorn Cleansing Totem
					},
					["lvl"] = 4,
					["g"] = {
						{
							["itemID"] = 5415,	-- Thunderhorn Cleansing Totem
							["questID"] = 758,	-- Thunderhorn Cleansing
							["coord"] = { 44, 45, MULGORE },
						},
						i(4963),	-- Thunderhorn Cloak
					},
				}),
				q(756, {	-- Thunderhorn Totem
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 754,	-- Winterhoof Cleansing
					["coord"] = { 48.5, 60.4, MULGORE },
					["races"] = { TAUREN },
					["cost"] = {
						{ "i", 4802, 6 },	-- Cougar Claws
						{ "i", 4801, 6 },	-- Stalker Claws
					},
					["lvl"] = 4,
				}),
				q(6089, {	-- Training the Beast
					["qg"] = 3065,	-- Yaw Sharpmane <Hunter Trainer>
					["sourceQuest"] = 6088,	-- Taming the Beast (3/3)
					["coord"] = { 47.8, 55.6, MULGORE },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						recipe(6991),		-- Feed Pet
						recipe(982),		-- Revive Pet
					},
				}),
				q(3094, {	-- Verdant Note
					["qg"] = 2980,	-- Grull Hawkwind
					["sourceQuest"] = 747,	-- The Hunt Begins
					["coord"] = { 44.9, 77.1, MULGORE },
					["races"] = { TAUREN },
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 9581, 1 },	-- Verdant Note
					},
				}),
				un(REMOVED_FROM_GAME, q(5844, {	-- Welcome!
					["provider"] = { "i", 14650 },	-- Camp Narache Gift Voucher
					["altQuests"] = {
						5843,	-- Welcome! [Durotar]
						5844,	-- Welcome! [Mulgore]
						5847,	-- Welcome! [Tirisfal Glades]
					},
					["races"] = HORDE_ONLY,
					["g"] = bubbleDown({ ["u"] = REMOVED_FROM_GAME }, {
						i(13584),	-- Diablo Stone
						i(13583),	-- Panda Collar
						i(13582),	-- Zergling Leash
					}),
				})),
				q(760, {	-- Wildmane Cleansing
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 759,	-- Wildmane Totem
					["coord"] = { 48.5, 60.4, MULGORE },
					["races"] = { TAUREN },
					["cost"] = {
						{ "i", 5416, 1 },	-- Wildmane Cleansing Totem
					},
					["lvl"] = 4,
					["g"] = {
						{
							["itemID"] = 5416,	-- Wildmane Cleansing Totem
							["questID"] = 760,	-- Wildmane Cleansing
							["coord"] = { 43, 14, MULGORE },
						},
						i(3443),	-- Ceremonial Tomahawk
						i(4961),	-- Dreamwatcher Staff
					},
				}),
				q(759, {	-- Wildmane Totem
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 758,	-- Thunderhorn Cleansing
					["coord"] = { 48.5, 60.4, MULGORE },
					["races"] = { TAUREN },
					["cost"] = {
						{ "i", 4803, 8 },	-- Prairie Alpha Tooth
					},
					["lvl"] = 4,
				}),
				q(754, {	-- Winterhoof Cleansing
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 748,	-- Poison Water
					["coord"] = { 48.5, 60.4, MULGORE },
					["races"] = { TAUREN },
					["cost"] = {
						{ "i", 5411, 1 },	-- Winterhoof Cleansing Totem
					},
					["lvl"] = 4,
					["g"] = {
						{
							["itemID"] = 5411,	-- Winterhoof Cleansing Totem
							["questID"] = 754,	-- Winterhoof Cleansing
							["coord"] = { 53, 66, MULGORE },
						},
					},
				}),
			}),
		}),
	}),
};