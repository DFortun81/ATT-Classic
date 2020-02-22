---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(FERALAS, {	-- Feralas
			n(-17, {	-- Quests
				q(2974, {	-- A Grim Discovery
					["qg"] = 4544,	-- Krueg Skullsplitter
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(2976, {	-- A Grim Discovery
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
					["g"] = {
						i(11858),	-- Battlehard Cape
						i(11859),	-- Jademoon Orb
					},
				}),
				q(4266, {	-- A Hero's Welcome
					["qg"] = 7880, -- Ginro Hearthkindle
					["sourceQuest"] = 4265, -- Freed from the Hive
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["g"] = {
						i(11856),	-- Ceremonial Elven Blade
						i(11857),	-- Sanctimonial Rod
					},
				}),
				q(2973, {	-- A New Cloak's Sheen
					["qg"] = 4544,	-- Krueg Skullsplitter
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(3842, {	-- A Short Incubation
					["qg"] = 9238,	-- Quentin
					["sourceQuest"] = 3841,	-- An Orphan Looking For a Home
					["coord"] = { 78.4, 74.7, THOUSAND_NEEDLES },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3825, 2 },	-- Elixir of Fortitude
					},
					["lvl"] = 38,
				}),
				q(3121, {	-- A Strange Request
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7725, {	-- Again With the Zapped Giants
					["qg"] = 14637,	-- Zorbin Fandazzle
					["coord"] = { 44.8, 43.4, FERALAS },
					["description"] = "You can delete the Zorbin's Ultra-Shrinker after completing the quest or let the timer run out.",
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(2870, {	-- Against Lord Shalzaru
					["qg"] = 7877,	-- Latronicus Moonspear
					["sourceQuest"] = 2869, -- Against the Hatecrest (2)
					["coord"] = { 30.4, 46.2, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = { 
						{ "i", 9248, 1 } -- Mysterious Relic
					},
					["lvl"] = 40,
				}),
				q(3130, {	-- Against the Hatecrest (1)
					["qg"] = 3936,	-- Shandris Feathermoon <General of the Sentinel Army>
					["sourceQuest"] = 2867, -- Return to Feathermoon Stronghold
					["coord"] = { 30.3, 46.2, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2869, {	-- Against the Hatecrest (2)
					["qg"] = 7877, -- Latronicus Moonspear
					["sourceQuest"] = 3130, -- Against the Hatecrest (1)
					["coord"] = { 30.4, 46.2, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = { 
						{ "i", 9247, 10 } -- Hatecrest Naga Scale
					},
					["lvl"] = 40,
				}),
				q(2863, {	-- Alpha Strike
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
				}),
				q(3841, {	-- An Orphan Looking For a Home
					["qg"] = 7956,	-- Kindal Moonweaver
					["sourceQuest"] = 2972,	-- Doling Justice
					["coord"] = { 65.8, 45.6, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11102, 1 },	-- Unhatched Sprite Darter Egg
					},
					["lvl"] = 38,
				}),
				q(4127, {	-- Boat Wreckage
					["provider"] = { "o", 164909 }, -- Wrecked Row Boat
					["sourceQuest"] = 4125, -- The Missing Courier (2)
					["coord"] = { 45.4, 65.0, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2979, {	-- Dark Ceremony
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(3062, {	-- Dark Heart
					["qg"] = 7776,	-- Talo Thornhoof
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
					["g"] = {
						i(9665),	-- Wingcrest Gloves
						i(9666),	-- Stronghorn Girdle
						i(9530),	-- Horn of Hatetalon
					},
				}),
				q(2871, {	-- Delivering the Relic
					["qg"] = 7877,	-- Latronicus Moonspear
					["sourceQuest"] = 2870, -- Against Lord Shalzaru
					["coord"] = { 30.4, 46.2, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = { 
						{ "i", 9248, 1 } -- Mysterious Relic
					},
					["lvl"] = 40,
					["g"] = {
						i(9663),	-- Dawnrider's Chestpiece
						i(9664),	-- Sentinel's Guard
					},
				}),
				q(2972, {	-- Doling Justice
					["qg"] = 7957,	-- Jer'kai Moonweaver
					["sourceQuest"] = 2969,	-- Freedom for All Creatures
					["coord"] = { 65.8, 45.6, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
					["g"] = {
						i(10705),	-- Firwillow Wristbands
						i(10706),	-- Nightscale Girdle
					},
				}),
				q(2970, {	-- Doling Justice
					["qg"] = 7957,	-- Jer'kai Moonweaver
					["sourceQuest"] = 2970,	-- Doling Justice
					["coord"] = { 65.8, 45.6, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9368, 1 },	-- Jer'kai's Signet Ring
					},
					["lvl"] = 38,
				}),
				q(3125, {	-- Faerie Dragon Muisek
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(2766, {	-- Find OOX-22/FE!
					["provider"] = { "i", 8705 }, -- OOX-22/FE Distress Beacon
					["lvl"] = 40,
				}),
				q(4265, {	-- Freed from the Hive
					["provider"] = { "o", 1645954 }, -- Zukk'ash Pod
					["sourceQuest"] = 4135, -- The Writhing Deep
					["coord"] = { 72.1, 63.7, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2969, {	-- Freedom for All Creatures
					["qg"] = 7956,	-- Kindal Moonweaver
					["coord"] = { 65.8, 45.6, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12301, 1 },	-- Bamboo Cage Key
					},
					["lvl"] = 38,
				}),
				q(7721, {	-- Fuel for the Zapping
					["qg"] = 14637,	-- Zorbin Fandazzle
					["coord"] = { 44.8, 43.4, FERALAS },
					["lvl"] = 45,
					["g"] = {
						i(19039),	-- Zorbin's Water Resistant Hat
					},
				}),
				q(2987, {	-- Gordunni Cobalt
					["qg"] = 8021,	-- Orwin Gizzmick
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["g"] = {
						i(9658),	-- Boots of the Maharishi
						i(9660),	-- Stargazer Cloak
					},
				}),
				q(3124, {	-- Hippogryph Muisek
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7733, {	-- Improved Quality
					["sourceQuest"] = 2821, -- The Mark of Quality
					["coord"] = { 30.6, 42.7, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["g"] = {
						i(19041),	-- Pratt's Handcrafted Tunic
					},
				}),
				q(7734, {	-- Improved Quality
					["qg"] = 7854,	-- Jangdor Swiftstrider
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["g"] = {
						i(19042),	-- Jangdor's Handcrafted Tunic
					},
				}),
				q(2939, {	-- In Search of Knowledge
					["qg"] = 7764,	-- Troyas Moonbreeze
					["coord"] = { 31.8, 45.5, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
				}),
				q(3788, {	-- Jonespyre's Request
					["qg"] = 7736, -- Innkeeper Shyria
					["altQuests"] = {
						3787, -- Jonespyre's Request
					},
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				q(3127, {	-- Mountain Giant Muisek
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["coord"] = { 74.4, 43.4, FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(3128, {	-- Natural Materials
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["coord"] = { 74.4, 43.4, FERALAS },
					["maps"] = { THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9589, 6 },	-- Encrusted Minerals
						{ "i", 9592, 40 },	-- Metallic Fragments
						{ "i", 9591, 20 },	-- Resilient Sinew
						{ "i", 9590, 2 },	-- Splintered Log
					},
					["lvl"] = 40,
				}),
				q(7738, {	-- Perfect Yeti Hide
					["provider"] = { "i", 18972 },	-- Perfect Yeti Hide
					["description"] = "This quests starts from the Perfect Yeti Hide which drops from the yetis in Rage Scar Hold.",
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 40,
				}),
				q(7735, {	-- Pristine Yeti Hide
					["provider"] = { "i", 18969 },	-- Pristine Yeti Hide
					["description"] = "This quests starts from the Pristine Yeti Hide which drops from the yetis in Rage Scar Hold.",
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 40,
				}),
				q(4130, {	-- Psychometric Reading
					["qg"] = 7879,	-- Quintis Jonespyre
					["sourceQuest"] = 4129, -- The Knife Revealed
					["coord"] = { 32.5, 43.8, FERALAS },
					["description"] = "Quintis Jonespyre is located at the top of the tower.",
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7726, {	-- Refuel for the Zapping
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(2767, {	-- Rescue OOX-22/FE!
					["qg"] = 7807,	-- Homing Robot OOX-22\/FE
					["sourceQuest"] = 2766,	-- Find OOX-22/FE!
					["coord"] = { 53.4, 55.6, FERALAS },
					["lvl"] = 40,
					["g"] = {
						i(9647),	-- Failed Flying Experiment
						i(9648),	-- Chainlink Towel
					},
				}),
				q(2867, {	-- Return to Feathermoon Stronghold
					["provider"] = { "o", 142179 }, -- Solarsal Gazebo
					["sourceQuest"] = 2866, -- The Ruins of Solarsal
					["coord"] = { 26.3, 52.3, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(3122, {	-- Return to Witch Doctor Uzer'i
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(4267, {	-- Rise of the Silithid
					["qg"] = 3936, -- Shandris Feathermoon <General of the Sentinel Army>
					["sourceQuest"] = 4266, -- A Hero's Welcome
					["coord"] = { 30.3, 46.2, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7731, {	-- Stinglasher
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
				}),
				q(3123, {	-- Testing the Vessel
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(4281, {	-- Thalanaar Delivery
					["provider"] = { "i", 11463 }, -- Undelivered Parcel
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2903, {	-- The Battle Plans
					["provider"] = { "o", 142195 },	-- Woodpaw Battle Map
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
					["g"] = {
						i(9661),	-- Earthclasp Barrier
						i(9662),	-- Rushridge Boots
					},
				}),
				q(2844, {	-- The Giant Guardian
					["qg"] = 7765, -- Rockbiter
					["coord"] = { 42.4, 22.0, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 44,
				}),
				q(3002, {	-- The Gordunni Orb
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(2978, {	-- The Gordunni Scroll
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(2982, {	-- The High Wilderness
					["qg"] = 7900,	-- Angelas Moonbreeze
					["coord"] = { 31.8, 45.6, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 39,
				}),
				q(4129, {	-- The Knife Revealed
					["qg"] = 7880,	-- Ginro Hearthkindle
					["sourceQuest"] = 4127, -- Boat Wreckage
					["coord"] = { 31.9, 45.1, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2822, {	-- The Mark of Quality
					["qg"] = 7854,	-- Jangdor Swiftstrider
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["g"] = {
						i(9633),	-- Jangdor's Handcrafted Boots
						i(9632),	-- Jangdor's Handcrafted Gloves
					},
				}),
				q(2821, {	-- The Mark of Quality
					["qg"] = 7852,	-- Pratt McGrubben
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["g"] = {
						i(9630),	-- Pratt's Handcrafted Boots
						i(9631),	-- Pratt's Handcrafted Gloves
					},
				}),
				q(4124, {	-- The Missing Courier (1)
					["qg"] = 7877,	-- Latronicus Moonspear
					["coord"] = { 30.4, 46.2, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(4125, {	-- The Missing Courier (2)
					["qg"] = 7880, -- Ginro Hearthkindle
					["sourceQuest"] = 4124, -- The Missing Courier (1)
					["coord"] = { 31.9, 45.1, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2942, {	-- The Morrow Stone
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
					["g"] = {
						i(9654),	-- Cairnstone Sliver
						i(9655),	-- Seedtime Hoop
					},
				}),
				q(3843, {	-- The Newest Member of the Family
					["qg"] = 9238,	-- Quentin
					["sourceQuest"] = 3842,	-- A Short Incubation
					["coord"] = { 78.4, 74.7, THOUSAND_NEEDLES },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11471, 1 },	-- Fragile Sprite Darter Egg
					},
					["lvl"] = 38,
				}),
				q(2975, {	-- The Ogres of Feralas
					["qg"] = 7777,	-- Rok Orhan
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(2980, {	-- The Ogres of Feralas
					["qg"] = 7777,	-- Rok Orhan
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(2866, {	-- The Ruins of Solarsal
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2879, {	-- The Stave of Equinex
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
					["g"] = {
						i(9307),	-- A Sparkling Stone
					},
				}),
				q(4120, {	-- The Strength of Corruption
					["lvl"] = 47,
					["races"] = HORDE_ONLY,
					["qg"] = 7776,	-- Talo Thornhoof
				}),
				q(4041, {	-- The Videre Elixir
					["qg"] = 7775,	-- Gregan Brewspewer
					["sourceQuest"] = 3909,	-- The Videre Elixir
					["coord"] = { 45.1, 25.6, FERALAS },
					["repeatable"] = true,
					["lvl"] = 47,
					["g"] = {
						i(11243),	-- Videre Elixir
					},
				}),
				q(4131, {	-- The Woodpaw Gnolls
					["qg"] = 7880, -- Ginro Hearthkindle
					["sourceQuest"] = 4129, -- Psychometric Reading
					["coord"] = { 31.9, 45.1, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(4135, {	-- The Writhing Deep
					["sourceQuest"] = 4131, -- The Woodpaw Gnolls
					["provider"] = { "o", 164953 }, -- Large Leather Backpacks
					["coord"] = { 73.3, 56.3, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(3567, {	-- To the Top
					["qg"] = 7773,	-- Marli Wishrunner
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 25,
				}),
				q(3126, {	-- Treant Muisek
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(3063, {	-- Vengeance on the Northspring
					["qg"] = 7776,	-- Talo Thornhoof
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(2845, {	-- Wandering Shay
					["sourceQuest"] = 2844, -- The Giant Guardian
					["coord"] = { 38.2, 10.3, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 44,
					["g"] = {
						i(9656),	-- Granite Grips
						i(9657),	-- Vinehedge Cinch
					},
				}),
				q(2862, {	-- War on the Woodpaw
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
				}),
				q(3129, {	-- Weapons of Spirit
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["g"] = {
						i(9684),	-- Force of the Hippogryph
						i(9686),	-- Spirit of the Faerie Dragon
						i(9683),	-- Strength of the Treant
						i(10652),	-- Will of the Mountain Giant
					},
				}),
				q(2902, {	-- Woodpaw Investigation
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
				}),
				q(7003, {	-- Zapped Giants
					["qg"] = 14637,	-- Zorbin Fandazzle
					["coord"] = { 44.8, 43.4, FERALAS },
					["description"] = "You can delete the Zorbin's Ultra-Shrinker after completing the quest or let the timer run out.",
					["lvl"] = 45,
					["g"] = {
						i(19040),	-- Zorbin's Mega-Slicer
					},
				}),
				q(7730, {	-- Zukk'ash Infestation
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
				}),
				q(7732, {	-- Zukk'ash Report
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
					["g"] = {
						i(19038),	-- Ring of Subtlety
						i(19037),	-- Emerald Peak Spaulders
					},
				}),
			}),
		}),
	}),
};