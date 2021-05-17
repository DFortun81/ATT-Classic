-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
_.Instances = { tier(1, {	-- Classic
	map(STRATHOLME, {
		["description"] = "Once the jewel of northern Lordaeron, the city of Stratholme is where Prince Arthas turned against his mentor, Uther Lightbringer, and slaughtered hundreds of his own subjects who were believed to have contracted the dreaded plague of undeath. Arthas' downward spiral and ultimate surrender to the Lich King soon followed. The broken city is now inhabited by the undead Scourge -- led by the powerful lich, Kel'Thuzad. A contingent of Scarlet Crusaders, led by Grand Crusader Dathrohan, also holds a portion of the ravaged city. The two sides are locked in constant, violent combat. Those adventurers brave (or foolish) enough to enter Stratholme will be forced to contend with both factions before long. It is said that the city is guarded by three massive watchtowers, as well as powerful necromancers, banshees and abominations. There have also been reports of a malefic Death Knight riding atop an unholy steed, dispensing indiscriminate wrath on all those who venture within the realm of the Scourge.",
		["lvl"] = 48,
		["groups"] = {
			n(QUESTS, {
				q(5263, {	-- Above and Beyond
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
					["sourceQuest"] = 5262,	-- The Truth Comes Crashing Down
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13251, 1 },	-- Head of Baron Rivendare
					},
					["lvl"] = 55,
				}),
				q(5125, {	-- Aurius' Reckoning
					["qg"] = 10917,	-- Aurius
					["sourceQuest"] = 5122,	-- The Medallion of Faith
					["cost"] = {
						{ "i", 12845, 1 },	-- Medallion of Faith
					},
					["groups"] = {
						i(17044),	-- Will of the Martyr
						i(17045),	-- Blood of the Martyr
					},
				}),
				q(5861, {	-- Find Myranda
					["qg"] = 1855,	-- Tirion Fordring
					["sourceQuest"] = 5848,	-- Of Love and Family (2/2)
					["coord"] = { 7.6, 43.6, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 14872, 1 },	-- Tirion's Gift
					},
					["lvl"] = 52,
				}),
				q(5243, {	-- Houses of the Holy
					["qg"] = 11036,	-- Leonid Barthalomew the Revered <The Argent Dawn>
					["description"] = "When mousing over the crates, look for 'Requires: Disarm Trap'. If you see this, it's a trap and shouldn't be touched.\n\nIf you are a dwarf, use find treasure and on the mini map it will show a dot for the holy water in the crate. It will only show crates with items in it on the mini map and not bad crates.",
					["coord"] = { 81.6, 57.8, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13180, 5 },	-- Stratholme Holy Water
					},
					["lvl"] = 55,
					["groups"] = {
						i(13216),	-- Crown of the Penitent
						i(13217),	-- Band of the Penitent
						i(6149),	-- Greater Mana Potion
						i(3928),	-- Superior Healing Potion
					},
				}),
				q(5944, {	-- In Dreams
					["qg"] = 1842,	-- Highlord Taelan Fordring <Highlord of the Scarlet Crusade>
					["sourceQuest"] = 5862,	-- Scarlet Subterfuge
					["coord"] = { 42, 14.8, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["lvl"] = 52,
					["groups"] = {
						i(15418),	-- Shimmering Platinum Warhammer
						i(15411),	-- Mark of Fordring
						i(15421),	-- Shroud of the Exile
						i(15413),	-- Ornate Adamantium Breastplate
						i(16058),	-- Fordring's Seal
					},
				}),
				q(5264, {	-- Lord Maxwell Tyrosus
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
					["sourceQuest"] = 5263,	-- Above and Beyond
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["lvl"] = 55,
				}),
				q(5781, {	-- Of Forgotten Memories
					["qg"] = 1855,	-- Tirion Fordring
					["sourceQuest"] = 5742,	-- Redemption
					["coord"] = { 7.4, 43.6, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 14613, 1 },	-- Taelan's Hammer
					},
					["lvl"] = 52,
					["groups"] = {
						{
							["itemID"] = 14613,	-- Taelan's Hammer
							["questID"] = 5781,	-- Of Forgotten Memories
							["coord"] = { 29.8, 85.6, EASTERN_PLAGUELANDS },
							["cr"] = 11886,	-- Mercutio Filthgorger
						},
					},
				}),
				q(5845, {	-- Of Lost Honor
					["qg"] = 1855,	-- Tirion Fordring
					["sourceQuest"] = 5781,	-- Of Forgotten Memories
					["coord"] = { 7.4, 43.6, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 14625, 1 },	-- Symbol of Lost Honor
					},
					["lvl"] = 52,
					["groups"] = {
						{
							["itemID"] = 14625,	-- Symbol of Lost Honor
							["questID"] = 5845,	-- Of Lost Honor
							["coord"] = { 71.3, 33.9, EASTERN_PLAGUELANDS },
						},
					},
				}),
				q(5846, {	-- Of Love and Family (1/2)
					["qg"] = 1855,	-- Tirion Fordring
					["sourceQuest"] = 5845,	-- Of Lost Honor
					["coord"] = { 7.4, 43.6, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["lvl"] = 52,
				}),
				q(5848, {	-- Of Love and Family (2/2)
					["qg"] = 11936,	-- Artist Renfray
					["sourceQuest"] = 5846,	-- Of Love and Family (1/2)
					["coord"] = { 65.6, 75.4, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 14679, 1 },	-- Of Love and Family
					},
					["lvl"] = 52,
				}),
				q(6163, {	-- Ramstein
					["qg"] = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
					["coord"] = { 26.6, 74.8, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["cr"] = 10439,	-- Ramstein the Gorger
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15880, 1 },	-- Head of Ramstein the Gorger
					},
					["lvl"] = 55,
					["groups"] = {
						i(18022),	-- Royal Seal of Alexis
						i(17001),	-- Elemental Circle
					},
				}),
				q(5742, {	-- Redemption
					["qg"] = 1855,	-- Tirion Fordring
					["sourceQuests"] = {
						5543,	-- Blood Tinged Skies
						5544,	-- Carrion Grubbage
						5542,	-- Demon Dogs
					},
					["coord"] = { 7.4, 43.6, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["lvl"] = 52,
				}),
				q(5862, {	-- Scarlet Subterfuge
					["qg"] = 11872,	-- Myranda the Hag
					["sourceQuest"] = 5861,	-- Find Myranda
					["coord"] = { 50.8, 77.8, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 14872, 1 },	-- Tirion's Gift
					},
					["lvl"] = 52,
				}),
				q(5213, {	-- The Active Agent
					["qg"] = 11035,	-- Betina Bigglezink <The Argent Dawn>
					["sourceQuest"] = 5212,	-- The Flesh Does Not Lie
					["coord"] = { 81.4, 59.6, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13176, 20 },	-- Scourge Data
					},
					["lvl"] = 55,
					["groups"] = {
						i(19812),	-- Rune of the Dawn
						i(13209),	-- Seal of the Dawn
					},
				}),
				q(5251, {	-- The Archivist
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["cr"] = 10811,	-- Archivist Galford
					["lvl"] = 55,
				}),
				q(5265, {	-- The Argent Hold
					["qg"] = 11034,	-- Lord Maxwell Tyrosus <The Argent Dawn>
					["sourceQuest"] = 5264,	-- Lord Maxwell Tyrosus
					["coord"] = { 81.6, 58.0, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["lvl"] = 55,
					["groups"] = {
						i(13246),	-- Argent Avenger
						i(13249),	-- Argent Crusader
						i(13243),	-- Argent Defender
					},
				}),
				q(5212, {	-- The Flesh Does Not Lie
					["qg"] = 11035,	-- Betina Bigglezink <The Argent Dawn>
					["coord"] = { 81.4, 59.6, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13174, 20 },	-- Plagued Flesh Sample
					},
					["lvl"] = 55,
				}),
				q(5214, {	-- The Great Fras Siabi
					["qg"] = 11033,	-- Smokey LaRue
					["coord"] = { 81.6, 58.0, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["cr"] = 11058,	-- Fras Siabi
					["cost"] = {
						{ "i", 13172, 1 },	-- Siabi's Premium Tobacco
					},
					["lvl"] = 55,
					["groups"] = {
						i(13171),	-- Smokey's Lighter
					},
				}),
				q(5122, {	-- The Medallion of Faith
					["qg"] = 10917,	-- Aurius
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12845, 1 },	-- Medallion of Faith
					},
				}),
				q(5281, {	-- The Restless Souls (1/2)
					["qg"] = 11038,	-- Caretaker Alen <The Argent Dawn>
					["coord"] = { 79.6, 63.8, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["lvl"] = 55,
				}),
				q(5282, {	-- The Restless Souls (2/2)
					["qg"] = 11140,	-- Egan
					["sourceQuest"] = 5281,	-- The Restless Souls (1/2)
					["coord"] = { 14.4, 33.6, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13289, 1 },	-- Egan's Blaster
					},
					["crs"] = {
						10385,	-- Ghostly Citizen
						10384,	-- Spectral Citizen
						11122,	-- Restless Soul
					},
					["lvl"] = 55,
					["groups"] = {
						i(13315),	-- Testament of Hope
					},
				}),
				q(5262, {	-- The Truth Comes Crashing Down
					["qg"] = 10813,	-- Balnazzar
					["sourceQuest"] = 5251,	-- The Archivist
					["cost"] = {
						{ "i", 13250, 1 },	-- Head of Balnazzar
					},
					["lvl"] = 55,
				}),
			}),
			n(ZONEDROPS, {
				un(PHASE_SIX, i(22526)),	-- Bone Fragments
				i(12843, {	-- Corruptor's Scourgestone
					["description"] = "Can drop from any Undead rare mob or boss in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(12841, {	-- Invader's Scourgestone
					["description"] = "Can drop from any Undead mobs in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(12840, {	-- Minion's Scourgestone
					["description"] = "Can drop from weak Undead mobs in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(12811, {	-- Righteous Orb
					["description"] = "Can drop from any Scarlet Crusade member in Stratholme in addition to the Scarlet Oracle and the Crimson Elite in the Plaguelands.",
				}),
				{
					["itemID"] = 13174,	-- Plagued Flesh Sample
					["questID"] = 5212,	-- The Flesh Does Not Lie
				},
				{
					["itemID"] = 12734,	-- Enchanted Scarlet Thread
					["questID"] = 5063,	-- Cap of the Scarlet Savant
					["description"] = "These can be found in 4 places in the Scarlet Enclave.\n\n1&2: Malor's Room on the Table\n3: In the next room before you split to Cannon Master or Archivist.\n4: In Archivist's room on a box in the back.",
					["repeatable"] = true,
				},
				{
					["itemID"] = 12735,	-- Frayed Abomination Stitching
					["crs"] = {
						10439,	-- Ramstein the Gorger
						10414,	-- Patchwork Horror
						10416,	-- Bile Spewer
						10417,	-- Venom Belcher
					},
				},
				i(16249, {  -- Formula: Enchant 2H Weapon - Major Intellect
					["crs"] = {
						10422,  -- Crimson Sorcerer
					},
				}),
				i(16248, {	-- Formula: Enchant Weapon - Unholy
					["crs"] = {
						10398,	-- Thuzadin Shadowcaster
					},
				}),
				i(14495, {	-- Pattern: Ghostweave Pants
					["crs"] = {
						10384, 	-- Spectral Citizen
					},
				}),
				i(15777, {	-- Pattern: Runic Leather Shoulders
					["crs"] = {
						10425, 	-- Crimson Battle Mage
					},
				}),
				i(15768, {	-- Pattern: Wicked Leather Belt
					["crs"] = {
						10406, 	-- Ghoul Ravener
					},
				}),
				i(18658,  {	-- Schematic: Ultra-Flash Shadow Reflector
					["crs"] = {
						10426,  -- Crimson Inquisitor
					},
				}),
				i(16052,  {	-- Schematic: Voice Amplification Modulator
					["crs"] = {
						10426,  -- Crimson Inquisitor
					},
				}),
				i(18743),	-- Gracious Cape
				i(17061),	-- Juno's Shadow
				i(18741),	-- Morlune's Bracer
				i(18744),	-- Plaguebat Fur Gloves
				i(18736),	-- Plaguehound Leggings
				i(18745),	-- Sacred Cloth Leggings
				i(18742),	-- Stratholme Militia Shoulderguard
				i(16681),	-- Beaststalker's Bindings
				i(16736),	-- Belt of Valor
				i(16671),	-- Bindings of Elements
				i(16697),	-- Devout Bracers
				i(16702),	-- Dreadmist Belt
				i(16723),	-- Lightforge Belt
				i(16685),	-- Magister's Belt
				i(16710),	-- Shadowcraft Bracers
				i(16714),	-- Wildheart Bracers
			}),
			n(-388, {	-- Main Gate
				["description"] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Live\" or \"Scarlet\" side, which the Scarlet Crusade has taken over.",
				["groups"] = {
					n(11082, {	-- Stratholme Courier
						["description"] = "Drops 3 random keys used to open postboxes found throughout Stratholme. All 3 of the postboxes must be opened to spawn the Postmaster.",
						["groups"] = {
							i(13303),	-- Crusaders' Square Postbox Key
							i(13305),	-- Elders' Square Postbox Key
							i(13304),	-- Festival Lane Postbox Key
							i(13307),	-- Fras Siabi's Postbox Key
							i(13306),	-- King's Square Postbox Key
							i(13302),	-- Market Row Postbox Key
						},
					}),
					n(11143, {	-- Postmaster Malown
						["description"] = "Use the keys dropped by the Courier to open 3 mailboxes in the instance to get Postmaster Malown to spawn.",
						["cost"] = {
							{ "i", 13303, 1 },	-- Crusaders' Square Postbox Key
							{ "i", 13305, 1 },	-- Elders' Square Postbox Key
							{ "i", 13304, 1 },	-- Festival Lane Postbox Key
							{ "i", 13307, 1 },	-- Fras Siabi's Postbox Key
							{ "i", 13306, 1 },	-- King's Square Postbox Key
							{ "i", 13302, 1 },	-- Market Row Postbox Key
						},
						["groups"] = {
							i(13393),	-- Malown's Slam
							i(13390),	-- The Postmaster's Band
							i(13388),	-- The Postmaster's Tunic
							i(13389),	-- The Postmaster's Trousers
							i(13391),	-- The Postmaster's Treads
							i(13392),	-- The Postmaster's Seal
						},
					}),
					n(11058, {	-- Fras Siabi
						["description"] = "In order to summon this boss, one of your party members must be on the quest.",
						["groups"] = {
							{
								["itemID"] = 13172,	-- Siabi's Premium Tobacco
								["questID"] = 5214,	-- The Great Fras Siabi
							},
						},
					}),
					n(10393, {	-- Skul
						["description"] = "This is a rare that is not always present.",
						["groups"] = {
							i(13396),	-- Skul's Ghastly Touch
							i(13394),	-- Skul's Cold Embrace
							i(13395),	-- Skul's Fingerbone Claws
						},
					}),
					n(10558, { 	-- Hearthsinger Forresten
						i(13379),	-- Piccolo of the Flaming Fire
						i(13378),	-- Songbird Blouse
						i(13384),	-- Rainbow Girdle
						i(13383),  	-- Woollies of the Prancing Minstrel
						i(16682),	-- Magister's Boots
					}),
					n(10516, { 	-- The Unforgiven
						i(13408),	-- Soul Breaker
						i(13404),	-- Mask of the Unforgiven
						i(13405),	-- Wailing Nightbane Pauldrons
						i(13409),	-- Tearfall Bracers
						i(16717),	-- Wildheart Gloves
					}),
					n(10808, { 	-- Timmy the Cruel
						i(13401),	-- The Cruel Hand of Timmy
						i(13400),	-- Vambraces of the Sadist
						i(16724),	-- Lightforge Gauntlets
						i(13403),	-- Grimgore Noose
						i(13402),	-- Timmy's Galoshes
					}),
					n(11032, {	-- Malor the Zealous
						{
							["itemID"] = 12845,	-- Medallion of Faith
							["questID"] = 5122,	-- The Medallion of Faith
							["description"] = "Located in Malor's Strongbox. Can be turned in to Aurius on the Dead side of Stratholme to have him aide you during the Baron Rivendare encounter.",
							["repeatable"] = true,
						},
					}),
					n(11120, {	-- Crimson Hammersmith
						["description"] = "Loot the Blacksmithing Plans on the ground to spawn this mob.",
						["groups"] = {
							i(18781),	-- Bottom Half of Advanced Armorsmithing: Volume II
							i(13351),	-- Crimson Hammersmith's Apron
							i(12827, {	-- Plans: Serenity
								["description"] = "You must be a Blacksmith in order to loot this from the Plans on the floor.",
							}),
						},
					}),
					n(10997, { 	-- Cannon Master Willey
						i(12839),	-- Plans: Heartseeker
						un(PHASE_FIVE, i(22406)),	-- Redemption
						un(PHASE_FIVE, i(22404)),	-- Willey's Back Scratcher
						i(13380),	-- Willey's Portable Howitzer
						un(PHASE_FIVE, i(22407)),	-- Helm of the New Moon
						un(PHASE_FIVE, i(22403)),	-- Diana's Pearl Necklace
						un(PHASE_FIVE, i(22405)),	-- Mantle of the Scarlet Crusade
						i(16708),	-- Shadowcraft Spaulders
						i(18721),	-- Barrage Girdle
						i(13381),	-- Master Cannoneer Boots
						i(13382),	-- Cannonball Runner
						i(13377),	-- Miniature Cannon Balls
					}),
					n(10811, { 	-- Archivist Galford
						{
							["itemID"] = 14679,	-- Of Love and Family
							["questID"] = 5848,	-- Of Love and Family
							["description"] = "Found the wall near Archivist Galford.",
						},
						un(PHASE_SIX, {
							["itemID"] = 22897,	-- Tome of Conjure Food VII
							["classes"] = { MAGE },
							["spellID"] = 28612,	-- Conjure Food VII
							["rank"] = 7,
						}),
						i(13385),	-- Tome of Knowledge
						i(13386),	-- Archivist Cape
						i(16692),	-- Devout Gloves
						i(13387),	-- Foresight Girdle
						i(18716),	-- Ash Covered Boots
					}),
					n(10813, { 	-- Balnazzar
						["crs"] = {
							10812,	-- Grand Crusader Dathrohan
						},
						["groups"] = {
							{
								["itemID"] = 13250,	-- Head of Balnazzar
								["questID"] = 5262,	-- The Truth Comes Crashing Down
							},
							i(14512),	-- Pattern: Truefaith Vestments
							i(13520),	-- Recipe: Flask of Distilled Wisdom
							i(13348),	-- Demonshear
							i(18717),	-- Hammer of the Grand Crusader
							i(13360),	-- Gift of the Elven Magi
							i(13353),	-- Book of the Dead
							i(13359),	-- Crown of Tyranny
							i(18718),	-- Grand Crusader's Helm
							i(12103),	-- Star of Mystaria
							i(18720),	-- Shroud of the Nathrezim
							i(13358),	-- Wyrmtongue Shoulders
							i(13369),	-- Fire Striders
							i(16725),	-- Lightforge Boots
						},
					}),
					un(PHASE_FIVE, n(16102, { 	-- Sothos
						["crs"] = {
							16101,	-- Jarien
						},
						["description"] = "This boss can be summoned using the Brazier of Beckoning or the Brazier of Invocation, which can summon any of the spirits.",
						["cost"] = {
							{ "i", 22051, 1 },	-- Brazier of Beckoning [Jarien & Sothos]
							{ "i", 22057, 1 },	-- Brazier of Invocation
						},
						["groups"] = bubbleDown({ ["u"] = PHASE_FIVE }, {
							i(21984),	-- Left Piece of Lord Valthalak's Amulet
							i(22046),	-- Right Piece of Lord Valthalak's Amulet
							i(22329),	-- Scepter of Interminable Focus
							i(22327),	-- Amulet of the Redeemed
							i(22301), 	-- Ironweave Robe
							i(22328),	-- Legplates of Vigilance
							i(22334),	-- Band of Mending
						}),
					})),
					un(PHASE_SIX, n(16387, { 	-- Atiesh <Hand of Sargeras>
						["description"] = "Summoned and defeated as part of the Atiesh quest chain to get the Greatstaff of the Guardian.",
						["groups"] = {
							un(PHASE_SIX, {
								["itemID"] = 22736,	-- Andonisus, Reaper of Souls
								["description"] = "He drops this midway through the encounter and one lucky DPS can wield this. However, it is a conjured item and will disappear after a few minutes.",
							}),
						},
					})),
				},
			}),
			n(-389, {	-- Service Entrance
				["description"] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Dead\" or \"Scourge\" side, which the Scourge has taken over.",
				["cost"] = {
					{ "i", 12382, 1 },	-- Key to the City
				},
				["groups"] = {
					n(10435, { 	-- Magistrate Barthilas
						["description"] = "IIf you enter from the Main Gate side, you can fight this boss first, otherwise he runs to the Slaughter House.",
						["groups"] = {
							i(12382),	-- Key to the City
							i(18725),	-- Peacemaker
							i(18727),	-- Crimson Felt Hat
							i(13376),	-- Royal Tribunal Cloak
							i(18726),	-- Magistrate's Cuffs
							i(18722),	-- Death Grips
							un(PHASE_FIVE, i(23198)),	-- Idol of Brutality
						},
					}),
					n(10809, {	-- Stonespine
						["description"] = "This is a rare that is not always present.",
						["groups"] = {
							i(13399),	-- Gargoyle Shredder Talons
							i(13397),	-- Stoneskin Gargoyle Cape
							i(13954),	-- Verdant Footpads
						},
					}),
					n(10437, { 	-- Nerub'enkan
						{
							["itemID"] = 13176,	-- Scourge Data
							["questID"] = 5213,	-- The Active Agent
							["description"] = "Located in the Ziggurat behind the boss.",
						},
						i(18738),	-- Carapace Spine Crossbow
						i(13529),	-- Husk of Nerub'enkan
						i(13533),	-- Acid-Etched Pauldrons
						i(13532),	-- Darkspinner Claws
						i(18740),	-- Thuzadin Sash
						i(18739),	-- Chitinous Plate Legguards
						i(13531),	-- Crypt Stalker Leggings
						i(16675),	-- Beaststalker's Boots
						i(13530),	-- Fangdrip Runners
						i(13508),	-- Eye of Arachnida
					}),
					n(11121, { 	-- Black Guard Swordsmith
						["description"] = "Loot the Blacksmithing Plans on the ground to spawn this mob.",
						["groups"] = {
							i(18783),	-- Bottom Half of Advanced Armorsmithing: Volume III
							i(13350),	-- Insignia of the Black Guard
							i(12830, {	-- Plans: Corruption
								["description"] = "You must be a Blacksmith in order to loot this from the Plans on the floor.",
							}),
						},
					}),
					n(10436, { 	-- Baroness Anastari
						i(13534),	-- Banshee Finger
						i(18729),	-- Screeching Bow
						i(18728),	-- Anastari Heirloom
						i(13538),	-- Windshrieker Pauldrons
						i(13535),	-- Coldtouch Phantom Wraps
						i(13537),	-- Chillhide Bracers
						i(13539),	-- Banshee's Touch
						i(18730),	-- Shadowy Laced Handwraps
						i(16704),	-- Dreadmist Sandals
						{
							["itemID"] = 13514,	-- Wail of the Banshee
							["description"] = "This can be used on raid bosses and in PVP... Probably not a bad idea to keep on you.",
						},
					}),
					n(10438, { 	-- Maleki the Pallid
						i(12833),	-- Plans: Hammer of the Titans
						i(18737),	-- Bone Slicing Hatchet
						i(13524),	-- Skull of Burning Shadows
						i(18734),	-- Pale Moon Cloak
						i(13528),	-- Twilight Void Bracers
						i(13525),	-- Darkbind Fingers
						i(13526),	-- Flamescarred Girdle
						i(16691),	-- Devout Sandals
						i(13527),	-- Lavawalker Greaves
						i(18735),	-- Maleki's Footwraps
						i(13509),	-- Clutch of Foresight
					}),
					n(10439, { 	-- Ramstein the Gorger
						{
							["itemID"] = 15880,	-- Head of Ramstein the Gorger
							["questID"] = 6163,	-- Ramstein
							["races"] = HORDE_ONLY,
						},
						i(13372),	-- Slavedriver's Cane
						i(13375),	-- Crest of Retribution
						i(18723),	-- Animated Chain Necklace
						i(13374),	-- Soulstealer Mantle
						i(16737),	-- Gauntlets of Valor
						i(13373),	-- Band of Flesh
						i(13515),	-- Ramstein's Lightning Bolts
					}),
					n(10440, {	-- Baron Rivendare
						{
							["itemID"] = 13251,	-- Head of Baron Rivendare
							["questID"] = 5263,	-- Above and Beyond
						},
						i(13335),	-- Deathcharger's Reins (MOUNT!)
						i(13505),	-- Runeblade of Baron Rivendare
						i(13368),	-- Bonescraper
						un(PHASE_FIVE, i(22408)),	-- Ritssyn's Wand of Bad Mojo
						i(13349),	-- Scepter of the Unholy
						i(13361),	-- Skullforge Reaver
						un(PHASE_FIVE, i(22411)),	-- Helm of the Executioner
						un(PHASE_FIVE, i(22412)),	-- Thuzadin Mantle
						i(13340),	-- Cape of the Black Baron
						i(13346),	-- Robes of the Exalted
						un(PHASE_FIVE, i(22409)),	-- Tunic of the Crescent Moon
						i(13344),	-- Dracorian Gauntlets
						un(PHASE_FIVE, i(22410)),	-- Gauntlets of Deftness
						i(16678),	-- Beaststalker's Pants
						i(16694),	-- Devout Skirt
						i(16699),	-- Dreadmist Leggings
						i(16668),	-- Kilt of Elements
						i(16732),	-- Legplates of Valor
						i(16728),	-- Lightforge Legplates
						i(16687),	-- Magister's Leggings
						i(16709),	-- Shadowcraft Pants
						i(16719),	-- Wildheart Kilt
						i(13345),	-- Seal of Rivendare
					}),
				},
			}),
		},
	}),
})};