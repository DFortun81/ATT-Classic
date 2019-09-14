-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = {
	map(TEMPLE_OF_ATALHAKKAR, { 	-- The Temple of Atal'hakkar
		["description"] = "Over a thousand years ago, the powerful Gurubashi Empire was torn apart by a massive civil war. An influential group of troll priests, known as the Atal'ai, attempted to bring back an ancient blood god named Hakkar the Soulflayer. Though the priests were defeated and ultimately exiled, the great troll empire buckled in upon itself. The exiled priests fled far to the north, into the Swamp of Sorrows. There they erected a great temple to Hakkar - where they could prepare for his arrival into the physical world. The great dragon Aspect, Ysera, learned of the Atal'ai's plans and smashed the temple beneath the marshes. To this day, the temple's drowned ruins are guarded by the green dragons who prevent anyone from getting in or out. However, it is believed that some of the fanatical Atal'ai may have survived Ysera's wrath - and recommitted themselves to the dark service of Hakkar.",
		["lvl"] = 45,
		["g"] = {
			n(-17, {	-- Quests
				q(9053, {	-- A Better Ingredient
					["provider"] = { "n", 9619 },	-- Torwa Pathfinder
					["classes"] = { 11 },	-- Druid
					["g"] = {
						i(22272),	-- Forest's Embrace
						i(22274),	-- Grizzled Pelt
						i(22458),	-- Moonshadow Stave
					},
				}),
				q(8257, {	-- Blood of Morphaz
					["provider"] = { "n", 8405 },	-- Ogtinc
					["classes"] = { 5 },	-- Priest
					["g"] = {
						i(19990),	-- Blessed Prayer Beads
						i(20006),	-- Circle of Hope
						i(20082),	-- Woestave
					},
				}),
				q(8413, {	-- Da Voodoo
					["provider"] = { "n", 6176 },	-- Bath'rah the Windwatcher
					["classes"] = { 7 },	-- Shaman
					["g"] = {
						i(20369),	-- Azurite Fists
						i(20503),	-- Enamored Water Spirit
						i(20556),	-- Wildstaff
					},
				}),
				q(8253, {	-- Destroy Morphaz
					["provider"] = { "n", 8379 },	-- Archmage Xylem
					["classes"] = { 8 },	-- Mage
					["g"] = {
						i(20037),	-- Arcane Crystal Pendant
						i(20036),	-- Fire Ruby
						i(20035),	-- Glacial Spike
					},
				}),
				q(8418, {	-- Forging the Mightstone
					["provider"] = { "n", 10838 },	-- Commander Ashlam Valorfist
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 2 },	-- Paladin
					["g"] = {
						i(20505),	-- Chivalrous Signet
						i(20504),	-- Lightforged Blade
						i(20512),	-- Sanctified Orb
					},
				}),
				q(1475, {	-- Into The Temple of Atal'Hakkar
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(1490),	-- Guardian Talisman
					},
				}),
				q(3447, {	-- Secret of the Circle
					["g"] = {
						i(10773, { 		-- Hakkari Urn
							i(10781),	-- Hakkari Breastplate
							i(10782),	-- Hakkari Shroud
							i(10780),	-- Mark of Hakkar
						}),
					},
				}),
				q(8236, {	-- The Azure Key
					["provider"] = { "n", 8379 },	-- Archmage Xylem
					["classes"] = { 4 },	-- Rogue
					["g"] = {
						i(19982),	-- Duskbat Drape
						i(19984),	-- Ebon Mask
						i(20255),	-- Whisperwalk Boots
					},
				}),
				q(3528, {	-- The God Hakkar
					["cost"] = {
						{ "i", 10662, 1 },	-- Filled Egg of Hakkar
					},
					["g"] = {
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
					["provider"] = { "n", 8405 },	-- Ogtinc
					["classes"] = { 3 },	-- Hunter
					["g"] = {
						i(19991),	-- Devilsaur Eye
						i(19992),	-- Devilsaur Tooth
						i(20083),	-- Hunting Spear
					},
				}),
				q(1445, {	-- The Temple of Atal'Hakkar
					["races"] = HORDE_ONLY,
					["g"] = {
						i(1490),	-- Guardian Talisman
					},
				}),
				q(8422, {	-- Trolls of a Feather
					["provider"] = { "n", 14470 },	-- Impsy
					["classes"] = { 9 },	-- Warlock
					["g"] = {
						i(20534),	-- Abyss Shard
						i(20530),	-- Robes of Servitude
						i(20536),	-- Soul Harvester
					},
				}),
				q(8425, {	-- Voodoo Feathers
					["provider"] = { "n", 7572 },	-- Fallen Hero of the Horde
					["classes"] = { 1 },	-- Warrior
					["g"] = {
						i(20130),	-- Diamond Flask
						i(20521),	-- Fury Visor
						i(20517),	-- Razorsteel Shoulders
					},
				}),
			}),
			n(0, {	-- Zone Drop
				i(17682),	-- Book: Gift of the Wild Rank 1
				i(17683, {	-- Book: Gift of the Wild Rank 2
					["description"] = "This can only drop from Elites.",
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
			n(8580, {	-- Atal'alarion
				["description"] = "Go to the Pit of Refuse.\n\nClear all of the trash as you travel around the circular platform. You’ll notice balconies that dip out and overlook the center of the pit. Essentially, once it’s all cleared, each of your party members should spread out and be assigned to a balcony with an Atal’ai Shrine. The shrines must be clicked in a specific order:\n\n    South (Bottom)\n    North (Top)\n    Southwest (Bottom Left)\n    Southeast (Bottom Right)\n    Northwest (Top Left)\n    Northeast (Top Right)\n\nOnce a statue has been clicked in the correct sequence, it’ll turn green. If not, the person attempting to activate will gain a curse.",
				["g"] = {
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
				["g"] = {
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
					},
					i(10783),	-- Atal'ai Spaulders
					i(10787),	-- Atal'ai Gloves
					i(10784),	-- Atal'ai Breastplate
					i(10788),	-- Atal'ai Girdle
					i(10785),	-- Atal'ai Leggings
					i(10786),	-- Atal'ai Boots
				},
			}),
			n(8443, { -- Avatar of Hakkar
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
			n(5711, { -- Ogom the Wretched
				i(10803),	-- Blade of the Wretched
				i(10805),	-- Eater of the Dead
				i(10804),	-- Fist of the Damned
			}),
			n(5710, { -- Jammal'an the Prophet
				i(10806),	-- Vestments of the Atal'ai Prophet
				i(10808),	-- Gloves of the Atal'ai Prophet
				i(10807),	-- Kilt of the Atal'ai Prophet
			}),
			n(5721, {		-- Dreamscythe
				["crs"] = {
					5722,	-- Hazzas
					5719,	-- Morphaz
					5720,	-- Weaver
				},
				["g"] = {
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
			n(5709, { -- Shade of Erankikus
				i(10454, {	-- Essence of Eranikus
					["questID"] = 3373,	-- The Essence of Eranikus
					["g"] = {
						i(10455),	-- Chained Essence of Eranikus
					},
				}),
				i(10828),	-- Dire Nail
				i(10847),	-- Dragon's Call
				i(10837),	-- Tooth of Eranikus
				i(10836),	-- Rod of Corrosion
				i(10835),	-- Crest of Supremacy
				i(10833),	-- Horns of Eranikus
				i(10829),	-- The Dragon's Eye
			}),
			
			n(5708, {	-- Spawn of Hakkar
				["g"] = {
					i(10801),	-- Slitherscale Boots
					i(10802),	-- Wingveil Cloak
				},
			}),
		},
	}),
};
