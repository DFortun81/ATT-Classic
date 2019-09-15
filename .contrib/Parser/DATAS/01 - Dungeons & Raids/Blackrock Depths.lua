-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = {
	map(BLACKROCK_DEPTHS, { 	-- Blackrock Depths
		["description"] = "Once the capital city of the Dark Iron dwarves, this volcanic labyrinth now serves as the seat of power for Ragnaros the Firelord. Ragnaros has uncovered the secret to creating life from stone and plans to build an army of unstoppable golems to aid him in conquering the whole of Blackrock Mountain. Obsessed with defeating Nefarian and his draconic minions, Ragnaros will go to any extreme to achieve final victory.",
		["lvl"] = 48,
		["groups"] = {
			n(-17, {	-- Quests
				q(4024, {	-- A Taste of Flame
					["groups"] = {
						i(12066),	-- Shaleskin Cape
						i(12083),	-- Valconian Sash
						i(12082),	-- Wyrmhide Spaulders
					},
				}),
				q(4242, {	-- Abandoned Hope
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12018),	-- Conservator Helm
						i(12021),	-- Shieldplate Sabatons
						i(12041),	-- Windshear Leggings
					},
				}),
				q(3907, {	-- Disharmony of Fire
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12112),	-- Crypt Demon Bracers
						i(12114),	-- Nightfall Gloves
						i(12115),	-- Stalwart Clutch
						i(12113),	-- Sunborne Cape
					},
				}),
				q(4126, {	-- Hurley Blackbreath
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12000),	-- Limb Cleaver
						i(11964),	-- Swiftstrike Cudgel
					},
				}),
				q(4263, {	-- Incendius!
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12112),	-- Crypt Demon Bracers
						i(12114),	-- Nightfall Gloves
						i(12115),	-- Stalwart Clutch
						i(12113),	-- Sunborne Cape
					},
				}),
				q(6646, {	-- Favor Amongst the Brotherhood, Blood of the Mountain
					["provider"] = { "n", 12944 },	-- Lokhtos Darkbargainer
					["repeatable"] = true,
				}),
				q(6645, {	-- Favor Amongst the Brotherhood, Core Leather
					["provider"] = { "n", 12944 },	-- Lokhtos Darkbargainer
					["repeatable"] = true,
				}),
				q(6642, {	-- Favor Amongst the Brotherhood, Dark Iron Ore
					["provider"] = { "n", 12944 },	-- Lokhtos Darkbargainer
					["repeatable"] = true,
				}),
				q(6643, {	-- Favor Amongst the Brotherhood, Fiery Core
					["provider"] = { "n", 12944 },	-- Lokhtos Darkbargainer
					["repeatable"] = true,
				}),
				q(6644, {	-- Favor Amongst the Brotherhood, Lava Core
					["provider"] = { "n", 12944 },	-- Lokhtos Darkbargainer
					["repeatable"] = true,
				}),
				q(4322, {	-- Jail Break!
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12061),	-- Blade of Reckoning
						i(12062),	-- Skilled Fighting Blade
						i(12065),	-- Ward of the Elements
					},
				}),
				q(4134, {	-- Lost Thunderbrew Recipe
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12000),	-- Limb Cleaver
						i(11964),	-- Swiftstrike Cudgel
					},
				}),
				q(4132, {	-- Operation: Death to Angerforge
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12059),	-- Conqueror's Medallion
					},
				}),
				q(4295, {	-- Rocknot's Ale
					["provider"] = { "n", 9503 },	-- Private Rocknot
					["repeatable"] = true,
				}),
				q(4136, {	-- Ribbly Screwspigot
					["groups"] = {
						i(11963),	-- Penance Spaulders
						i(11865),	-- Rancor Boots
						i(12049),	-- Splintsteel Armor
					},
				}),
				q(7201, {	-- The Last Element
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12038),	-- Lagrave's Seal
					},
				}),
				q(4201, {	-- The Love Potion
					["groups"] = {
						i(11962),	-- Manacle Cuffs
						i(11866),	-- Nagmara's Whipping Belt
					},
				}),
				q(4004, {	-- The Princess Saved?
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12545),	-- Eye of Orgrimmar
						i(12544),	-- Thrall's Resolve
					},
				}),
				q(4363, {	-- The Princess's Surprise
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12548),	-- Magni's Will
						i(12543),	-- Songstone of Ironforge
					},
				}),
				q(4063, {	-- The Rise of the Machines
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12109),	-- Azure Moon Amice
						i(12108),	-- Basaltscale Armor
						i(12111),	-- Lavaplate Gauntlets
						i(12110),	-- Raincaster Drape
					},
				}),
			}),
			n(0, {	-- Zone Drop
				i(12546),	-- Aristocratic Cuffs
				i(12555),	-- Battlechaser's Greaves
				i(12552),	-- Blisterbane Wrap
				i(17682),	-- Book: Gift of the Wild Rank 1
				i(17683, {	-- Book: Gift of the Wild Rank 2
					["description"] = "This can only drop from Elites.",
				}),
				i(12549),	-- Braincage
				i(12535),	-- Doomforged Straightedge
				i(12542),	-- Funeral Pyre Vestment
				i(12547),	-- Mar Alom's Grip
				i(15781, {	-- Pattern: Black Dragonscale Leggings
					["crs"] = {
						8903,	-- Anvilrage Captain
					},
				}),
				i(15770, {	-- Pattern: Black Dragonscale Shoulders
					["crs"] = {
						8898,	-- Anvilrage Marshal
					},
				}),
				i(11614, { 	-- Plans: Dark Iron Mail
					["description"] = "|cFFFFD700Plans: Dark Iron Mail|r can spawn in one of four spots.\n\n|cFFFFFFFFLocation 1:|r Located in the |cFFFFD700West Garrison|r. After going up the ramp from where |cFFFFD700General Angerforge|r is located on your left are some tables.  It will be located in the back corner where the Fireguard Destroyer is and two tables in front of it.  This table is close to the table that has vases on it that is near the keg.\n\n|cFFFFFFFFLocation 2:|r In |cFFFFD700Golem Lord Argelmach's|r room.  When you walk into the room it will be in the back left corner where in between barrels.  There will be two barrels to the left and one barrel to the right of it.\n\n|cFFFFFFFFLocation 3:|r In |cFFFFD700The Manufactory|r, on a bench.\n\n|cFFFFFFFFLocation 4:|r After leaving the room with |cFFFFD700Ambassador Flamelash|r you will cross a bridge that leads into the |cFFFFD700Mold Foundry|r.  Once you enter the room you will continue straight until you see the ramp.  Instead of going down the ramp you will jump off the ledge to the right of the ramp.  After landing on the ground you will see the plans located here.",
					["provider"] = { "o", 173232 },	-- Blacksmithing Plans
				}),
				i(11615, { 	-- Plans: Dark Iron Shoulders
					["description"] = "|cFFFFD700Plans: Dark Iron Shoulders|r spawn in one of two spots.\n\n|cFFFFFFFFLocation 1:|r In |cFFFFD700General Angerforge's|r room.  They are sitting on the bottom shelf next to the floating crystal.\n\n|cFFFFFFFFLocation 2:|r On the ground in the |cFFFFD700Detention Block|r. After passing Lexlort you will continue down into the room.  When you come across the first split into two rooms you will enter the room on the left.  They will be located on the seat behind the bench which is located next to the 3 red jugs.",
					["provider"] = { "o", 173232 },	-- Blacksmithing Plans
				}),
				i(11611, {	-- Plans: Dark Iron Sunderer
					["crs"] = {
						 9554,	-- Hammered Patron
						10043,	-- Ribbly's Crony
					},
				}),
				i(12527),	-- Ribsplitter
				i(12550),	-- Runed Golem Shackles
				i(16049, {  -- Schematic: Dark Iron Bomb
					["crs"] = {
						8920,   -- Weapon Technician
					},
				}),
				i(16048, {	-- Schematic: Dark Iron Rifle
					["crs"] = {
						8897,	-- Doomforge Craftsman
					},
				}),
				i(18235, {	-- Schematic: Field Repair Bot 74A
					["requireSkill"] = 202,	-- Engineering
					["description"] = "On the floor next to Golem Lord Argelmach",
				}),
				i(18654, {	-- Schematic: Gnomish Alarm-o-Bot
					["crs"] = {
						8920,	-- Weapon Technician
					},
				}),
				i(16053, {	-- Schematic: Master Engineer's Goggles
					["crs"] = {
						8900,	-- Doomforge Arcanasmith
					},
				}),
				i(18661, {	-- Schematic: World Enlarger
					["crs"] = {
						8920,	-- Weapon Technician
					},
				}),
				i(12531),	-- Searing Needle
				i(12532),	-- Spire of the Stoneshaper
				i(12551),	-- Stoneshield Cloak
				i(12528),	-- The Judge's Gavel
			}),
			n(9018, {	-- High Interrogator Gerstahn
				i(11625), 	-- Enthralled Sphere
				i(11626), 	-- Blackveil Cape
				i(11624), 	-- Kentic Amice
				i(22240), 	-- Greaves of Withering Despaire
			}),
			n(9025, {	-- Lord Roccor
				i(11813),	-- Formula: Smoking Heart of the Mountain
				i(11631), 	-- Stoneshell Guard
				i(22234), 	-- Mantle of Lost Hope
				i(22271), 	-- Leggings of Frenzied Magic
				i(11679), 	-- Rubicund Armguards
				i(11632), 	-- Earthslag Shoulders
			}),
			n(9319, {	-- Houndmaster Grebmar
				i(11629), 	-- Houndmaster's Rifle
				i(11628), 	-- Houndmaster's Bow
				i(11627), 	-- Fleetfoot Greaves
				i(11623), 	-- Spritecaster Cap
			}),
			n(16059, { 		-- Theldren
				["description"] = "Requires Banner of Provocation (Dungeon Set 2 Questline) to summon this boss. Loot grey chest on grey grate after killing the mobs.",
				["provider"] = { "o", 181074 },	-- Arena Spoils
				["cost"] = {
					{ "i", 21986, 1 },	-- Banner of Provocation
				},
				["groups"] = {
					i(22305), 		-- Ironweave Mantle
					i(22317), 		-- Lefty's Brass Knuckle
					i(22318), 		-- Malgen's Long Bow
					i(22330), 		-- Shroud of Arcane Mastery
				},
			}),
			n(10096, {	-- Ring of Law
				n(9031, { 	-- Anub'shiah
					["description"] = "This is one of the possible bosses for this event.",
					["groups"] = {
						i(11677), 	-- Graverot Cape
						i(11675), 	-- Shadefiend Boots
						i(11731), 	-- Savage Gladiator Greaves
						i(11678), 	-- Carapace of Anub'shiah
					},
				}),
				n(9029, { 	-- Eviscerator
					["description"] = "This is one of the possible bosses for this event.",
					["groups"] = {
						i(11685), 	-- Splinthide Shoulders
						i(11686), 	-- Girdle of Beastial Fury
						i(11730), 	-- Savage Gladiator Grips
					},
				}),
				n(9027, { 	-- Gorosh the Dervish
					["description"] = "This is one of the possible bosses for this event.",
					["groups"] = {
						i(22266), 	-- Flarethorn
						i(11662), 	-- Ban'thok Sash
						i(11726), 	-- Savage Gladiatior Chain
						i(22257),	-- Bloodclot Band
					},
				}),
				n(9028, {	-- Grizzle
					["description"] = "This is one of the possible bosses for this event.",
					["groups"] = {
						i(11610), 	-- Plans: Dark Iron Pulverizer
						i(11702), 	-- Grizzle's Skinner
						i(11722), 	-- Dregmetal Spaulders
						i(11703), 	-- Stonewall Girdle
						i(22270),	-- Entrenching Boots
					},
				}),
				n(9032, { 	-- Hedrum the Creeper
					["description"] = "This is one of the possible bosses for this event.",
					["groups"] = {
						i(11635), 	-- Hookfang Shanker
						i(11729), 	-- Savage Gladiator Helm
						i(11633), 	-- Spiderfang Carapace
						i(11634), 	-- Silkweb Gloves
					},
				}),
				n(9030, { 	-- Ok'thor the Breaker
					["description"] = "This is one of the possible bosses for this event.",
					["groups"] = {
						i(11662), 	-- Ban'thok Sash
						i(11665), 	-- Ogreseer Fists
						i(11728), 	-- Savage Gladiator's Leggings
						i(11824),	-- Cyclopean Band
					},
				}),
			}),
			n(9016, {	-- Bael'gar
				i(11803), 	-- Force of Magma
				i(11805), 	-- Rubidium Hammer
				i(11807), 	-- Sash of the Burning Heart
				i(11802), 	-- Lavacrest Leggings
				i(22257),	-- Bloodclot Band
			}),
			n(9017, {	-- Lord Incendius
				i(11766), 	-- Flameweave Cyffs
				i(11764), 	-- Cinderhide Armsplints
				i(11765), 	-- Pyremail Wristguards
				i(11767), 	-- Emberplate Armguards
				i(11768),	-- Incendic Bracers
			}),
			n(9056, {	-- Fineous Darkvire <Chief Architect>
				i(11840), 	-- Master Builder's Shirt
				i(11839), 	-- Chief Architect's Monocle
				i(11841), 	-- Senior Designer's Pantaloons
				i(11842), 	-- Land Surveyor's Mantle
				i(22223), 	-- Foreman's Head Protector
			}),
			n(9024, {	-- Pyromancer Loregrain
				i(11207),	-- Formula: Enchant Weapon - Fiery Weapon
				i(11750), 	-- Kindling Stave
				i(11748), 	-- Pyric Caduceus
				i(11747), 	-- Flamestrider Robes
				i(11749), 	-- Searingscale Leggings
				i(22270), 	-- Entrenching Boots
			}),
			n(9042, {	-- Verek
				i(11755),	-- Verek's Collar
				i(22242),	-- Verek's Leash
			}),
			n(9041, {	-- Warder Stilgiss
				i(11784),	-- Arbiter's Blade
				i(22241),	-- Dark Warder's Pauldrons
				i(11782),	-- Boreal Mantle
				i(11783),	-- Chillsteel Girdle
			}),
			n(9476, {	-- Watchman Doomgrip
				["description"] = "Watchman Doomgrip spawns once all twelve Relic Coffers have been opened using Relic Coffer Keys that can drop from any Dark Iron mob in the instance. Upon defeating all enemies, a hidden door beneath the Dark Coffer will open allowing access to the Secret Safe as well as the Heart of the Mountain.",
				["cost"] = { 
					{ "i", 11078, 12 },	-- Relic Coffer Key
				},
				["groups"] = {
					o(160836, {	-- Relic Coffer
						["description"] = "Relic Coffer Keys that can drop from any Dark Iron mob in the instance.",
						["groups"] = {
							i(11946),	-- Fire Opal Necklace
							i(11945),	-- Dark Iron Ring
						},
					}),
					o(161495, {	-- Secret Safe
						["description"] = "This lootable chest spawns after defeating Watchman Doomgrip.",
						["groups"] = {
							i(22256),	-- Mana Shaping Handwraps
							i(22205), 	-- Black Steel Bindings
							i(22254), 	-- Wand of Eternal Light
							i(22255),	-- Magma Forged Band
						},
					}),
				},
			}),
			o(164820, {	-- Dark Keeper Nameplate
				["description"] = "Inspect the portrait in front of the coffer room. Opening it will tell you the name of the Dark Keeper you need and where he is located. Only one will spawn each reset.\n\n|cff3399ffDark Keepers:|r\n\n|cFFFFD700Dark Keeper Bethek|r: spawns inside the vault room as soon as you open the portrait\n\n|cFFFFD700Dark Keeper Ofgut|r: Located in |cFFFFD700General Angerforge's|r room.  When you come down the stairs and are looking straight at |cFFFFD700General Angerforge|r you will then see him located directly to the left near the crystal.\n\n|cFFFFD700Dark Keeper Pelver|r: Located in |cFFFFD700The Domicile|r.  For quicker access you can take any of the mole machines and click |cFFFFD700Into the Domicile|r and he will be on top of it.\n\n|cFFFFD700Dark Keeper Uggel|r: quite a close walk; walk outside the vault room and go right to the last room. He is near the entrance where all the golems are.\n\n|cFFFFD700Dark Keeper Vorfalk|r: Located at the |cFFFFD700Grim Guzzler|r.  When you first enter the room after coming from the bridge he will be located on your right side in the corner (in front of the band's playing spot).\n\n|cFFFFD700Dark Keeper Zimrel|r: Located on the second floor of the |cFFFFD700Ring of Law|r.  When entering this floor from the |cFFFFD700East Garrison|r (room with the Shadowforge Lock) you will go around to your right where he will be sitting in the middle of the seats.\n",
				["crs"] = {
					9438,	-- Dark Keeper Bethek
					9442,	-- Dark Keeper Ofgut
					9443,	-- Dark Keeper Pelver
					9439,	-- Dark Keeper Uggel
					9437,	-- Dark Keeper Vorfalk
					9441,	-- Dark Keeper Zimrel
				},
				["groups"] = {
					{
						["itemID"] = 11446,	-- A Crumpled Up Note
						["questID"] = 4264,	-- A Crumpled Up Note
						["races"] = ALLIANCE_ONLY,
					},
					i(11197, {	-- Dark Keeper Key
						["description"] = "The Dark Coffer contains one or more random world drop BoEs. Usually greens.",
					}),
				},
			}),
			n(9033, {	-- General Angerforge
				i(11816), 	-- Angerforge's Battle Axe
				i(11932), 	-- Guiding Stave of Wisdom
				i(11817), 	-- Lord General's Sword
				i(12557),	-- Ebonsteel Spaulders
				i(11820), 	-- Royal Decorated Armor
				i(11821), 	-- Warstrife Leggings
				i(11810),	-- Force of Will
			}),
			n(8983, {	-- Golem Lord Argelmach
				i(11823), 	-- Luminary Kilt
				i(11822), 	-- Omnicast Boots
				i(11669),	-- Naglering
				i(11819),	-- Second Wind
				i(21956),   -- Design: Dark Iron Scorpid
			}),
			n(9537, {	-- Hurley Blackbreath
				["description"]	= "Break the 3 Thunderbrew Lager Kegs to start the event.",
				["groups"] = {
					i(11922), 		-- Blood-Etched Blade
					i(18044), 		-- Hurley's Tankard
					i(11735), 		-- Ragefury Eyepatch
					i(18043), 		-- Coal Miner Boots
					i(22275), 		-- Firemoss Boots
				},
			}),
			n(9543, {	-- Ribbly Screwspigot
				["description"]	= "Speak to him to start the event.",
				["groups"] = {
					i(11612),	-- Plans: Dark Iron Plate
					i(2663),	-- Ribbly's Bandolier
					i(2662),	-- Ribbly's Quiver
					i(11742),	-- Wayfarer's Knapsack
				},
			}),
			n(9499, {	-- Plugger Spazzring
				n(-2, { 	-- Vendors
					i(15759),	-- Pattern:	Black Dragonscale Breastplate
					i(13483),	-- Recipe: Transmute Fire to Earth
				}),
				i(12791), 	-- Barman Shanker
				i(12793), 	-- Mixologist's Tunic
				i(18653),	-- Schematic: Goblin Jumper Cables XL
			}),
			n(9502, {	-- Phalanx
				["description"]	= "Private Rocknot must be sent into a drunken rage to aggro Phalanx. \nTo do that, feed him 6 dark iron ale mugs, which can be bought from Plugger Spazzring. \nRocknot will break one of the kegs, it'll blow the door open and Phalanx will be angry.",
				["groups"] = {
					i(11744), 	-- Bloodfist
					i(11743),	-- Rockfist
					i(22212), 	-- Golem Fitted Pauldrons
					i(22204), 	-- Wristguards of Renown
					i(11745), 	-- Fists of Phalanx
				},
			}),
			n(12944, { 	-- Lokhtos Darkbargainer <The Thorium Brotherhood>
				["minReputation"] = { 59, HONORED },	-- The Thorium Brotherhood, Honored.
				["groups"] = {
					i(18628, {	-- Thorium Brotherhood Contract
						["description"] = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
						["cost"] = {
							{ "i", 17203, 1 },	-- Sulfuron Ingot
						},
						["groups"] = {
							q(7604, {	-- A Binding Contract
								i(18592),	-- Plans: Sulfuron Hammer
							}),
						},
					}),
					i(19449),	-- Formula: Enchant Weapon - Mighty Intellect
					i(19448),	-- Formula: Enchant Weapon - Mighty Versatility
					i(19444),	-- Formula: Enchant Weapon - Strength
					i(17025),  	-- Pattern: Black Dragonscale Boots
					i(19331),  	-- Pattern: Chromatic Gauntlets
					i(19332), 	-- Pattern: Corehound Belt
					i(17022),  	-- Pattern: Corehound Boots
					i(17018),  	-- Pattern: Flarecore Gloves
					i(19220),  	-- Pattern: Flarecore Leggings
					i(17017),  	-- Pattern: Flarecore Mantle
					i(19219),  	-- Pattern: Flarecore Robe
					i(19330),  	-- Pattern: Lava Belt
					i(19333),  	-- Pattern: Molten Belt
					i(17023),  	-- Pattern: Molten Helm
					i(19208),  	-- Plans: Black Amnesty
					i(19209),  	-- Plans: Blackfury
					i(19211), 	-- Plans: Blackguard
					i(20040),  	-- Plans: Dark Iron Boots
					i(17051),  	-- Plans: Dark Iron Bracers
					i(17060),  	-- Plans: Dark Iron Destroyer
					i(19207),  	-- Plans: Dark Iron Gauntlets
					i(19206),  	-- Plans: Dark Iron Helm
					i(17052),  	-- Plans: Dark Iron Leggings
					i(17059),  	-- Plans: Dark Iron Reaver
					i(19210),  	-- Plans: Ebon Hand
					i(17049),  	-- Plans: Fiery Chain Girdle
					i(17053),  	-- Plans: Fiery Chain Shoulders
					i(19212),  	-- Plans: Nightfall
					i(20761),	-- Recipe: Transmute Elemental Fire
				},
			}),
			n(9156, {	-- Ambassador Flamelash
				i(11809), 	-- Flame Wrath
				i(11808), 	-- Circle of Flame
				i(11812), 	-- Cape of the Fire Salamander
				i(11814), 	-- Molten Fists
				i(11832),	-- Burst of Knowledge
			}),
			n(8923, { 	-- Panzor the Invincible
				["description"] = "This is a rare that is not always present.",
				["groups"] = {
					i(22245),	-- Soot Encrusted Footwear
					i(11787),	-- Shalehusk Boots
					i(11786),	-- Stone of the Earth
					i(11785),	-- Rock Golem Bulwark
				},
			}),
			n(9037, {	-- Gloom'rel
				["description"] = "If you are a miner with 230 skill, speak with Gloom'rel so he will summon the Spectral Chalice to learn to smelt Dark Iron Ore.\nThe quest requires 2x Star Ruby, 20x Gold Bar, and 10x Truesilver Bar to complete.",
				["requireSkill"] = 186,	-- Mining
				["groups"] = {
					{
						["questID"] = 4083,		-- The Spectral Chalice
						["provider"] = { "o", 164869 },	-- The Spectral Chalice
						["lvl"] = 40,
						["cost"] = {
							{ "i", 7910, 2 },	-- Star Ruby
							{ "i", 3577, 20 },	-- Gold Bar
							{ "i", 6037, 10 },	-- Truesilver Bar
						},
						["groups"] = {
							recipe(14891),		-- Smelt Dark Iron (Recipe)
						},
					},
				},
			}),
			n(9039, {	-- Doom'rel
				["provider"] = { "o", 169243 },	-- Chest of The Seven
				["groups"] = {
					i(11921), 	-- Impervious Giant
					i(11923), 	-- The Hammer of Grace
					i(11920), 	-- Wraith Scythe
					i(11925), 	-- Ghostshroud
					i(11926), 	-- Deathdealer Breastplate
					i(11929), 	-- Haunting Specter Leggings
					i(11927), 	-- Legplates of the Eternal Guardian
				},
			}),
			n(9938, {	-- Magmus
				i(22208), 	-- Lavastone Hammer
				i(11935), 	-- Magmus Stone
				i(11746), 	-- Golem Skull Helm
				i(22275), 	-- Firemoss Boots
			}),
			n(9019, {	-- Emperor Dagran Thaurissan
				i(11931), 	-- Dreadforge Retaliatior
				i(11684), 	-- Ironfoe
				i(11928), 	-- Thaurissan's Royal Scepter
				i(11933),	-- Imperial Jewel
				i(11930), 	-- The Emperor's New Cape
				i(11924), 	-- Robes of the Royal Crown
				i(12554), 	-- Hands of the Exalted Herald
				i(22207), 	-- Sash of the Grand Hunt
				i(12556), 	-- High Priestess Boots
				i(12553), 	-- Swiftwalker Boots
				i(11934),	-- Emperor's Seal
				i(11815),	-- Hand of Justice
			}),
		},
	}),
};