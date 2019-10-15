-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = {
	map(DIRE_MAUL, { 	-- Dire Maul
		["lvl"] = 44,
		["groups"] = {
			n(-17, {	-- Quests
				q(7499, {	-- Codex of Defense
					["classes"] = { 1 },	-- Warrior
					["cost"] = {
						{ "i", 18357, 1 },	-- Codex of Defense
					},
					["groups"] = {
						i(18466),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(8949, {	-- Falrin's Vendetta
					["groups"] = {
						i(22150),	-- Beads of Ogre Might
						i(22149),	-- Beads of Ogre Mojo
					},
				}),
				q(5525, {	-- Free Knot!
					["qg"] = 14338,	-- Knott
					["groups"] = {
						i(18250),	-- Gordok Shackle Key
					},
				}),
				q(7502, {	-- Harnessing Shadows
					["classes"] = { 9 },	-- Warlock
					["cost"] = {
						{ "i", 18360, 1 },	-- Harnessing Shadows
					},
					["groups"] = {
						i(18467),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7504, {	-- Holy Bologna: What the Light Won't Tell You
					["classes"] = { 5 },	-- Priest
					["groups"] = {
						i(18469),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7485, {	-- Libram of Protection
					["groups"] = {
						i(18331),	-- Arcanum of Protection
					},
				}),
				q(7500, {	-- The Arcanist's Cookbook
					["classes"] = { 8 },	-- Mage
					["cost"] = {
						{ "i", 18358, 1 },	-- The Arcanist's Cookbook
					},
					["groups"] = {
						i(18468),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7506, {	-- The Emerald Dream...
					["classes"] = { 11 },	-- Druid
					["groups"] = {
						i(18470),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(27119, {	-- The Gordok Ogre Suit
					["qg"] = 14338,	-- Knot Thimblejack
					["groups"] = {
						i(18258),	-- Gordok Ogre Suit
					},
				}),
				q(27120, {	-- The Gordok Ogre Suit
					["qg"] = 14338,	-- Knot Thimblejack
					["repeatable"] = true,
					["groups"] = {
						recipe(22813),	-- Gordok Ogre Suit
						i(18258),	-- Gordok Ogre Suit
					},
				}),
				q(27114, {	-- The Gordok Taste Test
					["description"] = "Kill |cFFFFD700King Gordok|r to become king, and then return to the courtyard.",
					["qg"] = 14322,	-- Stomper Kreeg
				}),
				q(7503, {	-- The Greatest Race of Hunters
					["classes"] = { 3 },	-- Hunter
					["groups"] = {
						i(18473),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7501, {	-- The Light and How To Swing It
					["classes"] = { 2 },	-- Paladin
					["cost"] = {
						{ "i", 18359, 1 },	-- The Light and How to Swing It
					},
					["groups"] = {
						i(18472),	-- Royal Seal of Eldre'Thalas
					},
				}),
				{
					["questID"] = 7703,	-- Unfinished Gordok Business
					["qg"] = 14325,	-- Captain Kromcrush
					["description"] = "Kill |cFFFFD700King Gordok|r, and then return to the courtyard.",
					["altQuests"] = {
						1318,	-- Unfinished Gordok Business
					},
					["cost"] = {
						{ "i", 18336, 1 },	-- Gauntlet of Gordok Might
					},
					["lvl"] = 60,
					["groups"] = {
						i(18367),	-- Gordok's Gauntlets
						i(18368),	-- Gordok's Gloves
						i(18366),	-- Gordok's Handguards
						i(18369),	-- Gordok's Handwraps
					},
				},
				
				q(7651, {	-- Enchanted Thorium Platemail: Volume III
					["itemID"] = 18771, -- revisit. Maybe swap this with quest?
					["requireSkill"] = 164,	-- Blacksmithing
					["groups"] = {
						i(12725),	-- Plans: Enchanted Thorium Helm
					},
				}),
				q(7488, {	-- Lethtendris's Web
					["qg"] = 7877,	-- Latronicus Moonspear
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(18491),	-- Lorespinner
					},
				}),
				q(7489, {	-- Lethtendris's Web
					["qg"] = 7776,	-- Talo Thornhoof
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(18491),	-- Lorespinner
					},
				}),
				q(7483, {	-- Libram of Rapidity
					["qg"] = 14368,	-- Lorekeeper Lydros
					["groups"] = {
						i(18329),	-- Arcanum of Rapidity
					},
				}),
				q(7441, {	-- Pusillin and the Elder Azj'Tordin
					["provider"] = { "n", 14355 },	-- Azj'Tordin
					["groups"] = {
						i(18410),	-- Sprinter's Sword
						i(18411),	-- Spry Boots
					},
				}),
				q(7650, {	-- Enchanted Thorium Platemail: Volume II
					["requireSkill"] = 164,	-- Blacksmithing
					["groups"] = {
						i(12726),	-- Plans: Enchanted Thorium Leggings
					},
				}),
				q(7505, {	-- Frost Shock and You
					["classes"] = { 7 },	-- Shaman
					["groups"] = {
						i(18471),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7498, {	-- Garona: A Study on Stealth and Treachery
					["classes"] = { 4 },	-- Rogue
					["cost"] = {
						{ "i", 18356, 1 },	-- Garona: A Study on Stealth and Treachery
					},
					["lvl"] = 54,
					["groups"] = {
						i(18465),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7484, {	-- Libram of Focus
					["groups"] = {
						i(18330),	-- Arcanum of Focus
					},
				}),
				q(27112,  { -- The Cursed Remains
					["provider"] = { "n", 44991 },
				}),
				q(7461, {	-- The Madness Within
					["u"] = 40,
					["provider"] = { "n", 14358 },	-- Shen'dralar Ancient
				}),
				q(27110, {	-- The Madness Within
					["provider"] = { "n", 14358 },	-- Shen'dralar Ancient
				}),
				q(27113, {	-- The Shen'dralar Ancient
					["provider"] = { "n", 44991 },
				}),
				q(7462, { 	-- The Treasure of the Shen'dralar
					["provider"] = { "n", 14358 },	-- Shen'dralar Ancient
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 7461,	-- The Madness Within
					["groups"] = {
						i(18421),	-- Backwood Helm
						i(18420),	-- Bonecrusher
						i(18424),	-- Sedge Boots
					},
				}),
				q(7877, { 	-- The Treasure of the Shen'dralar
					["provider"] = { "n", 14358 },	-- Shen'dralar Ancient
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 7461,	-- The Madness Within
					["groups"] = {
						i(18421),	-- Backwood Helm
						i(18420),	-- Bonecrusher
						i(18424),	-- Sedge Boots
					},
				}),
				q(27111, {	-- The Treasure of Shen'dralar
					["provider"] = { "n", 14358 },	-- Shen'dralar Ancient
					["sourceQuest"] = 27110,	-- The Madness Within
					["groups"] = {
						i(65949),	-- Dire Maul
						i(65973),	-- Fras Siabi's Cigar Cutter
						i(65924),	-- Shen'dralar Trident
						i(65994),	-- Staff of Athen'a
					},
				}),
				q(27109, {	-- The Warped Defender
					["provider"] = { "n", 44999 },
				}),
				-- Part of the Dungeon 2 Set Questline
				q(8949, {	-- Falrin's Vendetta
					["provider"] = { "n", 16032 },	-- Falrin Treeshaper
					["sourceQuest"] = 8948,	-- Anthion's Old Friend
					["lvl"] = 58,
					["groups"] = {
						i(22150),	-- Beads of Ogre Might
						i(22149),	-- Beads of Ogre Mojo
					},
				}),
				q(8950, {	-- The Instigator's Enchantment
					["provider"] = { "n", 16032 },	-- Falrin Treeshaper
					["sourceQuest"] = 8949,	-- Falrin's Vendetta
					["lvl"] = 58,
				}),
				q(9015, {	-- The Challenge
					["provider"] = { "n", 16032 },	-- Falrin Treeshaper
					["sourceQuest"] = 8950,	-- The Instigator's Enchantment
					["lvl"] = 58,
				}),
			}),
			n(-1, {	-- Common Boss Drop
				["description"] = "The following items can drop from any boss in Dire Maul.",
				["groups"] = {
					{
						["itemID"] = 18357,	-- Codex of Defense
						["questID"] = 7499,	-- Codex of Defense
						["classes"] = { 1 },	-- Warrior
					},
					{
						["itemID"] = 18360,	-- Harnessing Shadows
						["questID"] = 7502,	-- Harnessing Shadows
						["classes"] = { 9 },	-- Warlock
					},
					{
						["itemID"] = 18401,	-- Foror's Compendium of Dragon Slaying
						["questID"] = 7507,	-- Foror's Compendium
						["classes"] = { 1, 2 },	-- Warrior / Paladin
					},
					{
						["itemID"] = 18363,	-- Frost Shock and You
						["questID"] = 7505,	-- Frost Shock and You
						["classes"] = { 7 },	-- Shaman
					},
					{
						["itemID"] = 18356,	-- Garona: A Study on Stealth and Treachery
						["questID"] = 7498,	-- Garona: A Study on Stealth and Treachery
						["classes"] = { 4 },	-- Rogue
					},
					{
						["itemID"] = 18362,	-- Holy Bologna: What the Light Won't Tell You
						["questID"] = 7504,	-- Holy Bologna: What the Light Won't Tell You
						["classes"] = { 5 },	-- Priest
					},
					{
						["itemID"] = 18358,	-- The Arcanist's Cookbook
						["questID"] = 7500,	-- The Arcanist's Cookbook
						["classes"] = { 8 },	-- Mage
					},
					{
						["itemID"] = 18364,	-- The Emerald Dream
						["questID"] = 7506,	-- The Emerald Dream...
						["classes"] = { 11 },	-- 
					},
					{
						["itemID"] = 18361,	-- The Greatest Race of Hunters
						["questID"] = 7503,	-- The Greatest Race of Hunters
						["classes"] = { 3 },	-- Hunter
					},
					{
						["itemID"] = 18359,	-- The Light and How to Swing It
						["questID"] = 7501,	-- The Light and How to Swing It
						["classes"] = { 2 },	-- Paladin
					},
				},
			}),
			n(0, {	-- Zone Drop
				i(18365, {	-- A Thoroughly Read Copy of "Nat Pagle's Guide to Extreme Anglin'."
					["description"] = "This item is utterly worthless, however there was a rumor that this item could be used to obtain the original Ashbringer via fishing.\n\nThis can be found in various places throughout all the wings of Dire Maul.\n\nDire Maul North: Southwest corner of Guard Fengus's courtyard or next to King Gordok and Cho'Rush the Observer.\n\nDire Maul East: Eastern wall of the garden, the ledge above the garden, next to Lethtendris, or next to Alzzin the Wildshaper.\n\nDire Maul West: By the southern generator in Immol'thar's room.",
				}),
				i(17682),	-- Book: Gift of the Wild Rank 1
				i(17683),	-- Book: Gift of the Wild Rank 2
				i(12662),	-- Demonic Rune
				i(18640),	-- Happy Fun Rock
				i(18333),	-- Libram of Focus
				i(18334),	-- Libram of Protection
				i(18332),	-- Libram of Rapidity
			}),
			n(-12, {	-- Warpwood Quarter [East - Demon]
				["description"] = "This part of the instance can be accessed from the eastern-most portal. (right side)",
				["groups"] = {
					n(0, { 	-- Zone Drop
						i(18296, {	-- Marksman Bands
							["crs"] = {
								11454,	-- Wildspawn Betrayer
								11455,	-- Wildspawn Felsworn
								11457,	-- Wildspawn Hellcaller
								11452,	-- Wildspawn Rogue
								11451,	-- Wildspawn Satyr
								11456,	-- Wildspawn Shadowstalker
							},
						}),
						i(18295, {	-- Phasing Boots
							["crs"] = {
								13196,	-- Phase Lasher
							},
						}),
						i(18298, {	-- Unbridled Leggings
							["crs"] = {
								11454,	-- Wildspawn Betrayer
								11455,	-- Wildspawn Felsworn
								11457,	-- Wildspawn Hellcaller
								11452,	-- Wildspawn Rogue
								11451,	-- Wildspawn Satyr
								11456,	-- Wildspawn Shadowstalker
							},
						}),
					}),
					n(14354, {	-- Pusillin
						["description"] = "Talk to him and then chase him. Eventually he will go up a ramp and become killable.",
						["groups"] = {
							{
								["itemID"] = 18249,	-- Crescent Key
								["description"] = "Used to unlock the doors to Dire Maul North and West.",
							},
							{
								["itemID"] = 18261,	-- Book of Incantations
								["questID"] = 7441,	-- Pusillin and the Elder Azj'Tordin
							},
							i(18267),	-- Recipe: Runn Tum Tuber Surprise
						},
					}),
					n(14349, {	-- Pimgib
						i(18354, {	-- Pimgib's Collar
							["classes"] = { 9 },	-- Warlock
						}),
					}),
					n(14327, {	-- Lethtendris
						{
							["itemID"] = 18426,	-- Lethtendris's Web
							["allianceQuestID"] = 7488,	-- Lethtendris's Web
							["hordeQuestID"] = 7489,	-- Lethtendris's Web
						},
						i(18311),	-- Quel'dorei Channeling Rod
						i(18301),	-- Lethtendris' Wand
						i(18325),	-- Felhide Cap
						i(18302),	-- Band of Vigor
					}),
					n(13280, {	-- Hydrospawn
						{
							["itemID"] = 18299,	-- Hydrospawn Essence
							["questID"] = 7463,	-- Arcane Refreshment
						},
						i(18324),	-- Waveslicer
						i(18317),	-- Tempest Talisman
						i(18305),	-- Breakwater Legguards
						i(18307),	-- Riptide Shoes
						i(18322),	-- Waterspout Boots
						i(19268),	-- Ace of Elementals
					}),
					n(11490, {	-- Zevrim Thornhoof
						i(18323),	-- Satyr's Bow
						i(18308),	-- Clever Hat
						i(18319),	-- Fervent Helm
						i(18313),	-- Helm of Awareness
						i(18306),	-- Gloves of Shadowy Mist
					}),
					n(16097, {	-- Isalien Summonable
						["description"] = "|cff66ccffBrazier of Invocation|r |cff3399ff(Dungeon Set 2 questline)|r |cff66ccffis required to summon this boss.|r",
						["cost"] = {
							{ "i", 22057, 1 },	-- Brazier of Invocation
						},
						["u"] = 3,	-- Dungeon Set 2
						["groups"] = {
							i(22315), 	-- Hammer of Revitalization
							i(22314), 	-- Huntsman's Harpoon
							i(22304), 	-- Ironweave Gloves
							i(22472), 	-- Boots of Ferocity
							{
								["itemID"] = 22401,	-- Libram of Hope
								["classes"] = { 2 },	-- Paladin
							},
							{
								["itemID"] = 22345,	-- Totem of Rebirth
								["classes"] = { 7 },	-- Shaman
							},
						},
					}),
					n(11491, {	-- Old Ironbark
						["description"] = "Talk to him for him to break down the door.",
					}),
					n(11492, {	-- Alzzin the Wildshaper
						i(18321),	-- Energetic Rod
						i(18310),	-- Fiendish Machete
						i(18328),	-- Shadewood Cloak
						i(18312),	-- Energized Chestplate
						i(18309),	-- Gloves of Restoration
						i(18326),	-- Razor Gauntlets
						i(18327),	-- Whipvine Cord
						i(18318),	-- Merciful Greaves
						i(18314),	-- Ring of Demonic Guile
						i(18315),	-- Ring of Demonic Potency
					}),
				},
			}),
			n(-13, {	-- Gordok Commons [North - Ogres] [Straight]
				["description"] = "This part of the instance can be accessed after clearing West or entering from the northern-most portal.",
				["groups"] = {
					n(0, { 	-- Zone Drop
						{
							["itemID"] = 18250,	-- Gordok Shackle Key
							["questID"] = 5525,	-- Free Knot!
							["description"] = "This is used to free Knot so that you can do a Tribute Run. Drops from any Gordok Ogre in Dire Maul North.",
						},
					}),
					n(14326, {	-- Guard Mol'dar
						i(18498),	-- Hedgecutter
						i(18462),	-- Jagged Bone Fist
						i(18463),	-- Ogre Pocket Knife
						i(18460),	-- Unsophisticated Hand Cannon
						i(18496),	-- Heliotrope Cloak
						i(18493),	-- Bulky Iron Spaulders
						i(18494),	-- Denwatcher's Shoulders
						i(18450),	-- Robe of Combustion
						i(18451),	-- Hyena Hide Belt
						i(18459),	-- Gallant's Wristguards
						i(18458),	-- Modest Wristguards
						i(18497),	-- Sublime Wristguards
						i(18464),	-- Gordok Nose Ring
					}),
					n(14322, {	-- Stomper Kreeg
						i(18425),	-- Kreeg's Mug
					}),
					n(14321, {	-- Guard Fengus
						i(18462),	-- Jagged Bone Fist
						i(18463),	-- Ogre Pocket Knife
						i(18460),	-- Unsophisticated Hand Cannon
						i(18450),	-- Robe of Combustion
						i(18451),	-- Hyena Hide Belt
						i(18459),	-- Gallant's Wristguards
						i(18458),	-- Modest Wristguards
						i(18464),	-- Gordok Nose Ring
					}),
					o(179501, {	-- Knot Thimblejack's Cache
						["sourceQuest"] = 5525,	-- Free Knot!
						["groups"] = {
							i(18414),	-- Pattern: Belt of the Archmage
							i(18517),	-- Pattern: Chromatic Cloak
							i(18418),	-- Pattern: Cloak of Warding
							i(18415),	-- Pattern: Felcloth Gloves
							i(18514),	-- Pattern: Girdle of Insight
							i(18518),	-- Pattern: Hide of the Wild
							i(18416),	-- Pattern: Inferno Gloves
							i(18515),	-- Pattern: Mongoose Boots
							i(18417),	-- Pattern: Mooncloth Gloves
							i(18519),	-- Pattern: Shifting Cloak
							i(18516),	-- Pattern: Swift Flight Bracers
							i(18240),	-- Ogre Tannin
						},
					}),
					o(179499, {	-- Ogre Tannin Basket
						["description"] = "Beware! Looting the Ogre Tannin will cause a Gordok Bushwacker to spawn. Quote is homage to the movie The Silence of the Lambs.\n\n'NO! It puts the tannin in the basket, or it gets the mallet again!'",
						["qg"] = 14351,	-- Gordok Bushwacker
						["groups"] = {
							i(18240),	-- Ogre Tannin
						},
					}),
					n(14323, {	-- Guard Slip'kik
						i(18498),	-- Hedgecutter
						i(18462),	-- Jagged Bone Fist
						i(18463),	-- Ogre Pocket Knife
						i(18460),	-- Unsophisticated Hand Cannon
						i(18496),	-- Heliotrope Cloak
						i(18493),	-- Bulky Iron Spaulders
						i(18494),	-- Denwatcher's Shoulders
						i(18450),	-- Robe of Combustion
						i(18451),	-- Hyena Hide Belt
						i(18459),	-- Gallant's Wristguards
						i(18458),	-- Modest Wristguards
						i(18497),	-- Sublime Wristguards
						i(18464),	-- Gordok Nose Ring
					}),
					n(14325, {	-- Captain Kromcrush
						i(18502),	-- Monstrous Glaive
						i(18503),	-- Kromcrush's Chestplate
						i(18505),	-- Mugger's Belt
						i(18507),	-- Boots of the Full Moon
					}),
					n(14324, {	-- Cho'Rush the Observer
						i(18484),	-- Cho'Rush's Blade
						i(18483),	-- Mana Channeling Wand
						i(18485),	-- Observer's Shield
						i(18490),	-- Insightful Hood
					}),
					n(11501, {	-- King Gordok
						i(18520),	-- Barbarous Blade
						i(18523),	-- Brightly Glowing Stone
						i(18526),	-- Crown of the Ogre King
						i(18525),	-- Bracers of Prosperity
						i(18527),	-- Harmonious Gauntlets
						i(18524),	-- Leggings of Destruction
						i(18521),	-- Grimy Metal Boots
						i(18522),	-- Band of the Ogre King
						i(19258),	-- Ace of Warlords
					}),
					n(14353, {	-- Mizzle the Crafty
						["description"] = "Speak with Mizzle after killing |cFFFFD700King Gordok|r to spawn the Tribute Chest.",
						["groups"] = {
							o(179564, {	-- Gordok Tribute Chest
								["description"] =  "A full Tribute Run (5 items) requires leaving all bosses alive except King Gordok, and also requires activating the Frost Trap & fooling Kromcrush with the Ogre Suit, granted by the Goblin near the trap.",
								["groups"] = {
									i(18655),	-- Schematic: Major Recombobulator
									i(18499),	-- Barrier Shield
									i(18479),	-- Carrion Scorpid Helm
									i(18537),	-- Counterattack Lodestone
									i(18528),	-- Cyclone Spaulders
									i(18529),	-- Elemental Plate Girdle
									i(18533),	-- Gordok Bracers of Power
									i(18478),	-- Hyena Hide Jerkin
									i(18532),	-- Mindsurge Robe
									i(18476),	-- Mud Stained Boots
									i(18475),	-- Oddly Magical Belt
									i(18530),	-- Ogre Forged Hauberk
									i(18482),	-- Ogre Toothpick Shooter
									i(18495),	-- Redoubt Cloak
									i(18534),	-- Rod of the Ogre Magi
									i(18480),	-- Scarab Plate Helm
									i(18477),	-- Shaggy Leggings
									i(18481),	-- Skullcracking Mace
									i(18500),	-- Tarnished Elven Ring
									i(18538),	-- Treant's Bane
									i(18531),	-- Unyielding Maul
								},
							}),
						},
					}),
				},
			}),
			n(-14, {	-- Capital Gardens [West - Elves] [Left Side]
				["description"] = "This part of the instance can be accessed from the western-most portal. (left side)",
				["groups"] = {
					n(-2, {	-- Vendors
						n(14371, {	-- Shen'dralar Provisioner
							i(18487),	-- Pattern: Mooncloth Robe
						}),
					}),
					n(0, {	-- Zone Drop
						i(18289, {	-- Barbed Thorn Necklace
							["crs"] = {
								11461,	-- Warpwood Guardian
								11462,	-- Warpwood Treant
								13021,	-- Warpwood Crusher
								11464,	-- Warpwood Tangler
								11465,	-- Warpwood Stomper
							},
						}),
						i(18339, {	-- Eidolon Cloak
							["crs"] = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}),
						i(18340, {	-- Eidolon Talisman
							["crs"] = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}),
						i(18337, {	-- Orphic Bracers
							["crs"] = {
								11480,	-- Arcane Aberration
								14399,	-- Arcane Torrent
								11483,	-- Mana Remnant
								11484,	-- Residual Monstrosity
							},
						}),
						i(18343, {	-- Petrified Band
							["crs"] = {
								11459,	-- Ironbark Protector
								14303,	-- Petrified Guardian
								11458,	-- Petrified Treant
							},
						}),
						i(18344, {	-- Stonebark Gauntlets
							["crs"] = {
								11459,	-- Ironbark Protector
								14303,	-- Petrified Guardian
								11458,	-- Petrified Treant
							},
						}),
						i(18338, {	-- Wand of Arcane Potency
							["crs"] = {
								11480,	-- Arcane Aberration
								14399,	-- Arcane Torrent
								11483,	-- Mana Remnant
								11484,	-- Residual Monstrosity
							},
						}),
					}),
					n(11487, {	-- Magister Kalendris
						i(22309),	-- Pattern: Big Bag of Enchantment
						i(18397),	-- Elder Magus Pendant
						i(18374),	-- Flamescarred Shoulders
						i(18350),	-- Amplifying Cloak
						i(18351),	-- Magically Sealed Bracers
						i(18371),	-- Mindtap Talisman
					}),
					n(11467, {	-- Tsu'zee
						["description"] = "This is a rare that is not always present.",
						["groups"] = {
							i(18387),	-- Brightspark Gloves
							i(18346),	-- Threadbane Trousers
							i(18345),	-- Murmuring Ring
						},
					}),
					n(11488, {	-- Illyanna Ravenoak
						i(18347),	-- Well Balanced Axe
						i(18383),	-- Force Imbued Gauntlets
						i(18349),	-- Gauntlets of Accuracy
						i(18386),	-- Padre's Trousers
					}),
					n(11489, {	-- Tendris Warpwood
						i(18353),	-- Stoneflower Staff
						i(18352),	-- Petrified Bark Shield
						i(18393),	-- Warpwood Bindings
						i(18390),	-- Tanglemoss Leggings
					}),
					n(11496, {	-- Immol'thar
						i(18372),	-- Blade of the New Moon
						i(18381),	-- Evil Eye Pendant
						i(18384),	-- Bile-Etched Spaulders
						i(18389),	-- Cloak of the Cosmos
						i(18385),	-- Robe of Everlasting Night
						i(18394),	-- Demon Howl Wristguards
						i(18377),	-- Quickdraw Gloves
						i(18391),	-- Eyestalk Cord
						i(18379),	-- Odious Greaves
						i(18370),	-- Vigilance Charm
					}),
					n(14506, {	-- Lord Hel'nurath
						["description"] = "|cff3399ffSTEP 1:|r|cff66ccff Find a Warlock that is on or has completed Dreadsteed of Xoroth.|r \n|cff3399ffSTEP 2:|r|cff66ccff Warlock buys Xorothian Glyphs,  Black Lodestone & J'eevee's Jar from Gorzeeki Wildeyes. (Burning Steppes - 12.4, 31.6)|r \n|cff3399ffSTEP 3:|r|cff66ccff Kill Immol'thar.|r \n|cff3399ffSTEP 4:|r|cff66ccff Warlock uses J'eevee's Jar while standing on platform summoning Wheel of the Black March, Doomsday Candle, & Bell of Dethmoora.|r \n|cff3399ffSTEP 5:|r|cff66ccff Kill stuff & use Black Lodestone to keep 3 artifacts active, this requires soul shards to do.|r \n|cff3399ffSTEP 6:|r|cff66ccff Once mobs stop spawning, use Xorothian Glyphs to summon the dreadsteed.|r \n|cff3399ffSTEP 7:|r|cff66ccff Kill Lord Hel'nurath & collect loot.|r",
						["sourceQuest"] = 7631,	-- Dreadsteed of Xoroth
						["cost"] = {
							{ "i", 18670, 1 },	-- Xorothian Glyphs
							{ "i", 18629, 1 },	-- Black Lodestone
							{ "i", 18663, 1 },	-- J'eevee's Jar
							
						},
						["groups"] = {
							i(18757), 	-- Diabolic Mantle
							i(18755), 	-- Xorothian Firestick
							i(18756), 	-- Dreadguard Protector
							i(18754), 	-- Fel Hardened Bracers
						},
					}),
					n(11486, {	-- Prince Tortheldrin
						{
							["itemID"] = 18336,	-- Gauntlet of Gordok Might
							["questID"] = 7703,	-- Unfinished Gordok Business
							["description"] = "In the corner of the room that the Prince is in, next to the bookshelves, there is a small chest on the ground that contains the gauntlet. You must kill the Prince in order for the chest to be interactable.",
						},
						i(18392),	-- Distracting Dagger
						i(18396),	-- Mind Carver
						i(18376),	-- Timeworn Mace
						i(18388),	-- Stoneshatter
						i(18382),	-- Fluctuating Cloak
						i(18373),	-- Chestplate of Tranquility
						i(18375),	-- Bracers of the Eclipse
						i(18380),	-- Eldritch Reinforced Legplates
						i(18378),	-- Silvermoon Leggings
						i(18395),	-- Emerald Flame Ring
					}),
					n(14690, {	-- Revanchion
						["description"] = "This NPC was only available during the pre-WotLK Scourge Invasion.",
						["u"] = 3,
						["groups"] = {
							i(23127),	-- Cloak of Revanchion
							i(23129),	-- Bracers of Mending
							i(23128),	-- The Shadow's Grasp
						},
					}),
				},
			}),
		},
	}),
};