-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
_.Instances = {
	map(250, {	-- Blackrock Spire
		["description"] = "The mighty fortress carved within the fiery bowels of Blackrock Mountain was designed by the master dwarf-mason, Franclorn Forgewright. Intended to be the symbol of Dark Iron power, the fortress was held by the sinister dwarves for centuries. However, Nefarian - the cunning son of the dragon, Deathwing - had other plans for the great keep. He and his draconic minions took control of the upper Spire and made war on the dwarves' holdings in the mountain's volcanic depths. Realizing that the dwarves were led by the mighty fire elemental, Ragnaros - Nefarian vowed to crush his enemies and claim the whole of Blackrock mountain for himself.",
		["lvl"] = 50,
		["groups"] = {
			n(-17, {	-- Quests
				q(27440, {	-- Trolls, Ogres, and Orcs, Oh My!
					i(65933),	-- Highlord's Chestpiece
					i(65957),	-- Overlord's Legplates
					i(65981),	-- War Master's Pauldrons
				}),
				{	-- Human Remains
					["objectID"] = 176090,	-- Human Remains
					["g"] = {
						{	-- Hot Fiery Death
							["questID"] = 5103,	-- Hot Fiery Death
							["requireSkill"] = 164,	-- Blacksmithing
							["isBreadcrumb"] = true,
						},
					},
				},
				q(6602, {	-- Blood of the Black Dragon Champion
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(16309),	-- Drakefire Amulet
					},
				}),
				q(4765, {	-- Delivery to Ridgewell
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(15860),	-- Blinkstrike Armguards
						i(15861),	-- Swiftfoot Treads
					},
				}),
				q(6502, {	-- Drakefire Amulet
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(16309),	-- Drakefire Amulet
					},
				}),
				q(4974, {	-- For The Horde!
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(13965),	-- Blackhand's Breadth
						i(13968),	-- Eye of the Beast
						i(13966),	-- Mark of Tyranny
					},
				}),
				{
					["questID"] = 4729,	--  Kibler's Exotic Pets
					["groups"] = {
						i(12264),	-- Worg Carrier (PET!)
					},
				},
				q(6102, {	-- General Drakkisath's Demise
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(13965),	-- Blackhand's Breadth
						i(13968),	-- Eye of the Beast
						i(13966),	-- Mark of Tyranny
					},
				}),
				q(27445, { 	-- General Drakkisath, Hand of Nefarian
					["groups"] = {
						i(66001), 	-- Aeyla's Staff
						i(65934), 	-- Staff of the Second Orb
						i(65982), 	-- Sword of Nefarian's Hand
						i(65958), 	-- Vaelan's Claw
					},
				}),
				q(5167, { 	-- Legplates of the Chromatic Defier
					["cost"] = {
						{ "i", 12871, 1 },	-- Chromatic Carapace
					},
					["groups"] = {
						i(12903), 	-- Legguards of the Chromatic Defier
						i(12945),	-- Legplates of the Chromatic Defier
					},
				}),
				q(5166, { 	-- Breastplate of the Chromatic Flight
					["cost"] = {
						{ "i", 12871, 1 },	-- Chromatic Carapace
					},
					["groups"] = {
						i(12895), 	-- Breastplate of the Chromatic Flight
					},
				}),
				q(5068, { 	-- Breastplate of Bloodthirst
					["cost"] = {
						{ "i", 12731, 1 },	-- Pristine Hide of the Beast
					},
					["groups"] = {
						i(12757), 	-- Breastplate of Bloodthirst
					},
				}),
				q(5063, { 	-- Cap of the Scarlet Savant
					["cost"] = {
						{ "i", 12731, 1 },	-- Pristine Hide of the Beast
					},
					["groups"] = {
						i(12752), 	-- Cap of the Scarlet Savant
					},
				}),
				q(5067,	{ 	-- Leggings of Arcana
					["cost"] = {
						{ "i", 12731, 1 },	-- Pristine Hide of the Beast
					},
					["groups"] = {
						i(12756),	-- Leggings of Arcana
					},
				}),
				q(4866, {	-- Mother's Milk
					["groups"] = {
						i(15873),	-- Ragged John's Neverending Cup
					},
				}),
				q(4743, {	-- Seal of Ascension
					["groups"] = {
						i(12344),	-- Seal of Ascension
					},
				}),
				q(4768, {	-- The Darkstone Tablet
					["groups"] = {
						i(15860),	-- Blinkstrike Armguards
						i(15861),	-- Swiftfoot Treads
					},
				}),
				q(4867, { 	-- Urok Doomhowl
					["groups"] = {
						{
							["itemID"] = 12730,	-- Warosh's Scroll
							["questID"] = 4867,	-- Urok Doomhowl
						},
						i(15867),	-- Prismcharm
					},
				}),
				q(8996, {	-- Return to Bodley
					["provider"] = { "n", 16073 },	-- Spirit of Lord Valthalak
					["lvl"] = 58,
					["sourceQuest"] = 8995,	-- Mea Culpa, Lord Valthalak
				}),
			}),
			n(0, {	-- Zone Drop
				{
					["itemID"] = 22138,	-- Blackrock Bracer
					["questID"] = 8994,	-- Final Preparations
				},
				{
					["itemID"] = 12219,	-- Unadorned Seal of Ascension
					["questID"] = 4742,	-- Seal of Ascension
				},
				i(16247, {	-- Formula: Enchant 2H Weapon - Superior Impact
					["crs"] = {
						10317,	-- Blackhand Elite <Blackhand Legion>
					},
				}),
				i(16244, {	-- Formula: Enchant Gloves - Greater Strength
					["crs"] = {
						9198,	-- Spirestone Mystic
					},
				}),
				i(16250, {	-- Formula: Enchant Weapon - Superior Striking
					["crs"] = {
						9216,	-- Spirestone Warlord
					},
				}),
				i(14513, {	-- Pattern: Robe of the Archmage
					["crs"] = {
						9264,	-- Firebrand Pyromancer
					},
				}),
				i(15749, {	-- Pattern: Volcanic Breastplate
					["crs"] = {
						9259,	-- Firebrand Grunt
					},
				}),
				i(15775, {	-- Pattern: Volcanic Shoulders
					["crs"] = {
						9260,	-- Firebrand Legionnaire
					},
				}),
				i(13494, {	-- Recipe: Greater Fire Protection Potion
					["crs"] = {
						9262,	-- Firebrand Invoker
						9264,	-- Firebrand Pyromancer
					},
				}),
				i(16680),	-- Beaststalker's Belt
				i(16681),	-- Beaststalker's Bindings
				i(16735),	-- Bracers of Valor
				i(16673), 	-- Cord of Elements
				i(16696),	-- Devout Belt
				i(16703),	-- Dreadmist Bracers
				i(16685),	-- Magister's Belt
				i(16683),	-- Magister's Bindings
				i(16713),	-- Shadowcraft Belt
				i(16716),	-- Wildheart Belt
				i(13260),	-- Wind Dancer Boots
				i(13371),	-- Father Flame
			}),
			n(-27, {	-- Lower
				n(9257, {	-- Scarshield Warlock
					["description"] = "DO NOT KILL this mob if you are trying to get the Burning Felguard to spawn.",
					["groups"] = {
						i(9214),	-- Grimoire of Inferno
						n(10263, {	-- Burning Felguard
							["description"] = "This mob is infinitely farmable if you don't kill all of the Scarshield Warlocks.",
							["groups"] = {
								i(13181),	-- Demonskin Gloves
								i(13182),	-- Phase Blade
							},
						}),
					},
				}),
				{
					["itemID"] = 12533,	-- Roughshod Pike
					["questID"] = 4867,	-- Urok Doomhowl
					["description"] = "This item can be found along the back wall as you cross the 2nd bridge to the sleeping orc encampment just after Vorash.",
				},
				n(9218, {	-- Spirestone Battle Lord (Rare)
					["description"] = "This is a rare that is not always present.",
					["groups"] = {
						i(13285),	-- The Blackrock Slicers
						i(13284),	-- Swiftdart Battleboots
					},
				}),
				n(9219, {	-- Spirestone Butcher (Rare)
					["description"] = "This is a rare that is not always present.",
					["groups"] = {
						i(13286),	-- Rivenspike
						i(12608),	-- Butcher's Apron
					},
				}),
				n(9217, {	-- Spirestone Lord Magus (Rare)
					["description"] = "This is a rare that is not always present.",
					["groups"] = {
						i(13261),	-- Globe of D'sak
						i(13282),	-- Ogreseer Tower Boots
						i(13283),	-- Magus Ring
					},
				}),
				n(9196, {	-- Highlord Omokk
					{
						["itemID"] = 12336,	-- Gemstone of Spirestone
						["questID"] = 4742,	-- Seal of Ascension
					},
					{
						["itemID"] = 12534,	-- Omokk's Head
						["questID"] = 4867,	-- Urok Doomhowl
					},
					i(13167),	-- Fist of Omokk
					i(13166),	-- Slamshot Shoulders
					i(13168),	-- Plate of the Shaman King
					i(16736),	-- Belt of Valor
					i(13170),	-- Skyshroud Leggings
					i(13169),	-- Tressermane Leggings
					i(16670),	-- Boots of Elements
				}),
				n(9236, {	-- Shadow Hunter Vosh'gajin
					{
						["itemID"] = 12740,	-- Fifth Mosh'aru Tablet
						["questID"] = 4788,	-- The Final Tablets
						["description"] = "Located directly behind the boss.",
					},
					{
						["itemID"] = 13352,	-- Vosh'gajin's Snakestone
						["questID"] = 5306,	-- Snakestone of the Shadow Huntress
						["requireSkill"] = 164,	-- Blacksmithing
					},
					i(12651),	-- Blackcrow
					i(12653),	-- Riphook
					i(13257),	-- Demonic Runed Spaulders
					i(12626),	-- Funeral Cuffs
					i(13255),	-- Trueaim Gauntlets
					i(16712), 	-- Shadowcraft Gloves
					i(12654),	-- Doomshot
				}),
				n(9237, {	-- War Master Voone
					{
						["itemID"] = 12335,	-- Gemstone of Smolderthorn
						["questID"] = 4742,	-- Seal of Ascension
					},
					{
						["itemID"] = 12741,	-- Sixth Mosh'aru Tablet
						["questID"] = 4788,	-- The Final Tablets
						["description"] = "Located directly behind the boss.",
					},
					i(12582),	-- Keris of Zul'Serak
					i(13175),	-- Voone's Twitchbow
					i(13177),	-- Talisman of Evasion
					i(13179),	-- Brazecore Armguards
					i(16676),	-- Beaststalker's Gloves
					i(22231),	-- Kayser's Boots of Precision
					i(13173),	-- Flightblade Throwing Axe
				}),
				n(16080, {	-- Mor Grayhoof
					["description"] = "Brazier of Invocation (Dungeon Set 2 questline) is required to summon this boss.",
					["cost"] = {
						{ "i", 22057, 1 },	-- Brazier of Invocation
					},
					["u"] = 3,	-- Not yet available
					["groups"] = {
						{
							["itemID"] = 21984,	-- Left Piece of Lord Valthalak's Amulet
							["questID"] = 8966,	-- The Left Piece of Lord Valthalak's Amulet
						},
						{
							["itemID"] = 22046,	-- Right Piece of Lord Valthalak's Amulet
							["questID"] = 8989,	-- The Right Piece of Lord Valthalak's Amulet
						},
						i(22322),	-- The Jaw Breaker
						i(22319),	-- Tome of Divine Right
						i(22325),	-- Belt of the Trickster
						i(22306),	-- Ironweave Belt
						i(22398),	-- Idol of Rejuvenation
					},
				}),
				n(9596, {	-- Bannok Grimaxe (Rare)
					["description"] = "This is a rare that is not always present.",
					["groups"] = {
						i(12838),	-- Plans: Arcanite Reaper
						i(12621),	-- Demonfork
						i(12637),	-- Backusarian Gauntlets
						i(12634),	-- Chiselbrand Girdle
					},
				}),
				n(10376, {	-- Crystal Fang (Rare)
					["description"] = "This is a rare that is not always present.",
					["groups"] = {
						i(13218),	-- Fang of the Crystal Spider
						i(13185),	-- Sunderseer Mantle
						i(13184),	-- Fallbrush Handgrips
					},
				}),
				n(10596, {	-- Mother Smolderweb
					i(13183),	-- Venomspitter
					i(13213),	-- Smolderweb's Eye
					i(13244),	-- Gilded Gauntlets
					i(16715),	-- Wildheart Boots
				}),
				n(10584, {	-- Urok Doomhowl
					["description"] = "Summonable Boss. Loot a Roughshod Pike, found on the left wall after crossing the second bridge before heading to Highlord Omokk. Kill Highlord Omokk and loot his head. After killing Mother Smolderweb, head up and use the pike at the pile of skulls located at the corner of the square platform. This will summon waves of enemies and finally the boss.",
					["cost"] = {
						{ "i", 12533, 1},	-- Roughshod Pike
						{ "i", 12534, 1},	-- Omokk's Head
					},
					["groups"] = {
						{
							["itemID"] = 12712,	-- Warosh's Mojo
							["questID"] = 4867,	-- Urok Doomhowl
						},
						i(18784),	-- Top Half of Advanced Armorsmithing: Volume III
						i(13258),	-- Slaghide Gauntlets
						i(22232),	-- Marksman's Girdle
						i(16670),	-- Boots of Elements
						i(13259),	-- Ribsteel Footguards
						i(13178),	-- Rosewine Circle
					},
				}),
				n(9736, {	-- Quartermaster Zigris
					i(12835),	-- Plans: Annihilator
					{
						["itemID"] = 13247,	-- Quartermaster Zigris' Footlocker
						["description"] = "Contains a random green item.",
					},
					i(13253),	-- Hands of Power
					i(16680),	-- Beaststalker's Belt
					i(16735),	-- Bracers of Valor
					i(13252),	-- Cloudrunner Girdle
					i(16673),	-- Cord of Elements
					i(16696),	-- Devout Belt
					i(16703),	-- Dreadmist Bracers
					i(16683),	-- Magister's Bindings
					i(16713),	-- Shadowcraft Belt
					i(16716),	-- Wildheart Belt
				}),
				n(10221, {	-- Bloodaxe Worg Pup
					["description"] = "Can be pulled outside of the room without engaging the boss.",
					["cost"] = {
						{ "i", 12262, 1 },	-- Empty Worg Pup Cage
					},
					["groups"] = {
						{
							["itemID"] = 12263,	-- Caged Worg Pup
							["questID"] = 4729,	-- Kibler's Exotic Pets
						},
					},
				}),
				n(10220, {	-- Halycon
					i(13212),	-- Halcyon's Spiked Collar
					i(22313),	-- Ironweave Bracers
					i(13211),	-- Slashclaw Bracers
					i(13210),	-- Pads of the Dread Wolf
				}),
				n(10268, {	-- Gizrul the Slavener
					["description"] = "Summoned immediately after Halycon is defeated.",
					["groups"] = {
						i(13205),	-- Rhombeard Protector
						i(16718),	-- Wildheart Spaulders
						i(13208),	-- Bleak Howler Armguards
						i(13206),	-- Wolfshear Leggings
					},
				}),
				n(9718, {	-- Ghok Bashguud <Bloodaxe Champion>
					["description"] = "This is a rare that is not always present.",
					["groups"] = {
						i(13204),	-- Bashguuder
						i(13198),	-- Hurd Smasher
						i(13203),	-- Armswake Cloak
					},
				}),
				n(9568, {	-- Overlord Wyrmthalak
					{
						["itemID"] = 12337,	-- Gemstone of Bloodaxe
						["questID"] = 4742,	-- Seal of Ascension
					},
					{
						["itemID"] = 12780,	-- General Drakkisath's Command
						["questID"] = 5089,	-- General Drakkisath's Command
						["races"] = ALLIANCE_ONLY,
					},
					i(13148), 	-- Chillpike
					i(13163),	-- Relentless Scythe
					i(13161),	-- Trindlehaven Staff
					i(13162),	-- Reiver Claws
					i(16679),	-- Beaststalker's Mantle
					i(13143),	-- Mark of the Dragon Lord
					i(13164),	-- Heart of the Scale
					i(22321),	-- Heart of Wyrmthalak
				}),
			}),
			n(-28, {	-- Upper
				["description"] = "One member of your group must have completed the Seal of Ascension quest chain in order for the fires to light and the door to open to this portion of the instance.",
				["cost"] = {
					{ "i", 12344, 1 },	-- Seal of Ascension
				},
				["groups"] = {
					n(9816, { 	-- Pyroguard Emberseer
						{
							["itemID"] = 17322,	-- Eye of the Emberseer
							["questID"] = 6821,	-- Eye of the Emberseer
						},
						{
							["itemID"] = 21988,	-- Ember of Emberseer
							["questID"] = 8961,	-- Three Kings of Flame
						},
						i(12929),	-- Emberfury Talisman
						i(12905), 	-- Wildfire Cape
						i(12927),	-- Truestrike Shoulders
						i(16672),	-- Gauntlets of Elements
						i(12926),	-- Flaming Band
						i(23320),	-- Tablet of Flame Shock VI
					}),
					n(10264, { 	-- Solakar Flamewreath
						["description"] = "This is spawned by clicking on the Father Flame and killing 8 waves of drake adds in the Leeroy Jenkins room.",
						["groups"] = {
							i(18657),	-- Schematic: Hyper-Radiant Flame Reflector
							i(16695), 	-- Devout Mantle
							i(12603),	-- Nightbrace Tunic
							i(12609),	-- Polychromatic Visionwrap
							i(12606), 	-- Crystallized Girdle
							i(12589),	-- Dustfeather Sash
						},
					}),
					n(10509, { 	-- Jed Runewatcher
						["description"] = "This is a rare that is not always present.",
						["groups"] = {
							i(12605),	-- Serpentine Skuller
							i(12604),	-- Starfire Tiara
							i(12930),	-- Briarwood Reed
						},
					}),
					n(10899, {	-- Goraluk Anvilcrack
						{
							["itemID"] = 18779,	-- Bottom Half of Advanced Armorsmithing: Volume 1
							["questID"] = 7649,	-- Enchanted Thorium Platemail: Volume I
							["requireSkill"] = 164,	-- Blacksmithing
							["groups"] = {
								-- TODO: Move this
								{
									["itemID"] = 18769,	-- Enchanted Thorium Platemail
									["questID"] = 7649,	-- Enchanted Thorium Platemail: Volume I
									["groups"] = {
										i(12727),	-- Plans: Enchanted Thorium Breastplate
									},
								},
							},
						},
						i(12834),	-- Plans: Arcanite Champion
						i(12728),	-- Plans: Invulnerable Mail
						i(12837),	-- Plans: Masterwork Stormhammer
						i(18048), 	-- Mastersmith's Hammer
						i(13502), 	-- Handcrafted Mastersmith Girdle
						i(13498), 	-- Handcrafted Mastersmith Leggings
						i(18047), 	-- Flame Walkers
					}),
					n(10339, { 	-- Gyth <Rend Blackhand's Mount>
						i(13522),	-- Recipe: Flask of Chromatic Resistance
						i(12871),	-- Chromatic Carapace
						i(12953),	-- Dragoneye Coif
						i(22225), 	-- Dragonskin Cowl
						i(12952),	-- Gyth's Skull
						i(12960),	-- Tribal War Feathers
						i(16669), 	-- Pauldrons of Elements
					}),
					n(10429, { 	-- Warchief Rend Blackhand
						{
							["itemID"] = 12630,	-- Head of Rend Blackhand
							["questID"] = 4974,	-- For The Horde!
							["races"] = HORDE_ONLY,
						},
						i(12583),	-- Blackhand Doomsaw
						i(12940),	-- Dal'Rend's Sacred Charge
						i(12939), 	-- Dal'Rend's Tribal Guardian
						i(12590),	-- Felstriker
						i(12587),	-- Eye of Rend
						i(12588),	-- Bonespike Shoulder
						i(16733),	-- Spaulders of Valor
						i(12936), 	-- Battleborn Armbraces
						i(18104),	-- Feralsurge Girdle
						i(12935),	-- Warmaster Legguards
						i(18102),	-- Dragonrider Boots
						i(22247),	-- Faith Healer's Boots
						i(18103),	-- Band of Rumination
					}),
					n(10430, { 	-- The Beast
						i(24101),	-- Book of Ferocious Bite V
						i(12731, {	-- Pristine Hide of the Beast
							["description"] = "This can be skinned from The Beast with 315 Skinning skill. This can only be accomplished with the Zulian Slicer or Finkle's Skinner.",
						}),
						i(12709),	-- Finkle's Skinner
						i(12969), 	-- Seeping Willow
						i(12967),	-- Bloodmoon Cloak
						i(12968),	-- Frostweaver Cape
						i(16729),	-- Lightforge Spaulders
						i(12966),	-- Blackmist Armguards
						i(12963),	-- Blademaster Leggings
						i(12965),	-- Spiritshroud Leggings
						i(12964),	-- Tristam Legguards
						i(22311),	-- Ironweave Boots
						i(19227),	-- Ace of Beasts
					}),
					n(16042, { 	-- Lord Valthalak
						["description"] = "This boss could be summoned using the Brazier of Beckoning.",
						["cost"] = {
							{ "i", 22056, 1 },	-- Brazier of Beckoning
						},
						["u"] = 3,	-- Not available yet.
						["groups"] = {
							i(22336), 	-- Draconian Aegis of the Legion
							i(22335), 	-- Lord Valthalak's Staff of Command
							i(22302),	-- Ironweave Cowl
							i(22340),	-- Pendant of Celerity
							i(22337),	-- Shroud of Domination
							i(22343),	-- Handguards of Savagery
							i(22342),	-- Leggings of Torment
							i(22339),	-- Rune Band of Wizardry
						},
					}),
					n(10363, { 	-- General Drakkisath
						{
							["itemID"] = 16663,	-- Blood of the Black Dragon Champion
							["allianceQuestID"] = 6502,	-- Drakefire Amulet
							["hordeQuestID"] = 6602,	-- Blood of the Black Dragon Champion
						},
						i(15730),	-- Pattern: Red Dragonscale Breastplate
						i(13519),	-- Recipe: Flask of the Titans
						i(12592),	-- Blackblade of Shahram
						i(12602),	-- Draconian Deflector
						i(22253),	-- Tome of the Lost
						i(22267),	-- Spellweaver's Turban
						i(13141),	-- Tooth of Gnarr
						i(16674),	-- Beaststalker's Tunic
						i(16730),	-- Breastplate of Valor
						i(16690),	-- Devout Robe
						i(16700),	-- Dreadmist Robe
						i(16726),	-- Lightforge Breastplate
						i(16688),	-- Magister's Robe
						i(16721),	-- Shadowcraft Tunic
						i(16666),	-- Vest of Elements
						i(16706),	-- Wildheart Vest
						i(22269),	-- Shadow Prowler's Cloak
						i(13142),	-- Brigam Girdle
						i(13098),	-- Painweaver Band
						i(22268),	-- Draconic Infused Emblem
					}),
				},
			}),
		},
	}),
};