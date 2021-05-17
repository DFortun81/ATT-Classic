-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
_.Instances = { tier(1, {	-- Classic
	map(TEMPLE_OF_ATALHAKKAR, {
		["description"] = "Over a thousand years ago, the powerful Gurubashi Empire was torn apart by a massive civil war. An influential group of troll priests, known as the Atal'ai, attempted to bring back an ancient blood god named Hakkar the Soulflayer. Though the priests were defeated and ultimately exiled, the great troll empire buckled in upon itself. The exiled priests fled far to the north, into the Swamp of Sorrows. There they erected a great temple to Hakkar - where they could prepare for his arrival into the physical world. The great dragon Aspect, Ysera, learned of the Atal'ai's plans and smashed the temple beneath the marshes. To this day, the temple's drowned ruins are guarded by the green dragons who prevent anyone from getting in or out. However, it is believed that some of the fanatical Atal'ai may have survived Ysera's wrath - and recommitted themselves to the dark service of Hakkar.",
		["lvl"] = 45,
		["groups"] = {
			n(QUESTS, {
				q(9053, {	-- A Better Ingredient
					["qg"] = 9619,	-- Torwa Pathfinder
					["sourceQuest"] = 9051,  -- Toxic Test
					["coord"] = { 71.6, 76.0, UNGORO_CRATER },
					["maps"] = { UNGORO_CRATER },
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 22444, 1 },	-- Putrid Vine
					},
					["lvl"] = 50,
					["groups"] = {
						i(22272),	-- Forest's Embrace
						i(22274),	-- Grizzled Pelt
						i(22458),	-- Moonshadow Stave
					},
				}),
				q(8257, {	-- Blood of Morphaz
					["qg"] = 8405,	-- Ogtinc
					["sourceQuest"] = 8256,	-- The Ichor of Undeath
					["coord"] = { 42.2, 42.6, AZSHARA },
					["maps"] = { AZSHARA },
					["classes"] = { PRIEST },
					["cost"] = {
						{ "i", 20025, 1 },	-- Blood of Morphaz
					},
					["lvl"] = 50,
					["groups"] = {
						i(19990),	-- Blessed Prayer Beads
						i(20006),	-- Circle of Hope
						i(20082),	-- Woestave
					},
				}),
				q(8413, {	-- Da Voodoo
					["qg"] = 6176,	-- Bath'rah the Windwatcher
					["sourceQuest"] = 8412,	-- Spirit Totem
					["coords"] = { 80.4, 66.8, ALTERAC_MOUNTAINS },
					["maps"] = { ALTERAC_MOUNTAINS },
					["classes"] = { SHAMAN },
					["cost"] = {
						{ "i", 20606, 2 },	-- Amber Voodoo Feather
						{ "i", 20607, 2 },	-- Blue Voodoo Feather
						{ "i", 20608, 2 },	-- Green Voodoo Feather
					},
					["lvl"] = 50,
					["groups"] = {
						i(20369),	-- Azurite Fists
						i(20503),	-- Enamored Water Spirit
						i(20556),	-- Wildstaff
					},
				}),
				q(8253, {	-- Destroy Morphaz
					["qg"] = 8379,	-- Archmage Xylem
					["sourceQuest"] = 8252,	-- The Siren's Coral
					["coord"] = { 29.6, 40.6, AZSHARA },
					["maps"] = { AZSHARA },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 20085, 1 },	--Arcane Shard
					},
					["lvl"] = 50,
					["groups"] = {
						i(20035),	-- Glacial Spike
						i(20036),	-- Fire Ruby
						i(20037),	-- Arcane Crystal Pendant
					},
				}),
				q(8418, {	-- Forging the Mightstone
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["sourceQuest"] = 8416,	-- Inert Scourgestones
					["coord"] = { 42.8, 84.0, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["classes"] = { PALADIN },
					["cost"] = {
						{ "i", 20606, 2 },	-- Amber Voodoo Feather
						{ "i", 20607, 2 },	-- Blue Voodoo Feather
						{ "i", 20608, 2 },	-- Green Voodoo Feather
					},
					["lvl"] = 50,
					["groups"] = {
						i(20504),	-- Lightforged Blade
						i(20505),	-- Chivalrous Signet
						i(20512),	-- Sanctified Orb
						i(20620),	-- Holy Mightstone
					},
				}),
				q(4143, {	-- Haze of Evil
					["qg"] = 7775,	-- Gregan Brewspewer
					["sourceQuest"] = 4142,	-- A Visit to Gregan
					["coord"] = { 45.1, 25.6, FERALAS },
					["maps"] = { FERALAS, UNGORO_CRATER },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11318, 5 },	-- Atal'ai Haze
					},
					["lvl"] = 47,
				}),
				q(3512, {	-- In Eranikus' Own Words
					["qg"] = 5353,	-- Itharius
					["sourceQuest"] = 3374,	-- The Essence of Eranikus [Part 2]
					["description"] = "This quest chain seems to be an incomplete one as there is no follow-up. Still an interesting quest chain as most people do not know about it. It essentially details how Eranikus is not actually dead and likely prepares the player for the Opening of AQ quest chain that does involve Eranikus once again.",
					["coord"] = { 13.67, 71.72, SWAMP_OF_SORROWS },
					["maps"] = { SWAMP_OF_SORROWS, WINTERSPING },
					["lvl"] = 48,
				}),
				q(3446, {	-- Into the Depths
					["qg"] = 7771,	-- Marvon Rivetseeker
					["sourceQuest"] = 3444,	-- The Stone Circle
					["coord"] = { 52.6, 45.8, TANARIS },
					["maps"] = { TANARIS },
					["lvl"] = 46,
					["groups"] = {
						{
							["itemID"] = 10466,	-- Atal'ai Stone Circle
							["questID"] = 3446,	-- Into the Depths
						},
					},
				}),
				q(1475, {	-- Into The Temple of Atal'Hakkar
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					["sourceQuest"] = 1469,	-- Rhapsody's Tale
					["coord"] = { 64.2, 20.8, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6288, 10 },	-- Atal'ai Tablet
					},
					["lvl"] = 38,
					["groups"] = {
						i(1490),	-- Guardian Talisman
					},
				}),
				q(1446, {	-- Jammal'an the Prophet
					["qg"] = 5598,	-- Atal'ai Exile
					["coord"] = { 33.6, 75.2, THE_HINTERLANDS },
					["maps"] = { THE_HINTERLANDS },
					["cr"] = 5710,	-- Jammal'an the Prophet
					["cost"] = {
						{ "i", 6212, 1 },	-- Head of Jammal'an
					},
					["lvl"] = 38,
					["groups"] = {
						i(11124),	-- Helm of Exile
						i(11123),	-- Rainstrider Leggings
					},
				}),
				q(1424, {	-- Pool of Tears
					["qg"] = 1443,	-- Fel'zerul
					["coord"] = { 64.2, 20.8, SWAMP_OF_SORROWS },
					["maps"] = { SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						{
							["itemID"] = 6175,	-- Atal'ai Artifact
							["questID"] = 1424,	-- Pool of Tears
						},
					},
				}),
				q(1444, {	-- Return to Fel'Zerul
					["qg"] = 5598,	-- Atal'ai Exile
					["sourceQuest"] = 1429,	-- The Atal'ai Exile
					["coord"] = { 33.6, 75.2, THE_HINTERLANDS },
					["maps"] = { THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(3447, {	-- Secret of the Circle
					["qg"] = 7771,	-- Marvon Rivetseeker
					["sourceQuest"] = 3444,	-- The Stone Circle
					["coord"] = { 52.6, 45.8, TANARIS },
					["maps"] = { TANARIS },
					["lvl"] = 46,
					["groups"] = {
						i(10773, { 		-- Hakkari Urn
							i(10781),	-- Hakkari Breastplate
							i(10782),	-- Hakkari Shroud
							i(10780),	-- Mark of Hakkar
						}),
					},
				}),
				q(4787, {	-- The Ancient Egg
					["qg"] = 8579,	-- Yeh'kinya
					["sourceQuest"] = 3527,	-- The Prophecy of Mosh'aru
					["coord"] = { 67, 22.4, TANARIS },
					["maps"] = { TANARIS, THE_HINTERLANDS },
					["cost"] = {
						{ "i", 12402, 1 },	-- Ancient Egg
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 12402,	-- Ancient Egg
							["questID"] = 4787,	-- The Ancient Egg
							["coord"] = { 57.5, 86.7, THE_HINTERLANDS },
						},
					},
				}),
				q(1429, {	-- The Atal'ai Exile
					["qg"] = 1443,	-- Fel'zerul
					["sourceQuest"] = 1424,	-- Pool of Tears
					["coord"] = { 64.2, 20.8, SWAMP_OF_SORROWS },
					["maps"] = { SWAMP_OF_SORROWS, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						{
							["itemID"] = 6193,	-- Bundle of Atal'ai Artifacts
							["questID"] = 1429,	-- The Atal'ai Exile
							["coord"] = { 33.6, 75.2, THE_HINTERLANDS },
						},
					},
				}),
				q(8236, {	-- The Azure Key
					["qg"] = 8379,	-- Archmage Xylem
					["sourceQuest"] = 8235,	-- Encoded Fragments
					["coord"] = { 29.6, 40.6, AZSHARA },
					["maps"] = { AZSHARA, HILLSBRAD_FOOTHILLS },
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 20022, 1 },	-- Azure Key
					},
					["lvl"] = 50,
					["groups"] = {
						i(19982),	-- Duskbat Drape
						i(19984),	-- Ebon Mask
						i(20255),	-- Whisperwalk Boots
					},
				}),
				q(3373, {	-- The Essence of Eranikus
					["provider"] = { "i", 10454 },	-- Essence of Eranikus
					["description"] = "Interact with the Essence Font located in the back corner of the room after you defeat Eranikus to turn in this quest and loot the Essence of Eranikus.",
					["lvl"] = 48,
					["groups"] = {
						i(10455),	-- Chained Essence of Eranikus
					},
				}),
				q(3374, {	-- The Essence of Eranikus [Part 2]
					["qg"] = 5353,	-- Itharius
					["sourceQuest"] = 3373,	-- The Essence of Eranikus
					["provider"] = { "i", 10589 },	-- Oathstone of Ysera's Dragonflight
					["description"] = "You get the Oathstone by talking to Itharius, at the cave in the SW part of Swamp of Sorrows. You must have the Chained Essence first.",
					["coord"] = { 13.67, 71.72, SWAMP_OF_SORROWS },
					["maps"] = { SWAMP_OF_SORROWS },
					["cost"] = {
						{ "i", 10455, 1 },	-- Chained Essence of Eranikus
					},
					["lvl"] = 48,
				}),
				q(3528, {	-- The God Hakkar
					["qg"] = 8579,	-- Yeh'kinya
					["sourceQuest"] = 4787,	-- The Ancient Egg
					["coord"] = { 66.8, 22.4, TANARIS },
					["maps"] = { TANARIS },
					["cost"] = {
						{ "i", 10662, 1 },	-- Filled Egg of Hakkar
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 10662,	-- Filled Egg of Hakkar
							["questID"] = 3528,	-- The God Hakkar
							["cost"] = {
								{ "i", 10465, 1 },	-- Egg of Hakkar
								{ "i", 10663, 1 },	-- Essence of Hakkar
							},
						},
						i(10749),	-- Avenguard Helm
						i(10750),	-- Lifeforce Dirk
						i(10751),	-- Gemburst Circlet
					},
				}),
				q(8232, {	-- The Green Drake
					["qg"] = 8405,	-- Ogtinc
					["sourceQuest"] = 8231,	-- Wavethrashing
					["coord"] = { 42.2, 42.6, AZSHARA },
					["maps"] = { AZSHARA },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 20019, 1 },	-- Tooth of Morphaz
					},
					["lvl"] = 50,
					["groups"] = {
						i(19991),	-- Devilsaur Eye
						i(19992),	-- Devilsaur Tooth
						i(20083),	-- Hunting Spear
					},
				}),
				q(3444, {	-- The Stone Circle
					["qg"] = 7771,	-- Marvon Rivetseeker
					["sourceQuests"] = {
						3445,	-- The Sunken Temple
						3380,	-- The Sunken Temple
					},
					["coord"] = { 52.6, 45.8, TANARIS },
					["maps"] = { TANARIS, THE_BARRENS },
					["lvl"] = 46,
					["groups"] = {
						{
							["itemID"] = 10556,	-- Stone Circle
							["questID"] = 3444,	-- The Stone Circle
							["provider"] = { "o", 149036 },	-- Marvon's Chest
							["coord"] = { 62.5, 38.5, THE_BARRENS },
						},
					},
				}),
				q(3445, {	-- The Sunken Temple
					["qg"] = 7900,	-- Angelas Moonbreeze
					["coord"] = { 31.8, 45.6, FERALAS },
					["maps"] = { FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 46,
				}),
				q(3380, {	-- The Sunken Temple
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["coord"] = { 74.4, 43.4, FERALAS },
					["maps"] = { FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
				}),
				q(1445, {	-- The Temple of Atal'Hakkar
					["qg"] = 1443,	-- Fel'zerul
					["sourceQuest"] = 1424,	-- Pool of Tears
					["coord"] = { 64.2, 20.8, SWAMP_OF_SORROWS },
					["maps"] = { SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						i(1490),	-- Guardian Talisman
					},
				}),
				q(8422, {	-- Trolls of a Feather
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["sourceQuest"] = 8421,	-- The Wrong Stuff
					["coord"] = { 41.6, 45.0, FELWOOD },
					["maps"] = { FELWOOD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 20606, 2 },	-- Amber Voodoo Feather
						{ "i", 20607, 2 },	-- Blue Voodoo Feather
						{ "i", 20608, 2 },	-- Green Voodoo Feather
					},
					["lvl"] = 50,
					["groups"] = {
						i(20534),	-- Abyss Shard
						i(20530),	-- Robes of Servitude
						i(20536),	-- Soul Harvester
					},
				}),
				q(8425, {	-- Voodoo Feathers
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 8424,	-- War on the Shadowsworn
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["maps"] = { SWAMP_OF_SORROWS },
					["classes"] = { WARRIOR },
					["lvl"] = 50,
					["cost"] = {
						{ "i", 20606, 2 },	-- Amber Voodoo Feather
						{ "i", 20607, 2 },	-- Blue Voodoo Feather
						{ "i", 20608, 2 },	-- Green Voodoo Feather
					},
					["groups"] = {
						i(20130),	-- Diamond Flask
						i(20517),	-- Razorsteel Shoulders
						i(20521),	-- Fury Visor
					},
				}),
				q(4146, {	-- Zapper Fuel
					["qg"] = 8496,	-- Liv Rizzlefix <Workshop Assistant>
					["sourceQuest"] = 4147,	-- Marvon's Workshop
					["coord"] = { 62.5, 38.7, THE_BARRENS },
					["maps"] = { THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
				}),
			}),
			n(ZONEDROPS, {
				{
					["itemID"] = 11318,	-- Atal'ai Haze
					["allianceQuestID"] = 4143,	-- Haze of Evil
					["hordeQuestID"] = 4146,	-- Zapper Fuel
					["crs"] = {
						8384,	-- Deep Lurker
						5226,	-- Murk Worm
						5228,	-- Saturated Ooze
					},
				},
				{
					["itemID"] = 6288,	-- Atal'ai Tablet
					["questID"] = 1475,	-- Into The Temple of Atal'Hakkar
					["provider"] = { "o", 37099 },	-- Atal'ai Tablet
					["races"] = ALLIANCE_ONLY,
				},
				{
					["itemID"] = 6181,	-- Fetish of Hakkar
					["questID"] = 1445,	-- The Temple of Atal'Hakkar
					["races"] = HORDE_ONLY,
				},
				i(16216, {	-- Formula: Enchant Cloak - Greater Resistance
					["cr"] = 5259,	-- Atal'ai Witch Doctor
				}),
				i(15733),	-- Pattern: Green Dragonscale Leggings
				i(10627),	-- Bludgeon of the Grinning Dog
				i(10628),	-- Deathblow
				i(10626),	-- Ragehammer
				i(10625),	-- Stealthblade
				i(10624),	-- Stinging Bow
				i(10623),	-- Winter's Bite
				i(10630),	-- Soulcatcher Halo
				i(10632),	-- Slimescale Bracers
				i(10631),	-- Murkwater Gauntlets
				i(10633),	-- Silvershell Leggings
				i(10629),	-- Mistwalker Boots
				i(10634),	-- Mindseye Circle
			}),
			n(COMMON_BOSS_DROPS, {
				{
					["itemID"] = 20606,	-- Amber Voodoo Feather
					["questID"] = 8413,	-- Da Voodoo [Shaman]
					["altQuests"] = {
						8418,	-- Forging the Mightstone [Paladin]
						8422,	-- Trolls of a Feather [Warlock]
						8425,	-- Voodoo Feathers [Warrior]
					},
					["classes"] = {
						SHAMAN,
						PALADIN,
						WARLOCK,
						WARRIOR
					},
					["crs"] = {
						5713,	-- Gasher
						5716,	-- Zul'Lor
					},
				},
				{
					["itemID"] = 20607,	-- Blue Voodoo Feather
					["questID"] = 8413,	-- Da Voodoo [Shaman]
					["altQuests"] = {
						8418,	-- Forging the Mightstone [Paladin]
						8422,	-- Trolls of a Feather [Warlock]
						8425,	-- Voodoo Feathers [Warrior]
					},
					["classes"] = {
						SHAMAN,
						PALADIN,
						WARLOCK,
						WARRIOR
					},
					["crs"] = {
						5715,	-- Hukku
						5717,	-- Mijan
					},
				},
				{
					["itemID"] = 20608,	-- Green Voodoo Feather
					["questID"] = 8413,	-- Da Voodoo [Shaman]
					["altQuests"] = {
						8418,	-- Forging the Mightstone [Paladin]
						8422,	-- Trolls of a Feather [Warlock]
						8425,	-- Voodoo Feathers [Warrior]
					},
					["classes"] = {
						SHAMAN,
						PALADIN,
						WARLOCK,
						WARRIOR
					},
					["crs"] = {
						5714,	-- Loro
						5712,	-- Zolo
					},
				},
			}),
			n(5708, {	-- Spawn of Hakkar
				i(10801),	-- Slitherscale Boots
				i(10802),	-- Wingveil Cloak
			}),
			n(8580, {	-- Atal'alarion
				["description"] = "Go to the Pit of Refuse.\n\nClear all of the trash as you travel around the circular platform. You’ll notice balconies that dip out and overlook the center of the pit. Essentially, once it’s all cleared, each of your party members should spread out and be assigned to a balcony with an Atal’ai Shrine. The shrines must be clicked in a specific order:\n\n    South (Bottom)\n    North (Top)\n    Southwest (Bottom Left)\n    Southeast (Bottom Right)\n    Northwest (Top Left)\n    Northeast (Top Right)\n\nOnce a statue has been clicked in the correct sequence, it’ll turn green. If not, the person attempting to activate will gain a curse.",
				["groups"] = {
					i(10799),	-- Headspike
					i(10800),	-- Darkwater Bracers
					i(10798),	-- Atal'alarion Tusk Ring
				},
			}),
			n(-22, {	-- Atal'ai Defenders
				["description"] = "You must kill all 6 mini bosses around the room in order to unlock the way to Jammal'an the Prophet.",
				["providers"] = {
					{ "n", 5713 },	-- Gasher
					{ "n", 5715 },	-- Hukku
					{ "n", 5714 },	-- Loro
					{ "n", 5717 },	-- Mijan
					{ "n", 5712 },	-- Zolo
					{ "n", 5716 },	-- Zul'Lor
				},
				["groups"] = {
					i(10783),	-- Atal'ai Spaulders
					i(10787),	-- Atal'ai Gloves
					i(10784),	-- Atal'ai Breastplate
					i(10788),	-- Atal'ai Girdle
					i(10785),	-- Atal'ai Leggings
					i(10786),	-- Atal'ai Boots
				},
			}),
			n(5711, {	-- Ogom the Wretched
				i(10803),	-- Blade of the Wretched
				i(10805),	-- Eater of the Dead
				i(10804),	-- Fist of the Damned
			}),
			n(5710, {	-- Jammal'an the Prophet
				{
					["itemID"] = 6212,	-- Head of Jammal'an
					["questID"] = 1446,	-- Jammal'an the Prophet
				},
				i(10806),	-- Vestments of the Atal'ai Prophet
				i(10808),	-- Gloves of the Atal'ai Prophet
				i(10807),	-- Kilt of the Atal'ai Prophet
			}),
			n(5721, {	-- Dreamscythe
				["description"] = "These four dragons come in pairs. You can tank them away from each other if you pull the one that's behind the other one and get really lucky.",
				["crs"] = {
					5722,	-- Hazzas
					5719,	-- Morphaz
					5720,	-- Weaver
				},
				["groups"] = {
					i(12463), 	-- Drakefang Butcher
					i(12243), 	-- Smoldering Claw
					i(10797), 	-- Firebreather
					i(10796),	-- Drakestone
					i(12465),	-- Nightfall Drape
					i(12464),	-- Bloodfire Talons
					i(12466),	-- Dawnspire Cord
					i(10795),	-- Drakeclaw Band
				},
			}),
			n(5709, {	-- Shade of Erankikus
				{
					["itemID"] = 10454,	-- Essence of Eranikus
					["questID"] = 3373,	-- The Essence of Eranikus
				},
				i(10828),	-- Dire Nail
				i(10847),	-- Dragon's Call
				i(10837),	-- Tooth of Eranikus
				i(10836),	-- Rod of Corrosion
				i(10835),	-- Crest of Supremacy
				i(10833),	-- Horns of Eranikus
				i(10829),	-- Dragon's Eye
			}),
			n(8443, {	-- Avatar of Hakkar
				["description"] = "Requires the use of the Egg of Hakkar or Yeh'kinya's Scroll.\n\nOnce you start the fight, the room will fill with a variety of mobs. You need to kill the 4 Wind Serpents that appear, and loot the blood off of them, and use it to douse one of the fires in each corner of the room.\n\nEvery time you douse a fire, a dragonkin will walk in and start channeling a spell on Hakkar. Do not let them complete this channel.\n\nThe boss spawns after all 4 flames are doused.",
				["cost"] = {
					{ "i", 10465, 1 },	-- Egg of Hakkar
					{ "i", 10818, 1 },	-- Yeh'kinya's Scroll
				},
				["groups"] = {
					{
						["itemID"] = 10663,	-- Essence of Hakkar
						["questID"] = 3528,	-- The God Hakkar
					},
					i(10844),	-- Spire of Hakkar
					i(10838),	-- Might of Hakkar
					i(10843),	-- Featherskin Cape
					i(12462),	-- Embrace of the Wind Serpent
					i(10845),	-- Warrior's Embrace
					i(10842),	-- Windscale Sarong
					i(10846),	-- Bloodshot Greaves
				},
			}),
		},
	}),
})};