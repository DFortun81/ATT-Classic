---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(FERALAS, {
			n(QUESTS, {
				q(2974, {	-- A Grim Discovery (1/2)
					["qg"] = 4544,	-- Krueg Skullsplitter
					["sourceQuest"] = 2973,	-- A New Cloak's Sheen
					["coord"] = { 76.0, 42.8, FERALAS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9460, 20 },	-- Grimtotem Horn
					},
					["lvl"] = 38,
				}),
				q(2976, {	-- A Grim Discovery (2/2)
					["qg"] = 4544,	-- Krueg Skullsplitter
					["sourceQuest"] = 2974, -- A Grim Discovery (1/2)
					["coord"] = { 76.0, 42.8, FERALAS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9462, 1 },	-- Crate of Grimtotem Horns
					},
					["lvl"] = 37,
					["g"] = {
						i(11858),	-- Battlehard Cape
						i(11859),	-- Jademoon Orb
					},
				}),
				q(4266, {	-- A Hero's Welcome
					["qg"] = 7880,	-- Ginro Hearthkindle
					["sourceQuest"] = 4265,	-- Freed from the Hive
					["coord"] = { 31.8, 45.2, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["g"] = {
						i(11856),	-- Ceremonial Elven Blade
						i(11857),	-- Sanctimonial Rod
					},
				}),
				q(2973, {	-- A New Cloak's Sheen
					["qg"] = 4544,	-- Krueg Skullsplitter
					["coord"] = { 76.0, 42.8, FERALAS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9369, 10 },	-- Iridescent Sprite Darter Wing
					},
					["lvl"] = 38,
				}),
				q(3121, {	-- A Strange Request
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["coord"] = { 74.4, 43.4, FERALAS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9629, 1 },	-- A Shrunken Head
					},
					["lvl"] = 40,
				}),
				q(2981, {	-- A Threat in Feralas
					["qg"] = 4485,	-- Belgrom Rockmaul
					["coord"] = { 75, 34.2, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(7725, {	-- Again With the Zapped Giants
					["qg"] = 14637,	-- Zorbin Fandazzle
					["sourceQuest"] = 7003,	-- Zapped Giants
					["coord"] = { 44.8, 43.4, FERALAS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 18904, 1 },	-- Zorbin's Ultra-Shrinker
						{ "i", 18956, 10 },	-- Miniaturization Residue
					},
					["lvl"] = 45,
				}),
				q(2870, {	-- Against Lord Shalzaru
					["qg"] = 7877,	-- Latronicus Moonspear
					["sourceQuest"] = 2869,	-- Against the Hatecrest (2/2)
					["coord"] = { 30.4, 46.2, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9248, 1 }, -- Mysterious Relic
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 9248,	-- Mysterious Relic
							["questID"] = 2870,	-- Against Lord Shalzaru
							["cr"] = 8136,	-- Lord Shalzaru
							["coord"] = { 28.4, 70.4, FERALAS },
						},
					},
				}),
				q(3130, {	-- Against the Hatecrest (1/2)
					["qg"] = 3936,	-- Shandris Feathermoon <General of the Sentinel Army>
					["sourceQuest"] = 2867,	-- Return to Feathermoon Stronghold
					["coord"] = { 30.3, 46.2, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2869, {	-- Against the Hatecrest (2/2)
					["qg"] = 7877,	-- Latronicus Moonspear
					["sourceQuest"] = 3130,	-- Against the Hatecrest (1/2)
					["coord"] = { 30.4, 46.2, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9247, 10 },	-- Hatecrest Naga Scale
					},
					["lvl"] = 40,
				}),
				q(2863, {	-- Alpha Strike
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["sourceQuest"] = 2862,	-- War on the Woodpaw
					["coord"] = { 74.8, 42.6, FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
				}),
				q(3841, {	-- An Orphan Looking For a Home
					["qg"] = 7956,	-- Kindal Moonweaver
					["sourceQuest"] = 2972,	-- Doling Justice (2/2)
					["coord"] = { 65.8, 45.6, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11102, 1 },	-- Unhatched Sprite Darter Egg
					},
					["lvl"] = 38,
				}),
				q(4127, {	-- Boat Wreckage
					["provider"] = { "o", 164909 },	-- Wrecked Row Boat
					["sourceQuest"] = 4125,	-- The Missing Courier (2)
					["coord"] = { 45.4, 65.0, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11462, 1 },	-- Discarded Knife
					},
					["lvl"] = 40,
				}),
				q(2979, {	-- Dark Ceremony
					["qg"] = 7777,	-- Rok Orhan
					["sourceQuest"] = 2978,	-- The Gordunni Scroll
					["coord"] = { 74.2, 44.6, FERALAS },
					["races"] = HORDE_ONLY,
					["cr"] = 5239,	-- Gordunni Mage-Lord
					["cost"] = {
						{ "i", 9371, 1 },	-- Gordunni Orb
					},
					["lvl"] = 38,
				}),
				q(3062, {	-- Dark Heart
					["qg"] = 7776,	-- Talo Thornhoof
					["coord"] = { 76, 43.8, FERALAS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9528, 1 },	-- Edana's Dark Heart
					},
					["lvl"] = 45,
					["g"] = {
						{
							["itemID"] = 9528,	-- Edana's Dark Heart
							["questID"] = 3062,	-- Dark Heart
							["cr"] = 8075,	-- Edana Hatetalon
							["coord"] = { 40.6, 8.6, FERALAS },
						},
						i(9665),	-- Wingcrest Gloves
						i(9666),	-- Stronghorn Girdle
						i(9530),	-- Horn of Hatetalon
					},
				}),
				q(2871, {	-- Delivering the Relic
					["qg"] = 7877,	-- Latronicus Moonspear
					["sourceQuest"] = 2870,	-- Against Lord Shalzaru
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
				q(2970, {	-- Doling Justice (1/2)
					["qg"] = 7957,	-- Jer'kai Moonweaver
					["sourceQuest"] = 2969,	-- Freedom for All Creatures
					["coord"] = { 65.8, 45.6, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(2972, {	-- Doling Justice (2/2)
					["qg"] = 7957,	-- Jer'kai Moonweaver
					["sourceQuest"] = 2970,	-- Doling Justice (1/2)
					["coord"] = { 65.8, 45.6, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9368, 1 },	-- Jer'kai's Signet Ring
					},
					["lvl"] = 38,
					["g"] = {
						i(10705),	-- Firwillow Wristbands
						i(10706),	-- Nightscale Girdle
					},
				}),
				q(3125, {	-- Faerie Dragon Muisek
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["sourceQuest"] = 3124,	-- Hippogryph Muisek
					["coord"] = { 74.4, 43.4, FERALAS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9596, 8 },	-- Faerie Dragon Muisek
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 9620,	-- Faerie Dragon Muisek Vessel
							["groups"] = {
								{
									["itemID"] = 9596,	-- Faerie Dragon Muisek
									["questID"] = 3125,	-- Faerie Dragon Muisek
								},
							},
						},
					},
				}),
				q(2766, {	-- Find OOX-22/FE!
					["provider"] = { "i", 8705 },	-- OOX-22/FE Distress Beacon
					["lvl"] = 40,
				}),
				q(4265, {	-- Freed from the Hive
					["provider"] = { "o", 164954 },	-- Zukk'ash Pod
					["sourceQuest"] = 4135,	-- The Writhing Deep
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
					["cost"] = {
						{ "i", 18958, 10 },	-- Water Elemental Core
					},
					["lvl"] = 45,
					["g"] = {
						i(19039),	-- Zorbin's Water Resistant Hat
					},
				}),
				q(2987, {	-- Gordunni Cobalt
					["qg"] = 8021,	-- Orwin Gizzmick
					["coord"] = { 75.6, 44.2, FERALAS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9466, 1 },	-- Orwin's Shovel
						{ "i", 9463, 12 },	-- Gordunni Cobalt
					},
					["lvl"] = 38,
					["g"] = {
						i(9658),	-- Boots of the Maharishi
						i(9660),	-- Stargazer Cloak
					},
				}),
				q(3124, {	-- Hippogryph Muisek
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["sourceQuest"] = 3123,	-- Testing the Vessel
					["coord"] = { 74.4, 43.4, FERALAS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9595, 10 },	-- Hippogryph Muisek
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 9619,	-- Hippogryph Muisek Vessel
							["crs"] = {
								5347,	-- Antilus the Soarer
								5300,	-- Frayfeather Hippogryph
								5306,	-- Frayfeather Patriarch
								5305,	-- Frayfeather Skystormer
								5304,	-- Frayfeather Stagwing
							},
							["groups"] = {
								{
									["itemID"] = 9595,	-- Hippogryph Muisek
									["questID"] = 3124,	-- Hippogryph Muisek
								},
							},
						},
					},
				}),
				q(7733, {	-- Improved Quality
					["qg"] = 7852,	-- Pratt McGrubben <Leatherworking Supplies>
					["sourceQuest"] = 2821,	-- The Mark of Quality
					["coord"] = { 30.6, 42.7, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 18947, 10 },	-- Rage Scar Yeti Hide
					},
					["lvl"] = 40,
					["g"] = {
						i(19041),	-- Pratt's Handcrafted Tunic
					},
				}),
				q(7734, {	-- Improved Quality
					["qg"] = 7854,	-- Jangdor Swiftstrider
					["sourceQuest"] = 2822,	-- The Mark of Quality
					["coord"] = { 74.4, 42.8, FERALAS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 18947, 10 },	-- Rage Scar Yeti Hide
					},
					["lvl"] = 40,
					["g"] = {
						i(19042),	-- Jangdor's Handcrafted Tunic
					},
				}),
				q(2939, {	-- In Search of Knowledge
					["qg"] = 7764,	-- Troyas Moonbreeze
					["coord"] = { 31.8, 45.5, FERALAS },
					["maps"] = { TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
				}),
				q(3787, {	-- Jonespyre's Request
					["qg"] = 5566,	-- Tannysa
					["coord"] = { 44.8, 77, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				q(3788, {	-- Jonespyre's Request
					["qg"] = 7736,	-- Innkeeper Shyria
					["coord"] = { 31, 43.4, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				q(3792, {	-- Morrowgrain to Feathermoon Stronghold
					["qg"] = 7879,	-- Quintis Jonespyre
					["sourceQuest"] = 3791,	-- The Mystery of Morrowgrain
					["coord"] = { 32.4, 43.8, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11040, 5 },	-- Morrowgrain
					},
					["lvl"] = 47,
					["g"] = {
						i(11022),	-- Packet of Tharlendris Seeds
					},
				}),
				q(3127, {	-- Mountain Giant Muisek
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["sourceQuest"] = 3126,	-- Treant Muisek
					["coord"] = { 74.4, 43.4, FERALAS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9597, 7 },	-- Mountain Giant Muisek
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 9621,	-- Mountain Giant Muisek Vessel
							["crs"] = {
								5358,	-- Cliff Giant
								5357,	-- Land Walker
							},
							["groups"] = {
								{
									["itemID"] = 9597,	-- Mountain Giant Muisek
									["questID"] = 3127,	-- Mountain Giant Muisek
								},
							},
						},
					},
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
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["crs"] = {
						5297,	-- Elder Rage Scar
						5299,	-- Ferocious Rage Scar
						5296,	-- Rage Scar Yeti
					},
					["lvl"] = 40,
				}),
				q(7735, {	-- Pristine Yeti Hide
					["provider"] = { "i", 18969 },	-- Pristine Yeti Hide
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["crs"] = {
						5297,	-- Elder Rage Scar
						5299,	-- Ferocious Rage Scar
						5296,	-- Rage Scar Yeti
					},
					["lvl"] = 40,
				}),
				q(4130, {	-- Psychometric Reading
					["qg"] = 7879,	-- Quintis Jonespyre
					["sourceQuest"] = 4129,	-- The Knife Revealed
					["coord"] = { 32.5, 43.8, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7726, {	-- Refuel for the Zapping
					["qg"] = 14637,	-- Zorbin Fandazzle
					["sourceQuest"] = 7721,	-- Fuel for the Zapping
					["coord"] = { 44.8, 43.4, FERALAS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 18958, 6 },	-- Water Elemental Core
					},
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
					["provider"] = { "o", 142179 },	-- Solarsal Gazebo
					["sourceQuest"] = 2866,	-- The Ruins of Solarsal
					["coord"] = { 26.3, 52.3, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(3122, {	-- Return to Witch Doctor Uzer'i
					["qg"] = 3216,	-- Neeru Fireblade
					["sourceQuest"] = 3121,	-- A Strange Request
					["coord"] = { 49.6, 50.6, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9628, 1 },	-- Neeru's Herb Pouch
					},
					["lvl"] = 40,
				}),
				q(4267, {	-- Rise of the Silithid
					["qg"] = 3936,	-- Shandris Feathermoon <General of the Sentinel Army>
					["sourceQuest"] = 4266,	-- A Hero's Welcome
					["coord"] = { 30.3, 46.2, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11466, 1 },	-- Raschal's Report
					},
					["lvl"] = 40,
				}),
				q(7731, {	-- Stinglasher
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["sourceQuest"] = 2903,	-- The Battle Plans
					["coord"] = { 74.8, 42.6, FERALAS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 18962, 1 },	-- Stinglasher's Glands
					},
					["lvl"] = 39,
					["groups"] = {
						{
							["itemID"] = 18962,	--Stinglasher's Glands
							["questID"] = 7731,	--Stinglasher
							["cr"] = 14661,	-- Stinglasher
							["coord"] = { 75.4, 61.0, FERALAS },
						},
					},
				}),
				q(3123, {	-- Testing the Vessel
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["sourceQuest"] = 3122,	-- Return to Witch Doctor Uzer'i
					["coord"] = { 74.4, 43.4, FERALAS },
					["maps"] = { THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9594, 10 },	-- Wildkin Muisek
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 9618,	-- Wildkin Muisek Vessel
							["cr"] = 2927,	-- Vicious Owlbeast
							["groups"] = {
								{
									["itemID"] = 9594,	--Wildkin Muisek
									["questID"] = 3123,	-- Testing the Vessel
								},
							},
						},
					},
				}),
				q(4281, {	-- Thalanaar Delivery
					["provider"] = { "i", 11463 },	-- Undelivered Parcel
					["sourceQuest"] = 4135,	-- The Writhing Deep
					["coord"] = { 73.3, 56.3, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2903, {	-- The Battle Plans
					["provider"] = { "o", 142195 },	-- Woodpaw Battle Map
					["sourceQuest"] = 2902,	-- Woodpaw Investigation
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9266, 1 },	-- Woodpaw Battle Plans
					},
					["lvl"] = 39,
					["g"] = {
						i(9661),	-- Earthclasp Barrier
						i(9662),	-- Rushridge Boots
					},
				}),
				q(2844, {	-- The Giant Guardian
					["qg"] = 7765,	-- Rockbiter
					["coord"] = { 42.4, 22.0, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 44,
				}),
				q(3002, {	-- The Gordunni Orb
					["qg"] = 7777,	-- Rok Orhan
					["sourceQuest"] = 2979,	-- Dark Ceremony
					["coord"] = { 74.2, 44.6, FERALAS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9371, 1 },	-- Gordunni Orb
					},
					["lvl"] = 38,
				}),
				q(2978, {	-- The Gordunni Scroll
					["provider"] = { "i", 9370 },	-- Gordunni Scroll
					["coords"] = {
						{ 75.2, 28.7, FERALAS },
						{ 80.8, 35.0, FERALAS },
					},
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
					["sourceQuest"] = 4127,	-- Boat Wreckage
					["coord"] = { 31.9, 45.1, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11462, 1 },	-- Discarded Knife
					},
					["lvl"] = 40,
				}),
				q(2821, {	-- The Mark of Quality
					["qg"] = 7852,	-- Pratt McGrubben <Leatherworking Supplies>
					["coord"] = { 30.6, 42.7, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						 { "i", 8973, 10 },	-- Thick Yeti Hide
					},
					["lvl"] = 40,
					["g"] = {
						i(9630),	-- Pratt's Handcrafted Boots
						i(9631),	-- Pratt's Handcrafted Gloves
					},
				}),
				q(2822, {	-- The Mark of Quality
					["qg"] = 7854,	-- Jangdor Swiftstrider
					["coord"] = { 74.4, 42.8, FERALAS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						 { "i", 8973, 10 },	-- Thick Yeti Hide
					},
					["lvl"] = 40,
					["g"] = {
						i(9633),	-- Jangdor's Handcrafted Boots
						i(9632),	-- Jangdor's Handcrafted Gloves
					},
				}),
				q(4124, {	-- The Missing Courier (1/2)
					["qg"] = 7877,	-- Latronicus Moonspear
					["coord"] = { 30.4, 46.2, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(4125, {	-- The Missing Courier (2/2)
					["qg"] = 7880,	-- Ginro Hearthkindle
					["sourceQuest"] = 4124,	-- The Missing Courier (1/2)
					["coord"] = { 31.9, 45.1, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2942, {	-- The Morrow Stone
					["provider"] = { "o", 144063 },	-- Equinex Monolith
					["sourceQuest"] = 2879,	-- The Stave of Equinex
					["coord"] = { 38.9, 13.2, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9307, 1 },	-- A Sparkling Stone
						{ "i", 9306, 1 },	-- Stave of Equinex
					},
					["lvl"] = 42,
					["g"] = {
						i(9654),	-- Cairnstone Sliver
						i(9655),	-- Seedtime Hoop
					},
				}),
				q(3791, {	-- The Mystery of Morrowgrain
					["qg"] = 7879,	-- Quintis Jonespyre
					["sourceQuests"] = {
						3787,	-- Jonespyre's Request
						3788,	-- Jonespyre's Request
					},
					["coord"] = { 32.4, 43.8, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11040, 10 },	-- Morrowgrain
					},
					["lvl"] = 47,
					["g"] = {
						i(11888),	-- Quintis' Research Gloves
						i(11889),	-- Bark Iron Pauldrons
					},
				}),
				q(2975, {	-- The Ogres of Feralas (1/2)
					["qg"] = 7777,	-- Rok Orhan
					["sourceQuest"] = 2981,	-- A Threat in Feralas
					["coord"] = { 74.2, 44.6, FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(2980, {	-- The Ogres of Feralas (2/2)
					["qg"] = 7777,	-- Rok Orhan
					["sourceQuest"] = 2975,	-- The Ogres of Feralas (1/2)
					["coord"] = { 74.2, 44.6, FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(2866, {	-- The Ruins of Solarsal
					["qg"] = 3936,	-- Shandris Feathermoon <General of the Sentinel Army>
					["coord"] = { 30.2, 46.0, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2879, {	-- The Stave of Equinex
					["qg"] = 7764,	-- Troyas Moonbreeze
					["sourceQuest"] = 2943,	-- Return to Troyas
					["coord"] = { 31.8, 45.4, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9306, 1 },	-- Stave of Equinex
					},
					["lvl"] = 42,
					["g"] = {
						{
							["provider"] = { "o", 142185 },	-- Flame of Byltan
							["itemID"] = 9258,	-- Byltan Essence
							["questID"] = 2879,	-- The Stave of Equinex
							["coord"] = { 38.5, 15.8, FERALAS },
						},
						{
							["provider"] = { "o", 142187 },	-- Flame of Imbel
							["itemID"] = 9256,	-- Imbel Essence
							["questID"] = 2879,	-- The Stave of Equinex
							["coord"] = { 39.9, 9.5, FERALAS },
						},
						{
							["provider"] = { "o", 142186 },	-- Flame of Lahassa
							["itemID"] = 9255,	-- Lahassa Essence
							["questID"] = 2879,	-- The Stave of Equinex
							["coord"] = { 37.8, 12.1, FERALAS },
						},
						{
							["provider"] = { "o", 142188 },	-- Flame of Samha
							["itemID"] = 9257,	-- Samha Essence
							["questID"] = 2879,	-- The Stave of Equinex
							["coord"] = { 40.6, 12.6, FERALAS },
						},
						{
							["itemID"] = 9263,	-- Troyas' Stave
							["cost"] = {
								{ "i", 9258, 1 },	-- Byltan Essence
								{ "i", 9256, 1 },	-- Imbel Essence
								{ "i", 9255, 1 },	-- Lahassa Essence
								{ "i", 9257, 1 },	-- Samha Essence
							},
							["groups"] = {
								{
									["itemID"] = 9306,	-- Stave of Equinex
									["questID"] = 2879,	-- The Stave of Equinex
								},
							},
						},
						i(9307),	-- A Sparkling Stone
					},
				}),
				q(4120, {	-- The Strength of Corruption
					["qg"] = 7776,	-- Talo Thornhoof
					["coord"] = { 76, 43.8, FERALAS },
					["maps"] = { FELWOOD },
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
				}),
				q(4041, {	-- The Videre Elixir
					["qg"] = 7775,	-- Gregan Brewspewer
					["sourceQuest"] = 3909,	-- The Videre Elixir
					["coord"] = { 45.1, 25.6, FERALAS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11242, 1 },	-- Evoroot
					},
					["lvl"] = 47,
					["g"] = {
						i(11243),	-- Videre Elixir
					},
				}),
				q(4131, {	-- The Woodpaw Gnolls
					["qg"] = 7880,	-- Ginro Hearthkindle
					["sourceQuest"] = 4129,	-- Psychometric Reading
					["coord"] = { 31.9, 45.1, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(4135, {	-- The Writhing Deep
					["provider"] = { "o", 164953 },	-- Large Leather Backpacks
					["sourceQuest"] = 4131,	-- The Woodpaw Gnolls
					["coord"] = { 73.3, 56.3, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11463, 1 },	-- Undelivered Parcel
					},
					["lvl"] = 40,
				}),
				q(3567, {	-- To the Top
					["qg"] = 7773,	-- Marli Wishrunner
					["coord"] = { 45.8, 16.4, FERALAS },
					["repeatable"] = true,
					["lvl"] = 25,
				}),
				q(3126, {	-- Treant Muisek
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["sourceQuest"] = 3125,	-- Faerie Dragon Muisek
					["coord"] = { 74.4, 43.4, FERALAS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9593, 3 },	-- Treant Muisek
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 9606,	-- Treant Muisek Vessel
							["cr"] = 7584,	-- Wandering Forest Walker
							["groups"] = {
								{
									["itemID"] = 9593,	-- Treant Muisek
									["questID"] = 3126,	-- Treant Muisek
								},
							},
						},
					},
				}),
				q(3063, {	-- Vengeance on the Northspring
					["qg"] = 7776,	-- Talo Thornhoof
					["coord"] = { 76, 43.8, FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(2845, {	-- Wandering Shay
					["qg"] = 7774,	-- Shay Leafrunner
					["sourceQuest"] = 2844,	-- The Giant Guardian
					["coord"] = { 38.2, 10.3, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9189, 1 },	-- Shay's Bell
					},
					["lvl"] = 44,
					["g"] = {
						i(9656),	-- Granite Grips
						i(9657),	-- Vinehedge Cinch
					},
				}),
				q(2862, {	-- War on the Woodpaw
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["coord"] = { 74.8, 42.6, FERALAS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9237, 10 },	-- Woodpaw Gnoll Mane
					},
					["lvl"] = 39,
				}),
				q(3129, {	-- Weapons of Spirit
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["sourceQuests"] = {
						3127,	-- Mountain Giant Muisek
						3128,	-- Natural Materials
					},
					["coord"] = { 74.4, 43.4, FERALAS },
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
					["sourceQuest"] = 2863,	-- Alpha Strike
					["coord"] = { 74.8, 42.6, FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
				}),
				q(7003, {	-- Zapped Giants
					["qg"] = 14637,	-- Zorbin Fandazzle
					["coord"] = { 44.8, 43.4, FERALAS },
					["cost"] = {
						{ "i", 18956, 10 },	-- Miniaturization Residue
					},
					["lvl"] = 45,
					["g"] = {
						{
							["itemID"] = 18904,	-- Zorbin's Ultra-Shrinker
							["crs"] = {
								5358,	-- Cliff Giant
								5360,	-- Deep Strider
								5357,	-- Land Walker
								5359,	-- Shore Strider
								5361,	-- Wave Strider
							},
							["groups"] = {
								{
									["itemID"] = 18956,	-- Miniaturization Residue
									["questID"] = 7003,	-- Zapped Giants
								},
							},
						},
						i(19040),	-- Zorbin's Mega-Slicer
					},
				}),
				q(7730, {	-- Zukk'ash Infestation
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["sourceQuest"] = 2903,	-- The Battle Plans
					["coord"] = { 74.8, 42.6, FERALAS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 18961, 20 },	-- Zukk'ash Carapace
					},
					["lvl"] = 39,
				}),
				q(7732, {	-- Zukk'ash Report
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["sourceQuests"] = {
						7731,	-- Stinglasher
						7730,	-- Zukk'ash Infestation
					},
					["coord"] = { 74.8, 42.6, FERALAS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 19020, 1 },	-- Camp Mojache Zukk'ash Report
					},
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