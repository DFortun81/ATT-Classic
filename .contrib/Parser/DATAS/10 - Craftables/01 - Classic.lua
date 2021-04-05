_.Craftables = { tier(1, {	-- Classic
	prof(ALCHEMY, {
		category(20, {	-- Materials
			i(9210),	-- Ghost Dye
			i(9061),	-- Goblin Rocket Fuel
			un(PHASE_FOUR, i(19931)),	-- Gurubashi Mojo Madness
		}),
		category(14, {	-- Potions
			i(4596),	-- Discolored Healing Potion
			i(12190),	-- Dreamless Sleep Potion
			i(6049),	-- Fire Protection Potion
			i(5634),	-- Free Action Potion
			i(6050),	-- Frost Protection Potion
			i(5633),	-- Great Rage Potion
			i(13461),	-- Greater Arcane Protection Potion
			un(PHASE_FOUR, i(20002)),	-- Greater Dreamless Sleep Potion
			i(13457),	-- Greater Fire Protection Potion
			i(13456),	-- Greater Frost Protection Potion
			i(1710),	-- Greater Healing Potion
			i(6149),	-- Greater Mana Potion
			i(13458),	-- Greater Nature Protection Potion
			i(13459),	-- Greater Shadow Protection Potion
			i(13455),	-- Greater Stoneshield Potion
			i(929),		-- Healing Potion
			i(6051),	-- Holy Protection Potion
			i(9172),	-- Invisibility Potion
			i(858),		-- Lesser Healing Potion
			i(3823),	-- Lesser Invisibility Potion
			i(3385),	-- Lesser Mana Potion
			i(4623),	-- Lesser Stoneshield Potion
			i(3387),	-- Limited Invulnerability Potion
			un(PHASE_FOUR, i(20008)),	-- Living Action Potion
			un(PHASE_FOUR, i(20007)),	-- Mageblood Potion
			i(9036),	-- Magic Resistance Potion
			i(13446),	-- Major Healing Potion
			i(13444),	-- Major Mana Potion
			i(18253),	-- Major Rejuvenation Potion
			i(20004),	-- Major Troll's Blood Potion
			i(3827),	-- Mana Potion
			i(13442),	-- Mighty Rage Potion
			un(PHASE_FOUR, i(3826)),	-- Mighty Troll's Blood Potion
			i(118),		-- Minor Healing Potion
			i(2455),	-- Minor Mana Potion
			i(2456),	-- Minor Rejuvenation Potion
			i(3384),	-- Minor Magic Resistance Potion
			i(6052),	-- Nature Protection Potion
			i(3386),	-- Potion of Curing (TBC) / Elixir of Poison Resistance (Classic)
			i(13462),	-- Purification Potion
			i(5631),	-- Rage Potion
			i(9030),	-- Restorative Potion
			i(6048),	-- Shadow Protection Potion
			i(3388),	-- Strong Troll's Blood Potion
			i(3928),	-- Superior Healing Potion
			i(13443),	-- Superior Mana Potion
			i(2459),	-- Swiftness Potion
			i(6372),	-- Swim Speed Potion
			i(3382),	-- Weak Troll's Blood Potion
			i(9144),	-- Wildvine Potion
		}),
		category(15, {	-- Elixirs
			i(9155),	-- Arcane Elixir
			i(10592),	-- Catseye Elixir
			i(8949),	-- Elixir of Agility
			i(13453),	-- Elixir of Brute Force
			i(3389),	-- Elixir of Defense
			i(9224),	-- Elixir of Demonslaying
			i(9233),	-- Elixir of Detect Demon
			i(3828),	-- Elixir of Detect Lesser Invisibility
			i(9154),	-- Elixir of Detect Undead
			i(9197),	-- Elixir of Dream Vision
			i(6373),	-- Elixir of Firepower
			i(3825),	-- Elixir of Fortitude
			i(17708),	-- Elixir of Frost Power
			i(6662),	-- Elixir of Giant Growth
			i(9206),	-- Elixir of Giants
			i(9187),	-- Elixir of Greater Agility
			i(8951),	-- Elixir of Greater Defense
			i(21546),	-- Elixir of Greater Firepower
			i(9179),	-- Elixir of Greater Intellect
			i(18294),	-- Elixir of Greater Water Breathing
			i(3390),	-- Elixir of Lesser Agility
			i(2454),	-- Elixir of Lion's Strength
			i(2457),	-- Elixir of Minor Agility
			i(5997),	-- Elixir of Minor Defense
			i(2458),	-- Elixir of Minor Fortitude
			i(3391),	-- Elixir of Ogre's Strength
			i(9264),	-- Elixir of Shadow Power
			i(13445),	-- Elixir of Superior Defense
			i(13452),	-- Elixir of the Mongoose
			i(13447),	-- Elixir of the Sages
			i(5996),	-- Elixir of Water Breathing
			i(3383),	-- Elixir of Wisdom
			i(9088),	-- Gift of Arthas
			i(13454),	-- Greater Arcane Elixir
		}),
		category(16, {	-- Flasks
			i(13513),	-- Flask of Chromatic Resistance
			i(13511),	-- Flask of Distilled Wisdom
			i(13506),	-- Flask of Petrification
			i(13512),	-- Flask of Supreme Power
			i(13510),	-- Flask of the Titans
		}),
		category(17, {	-- Transmutes
			i(12360),	-- Arcanite Bar
		}),
		category(18, {	-- Trinkets
			i(9149),	-- Philosopher's Stone
		}),
		category(19, {	-- Oils
			i(6370),	-- Blackmouth Oil
			i(6371),	-- Fire Oil
			i(3829),	-- Frost Oil
			i(8956),	-- Oil of Immolation
			i(3824),	-- Shadow Oil
			i(13423),	-- Stonescale Oil
		}),
	}),
	prof(BLACKSMITHING, {
		prof(9788, {	-- Armorsmith
			["description"] = "These items can only be crafted by Blacksmiths who have completed the Art of the Armorsmith quest chain.",
			["groups"] = {
				category(23, {	-- Helms
					un(PHASE_THREE, i(19148)),	-- Dark Iron Helm
					un(PHASE_THREE, i(12620)),	-- Enchanted Thorium Helm
					i(12636),	-- Helm of the Great Chief
					i(12640),	-- Lionheart Helm
					i(12633),	-- Whitesoul Helm
				}),
				category(24, {	-- Shoulders
					un(TBC_PHASE_ONE, i(12625)),	-- Dawnbringer Shoulders
					i(16988),	-- Fiery Chain Shoulders
				}),
				category(27, {	-- Bracers
					i(17014),	-- Dark Iron Bracers
				}),
				category(26, {	-- Gauntlets
					un(PHASE_THREE, i(19164)),	-- Dark Iron Gauntlets
					i(12631),	-- Fiery Plate Gauntlets
					i(12632),	-- Storm Gauntlets
					i(12639),	-- Stronghold Gauntlets
					i(7938),	-- Truesilver Gauntlets
				}),
				category(25, {	-- Chest
					i(11604),	-- Dark Iron Plate
					i(12628),	-- Demon Forged Breastplate
					un(PHASE_THREE, i(12618)),	-- Enchanted Thorium Breastplate
					i(12641),	-- Invulnerable Mail
					i(7939),	-- Truesilver Breastplate
					i(12624),	-- Wildthorn Mail
				}),
				category(28, {	-- Belts
					i(16989),	-- Fiery Chain Girdle
				}),
				category(29, {	-- Legs
					i(17013),	-- Dark Iron Leggings
					un(PHASE_THREE, i(12619)),	-- Enchanted Thorium Leggings
					un(PHASE_FIVE, i(22385)),	-- Titanic Leggings
				}),
				category(30, {	-- Boots
					un(PHASE_FOUR, i(20039)),	-- Dark Iron Boots
				}),
			},
		}),
		prof(9787, {	-- Weaponsmith
			["description"] = "These items can only be crafted by Blacksmiths who have completed the Way of the Weaponsmith quest chain.",
			["groups"] = {
				prof(17041, {	-- Master Axesmith
					["description"] = "These items can only be crafted by Master Axesmith specialized Weaponsmiths.",
					["groups"] = {
						i(12798),	-- Annihilator
						i(12784),	-- Arcanite Reaper
						i(17016),	-- Dark Iron Destroyer
						i(12774),	-- Dawn's Edge
						i(19169),	-- Nightfall
					},
				}),
				prof(17040, {	-- Master Hammersmith
					["description"] = "These items can only be crafted by Master Hammersmith specialized Weaponsmiths.",
					["groups"] = {
						un(PHASE_THREE, i(19170)),	-- Ebon Hand
						i(12776),	-- Enchanted Battlehammer
						i(12796),	-- Hammer of the Titans
						i(12794),	-- Masterwork Stormhammer
						un(PHASE_FIVE, i(22384)),	-- Persuader
						i(12781),	-- Serenity
					},
				}),
				prof(17039, {	-- Master Swordsmith
					["description"] = "These items can only be crafted by Master Swordsmith specialized Weaponsmiths.",
					["groups"] = {
						i(12790, {	-- Arcanite Champion
							["timeline"] = {
								"added 1.11.1.5462",
								"removed 4.0.1.13287",
								"added 7.1.5.23360",
							},
						}),
						un(PHASE_THREE, i(19168)),	-- Blackguard
						i(12777, {	-- Blazing Rapier
							["timeline"] = {
								"added 1.11.1.5462",
								"removed 4.0.1.13287",
								"added 7.1.5.23360",
							},
						}),
						i(12782),	-- Corruption
						i(17015),	-- Dark Iron Reaver
						i(12797),	-- Frostguard
						un(PHASE_FIVE, i(22383)),	-- Sageblade
					},
				}),
				category(32, {	-- Weapons
					["description"] = "These can be crafted by any Weaponsmith.",
					["groups"] = {
						un(PHASE_THREE, i(19166)),	-- Black Amnesty
						un(PHASE_THREE, i(19167)),	-- Blackfury
						i(12769, {	-- Bleakwood Hew
							["timeline"] = {
								"created 1.11.1.5462",	-- Was originally never implemented.
								"added 7.1.5.23360",
							},
						}),
						i(7959, {	-- Blight
							["timeline"] = {
								"added 1.11.1.5462",
								"removed 4.0.1.13287",
								"added 7.1.5.23360",
							},
						}),
						i(12795, {	-- Blood Talon
							["timeline"] = {
								"created 1.12.1.6898",	-- Was originally never implemented.
								"added 7.1.5.23360",
							},
						}),
						i(11608),	-- Dark Iron Pulverizer
						i(11607),	-- Dark Iron Sunderer
						i(12802, {	-- Darkspear
							["timeline"] = {
								"created 1.12.1.6898",	-- Was originally never implemented.
								"added 7.1.5.23360",
							},
						}),
						i(12783),	-- Heartseeker
						i(7961),	-- Phantom Blade
						i(7954),	-- The Shatterer
						i(7960),	-- Truesilver Champion
					},
				}),
			},
		}),
		category(20, {	-- Materials
			i(16206),	-- Arcanite Rod
			i(3478),	-- Coarse Grinding Stone
			i(12644),	-- Dense Grinding Stone
			i(11128),	-- Golden Rod
			i(3486),	-- Heavy Grinding Stone
			i(9060),	-- Inlaid Mithril Cylinder
			i(7071),	-- Iron Buckle
			i(3470),	-- Rough Grinding Stone
			i(6338),	-- Silver Rod
			i(7966),	-- Solid Grinding Stone
			i(11144),	-- Truesilver Rod
		}),
		category(21, {	-- Weapon Mods
			i(2863),	-- Coarse Sharpening Stone
			i(3240),	-- Coarse Weightstone
			i(12404),	-- Dense Sharpening Stone
			i(12643),	-- Dense Weightstone
			i(18262),	-- Elemental Sharpening Stone
			i(2871),	-- Heavy Sharpening Stone
			i(3241),	-- Heavy Weightstone
			i(6043),	-- Iron Counterweight
			i(2862),	-- Rough Sharpening Stone
			i(3239),	-- Rough Weightstone
			i(7964),	-- Solid Sharpening Stone
			i(7965),	-- Solid Weightstone
			i(6041),	-- Steel Weapon Chain
		}),
		category(22, {	-- Armor Mods
			i(6042),	-- Iron Shield Spike
			i(7967),	-- Mithril Shield Spike
			i(7969),	-- Mithril Spurs
			i(12645),	-- Thorium Shield Spike
		}),
		filter(20, {	-- Daggers
			i(3848),	-- Big Bronze Knife
			i(7166),	-- Copper Dagger
			i(3490),	-- Deadly Bronze Poniard
			i(7947),	-- Ebon Shiv
			i(12259),	-- Glinting Steel Dagger
			i(5540),	-- Pearl-Handled Dagger
			i(12260),	-- Searing Golden Blade
		}),
		filter(21, {	-- 1H Axes
			i(7942),	-- Blue Glittering Axe
			i(2849),	-- Bronze Axe
			i(2845),	-- Copper Axe
			i(17704),	-- Edge of Winter
			i(7941),	-- Heavy Mithril Axe
			i(12773),	-- Ornate Thorium Handaxe
			i(3489),	-- Thick War Axe
		}),
		filter(22, {	-- 2H Axes
			i(7958),	-- Bronze Battle Axe
			i(3488),	-- Copper Battle Axe
			i(12775),	-- Huge Thorium Battleaxe
			i(3855),	-- Massive Iron Axe
			i(3856),	-- Shadow Crescent Axe
		}),
		filter(23, {	-- 1H Maces
			i(7945),	-- Big Black Mace
			i(2848),	-- Bronze Mace
			i(2844),	-- Copper Mace
			i(3491),	-- Heavy Bronze Mace
			i(5541),	-- Iridescent Hammer
			i(3492),	-- Mighty Iron Hammer
			i(7946),	-- Runed Mithril Hammer
			i(12792),	-- Volcanic Hammer
		}),
		filter(24, {	-- 2H Maces
			i(7956),	-- Bronze Warhammer
			i(3852),	-- Golden Iron Destroyer
			i(12796),	-- Hammer of the Titans
			i(6214),	-- Heavy Copper Maul
			i(3851),	-- Solid Iron Maul
			i(17193),	-- Sulfuron Hammer
		}),
		filter(25, {	-- 1H Swords
			i(2850),	-- Bronze Shortsword
			i(2847),	-- Copper Shortsword
			i(7944),	-- Dazzling Mithril Rapier
			i(3849),	-- Hardened Iron Shortsword
			i(3850),	-- Jade Serpentblade
			i(7943),	-- Wicked Mithril Blade
		}),
		filter(26, {	-- 2H Swords
			i(7957),	-- Bronze Greatsword
			i(7955),	-- Copper Claymore
			i(3854),	-- Frost Tiger Blade
			i(3487),	-- Heavy Copper Broadsword
			i(3853),	-- Moonsteel Broadsword
		}),
		filter(8, {		-- Shields
			un(PHASE_FIVE, i(22198)),	-- Jagged Obsidian Shield (AQ)
		}),
		category(23, {	-- Helms
			i(7915),	-- Barbaric Iron Helm
			un(PHASE_FOUR, i(20551)),	-- Darkrune Helm
			i(3837),	-- Golden Scale Coif
			i(3836),	-- Green Iron Helm
			i(7934),	-- Heavy Mithril Helm
			i(12427),	-- Imperial Plate Helm
			i(7931),	-- Mithril Coif
			i(7937),	-- Ornate Mithril Helm
			i(12417),	-- Radiant Circlet
			i(12612),	-- Runic Plate Helm
			i(7922),	-- Steel Plate Helm
			i(12410),	-- Thorium Helm
		}),
		category(24, {	-- Shoulders
			i(7913),	-- Barbaric Iron Shoulders
			un(PHASE_FOUR, i(19691)),	-- Bloodsoul Shoulders
			i(11605),	-- Dark Iron Shoulders
			un(PHASE_FOUR, i(19695)),	-- Darksoul Shoulders
			i(3841),	-- Golden Scale Shoulders
			i(3840),	-- Green Iron Shoulders
			i(7918),	-- Heavy Mithril Shoulder
			i(12428),	-- Imperial Plate Shoulders
			i(7932),	-- Mithril Scale Shoulders
			i(7928),	-- Ornate Mithril Shoulder
			i(3480),	-- Rough Bronze Shoulders
			i(12610),	-- Runic Plate Shoulders
			i(3481),	-- Silvered Bronze Shoulders
		}),
		category(27, {	-- Bracers
			i(2853),	-- Copper Bracers
			i(6040),	-- Golden Scale Bracers
			i(3835),	-- Green Iron Bracers
			un(PHASE_SIX, i(22671)),	-- Icebane Bracers
			i(12425),	-- Imperial Plate Bracers
			i(7924),	-- Mithril Scale Bracers
			i(2868),	-- Patterned Bronze Bracers
			i(2854),	-- Runed Copper Bracers
			i(12408),	-- Thorium Bracers
		}),
		category(26, {	-- Gauntlets
			i(7917),	-- Barbaric Iron Gloves
			un(PHASE_FIVE, i(22194)),	-- Black Grasp of the Destroyer
			un(PHASE_FOUR, i(19692)),	-- Bloodsoul Gauntlets
			un(PHASE_FOUR, i(20549)),	-- Darkrune Gauntlets
			i(3474),	-- Gemmed Copper Gauntlets
			un(PHASE_THREE, i(19057)),	-- Gloves of the Dawn
			i(9366),	-- Golden Scale Gauntlets
			i(3485),	-- Green Iron Gauntlets
			i(7919),	-- Heavy Mithril Gauntlet
			un(PHASE_SIX, i(22670)),	-- Icebane Gauntlets
			un(PHASE_FIVE_CATCH_UP, i(22763)),	-- Ironvine Gloves
			i(7927),	-- Ornate Mithril Gloves
			i(12418),	-- Radiant Gloves
			i(3472),	-- Runed Copper Gauntlets
			i(3483),	-- Silvered Bronze Gauntlets
		}),
		category(25, {		-- Chest
			i(7914),	-- Barbaric Iron Breastplate
			un(PHASE_FOUR, i(19690)),	-- Bloodsoul Breastplate
			i(3471),	-- Copper Chain Vest
			i(11606),	-- Dark Iron Mail
			un(PHASE_FOUR, i(20550)),	-- Darkrune Breastplate
			un(PHASE_FOUR, i(19693)),	-- Darksoul Breastplate
			i(3845),	-- Golden Scale Cuirass
			i(3844),	-- Green Iron Hauberk
			i(7930),	-- Heavy Mithril Breastplate
			un(PHASE_SIX, i(22669)),	-- Icebane Breastplate
			i(12422),	-- Imperial Plate Chest
			i(6731),	-- Ironforge Breastplate
			un(PHASE_FIVE_CATCH_UP, i(22762)),	-- Ironvine Breastplate
			un(PHASE_FIVE, i(22191)),	-- Obsidian Mail Tunic
			i(7935),	-- Ornate Mithril Breastplate
			i(12415),	-- Radiant Breastplate
			i(2866),	-- Rough Bronze Cuirass
			i(2864),	-- Runed Copper Breastplate
			i(10421),	-- Rough Copper Vest
			i(12613),	-- Runic Breastplate
			i(2870),	-- Shining Silver Breastplate
			i(2869),	-- Silvered Bronze Breastplate
			i(7963),	-- Steel Breastplate
			un(PHASE_FIVE, i(22196)),	-- Thick Obsidian Breastplate
			i(12405),	-- Thorium Armor
		}),
		category(28, {		-- Belts
			i(2851),	-- Copper Chain Belt
			un(PHASE_THREE, i(19051)),	-- Girdle of the Dawn
			un(PHASE_FIVE, i(22197)),	-- Heavy Obsidian Belt
			un(PHASE_THREE, i(19043)),	-- Heavy Timbermaw Belt
			i(12424),	-- Imperial Plate Belt
			un(PHASE_FIVE_CATCH_UP, i(22764)),	-- Ironvine Belt
			un(PHASE_FIVE, i(22195)),	-- Light Obsidian Belt
			i(12416),	-- Radiant Belt
			i(2857),	-- Runed Copper Belt
			i(12406),	-- Thorium Belt
		}),
		category(29, {		-- Legs
			i(2852),	-- Copper Chain Pants
			un(PHASE_FOUR, i(19694)),	-- Darksoul Leggings
			i(3843),	-- Golden Scale Leggings
			i(3842),	-- Green Iron Leggings
			i(7921),	-- Heavy Mithril Pants
			i(12429),	-- Imperial Plate Leggings
			i(7920),	-- Mithril Scale Pants
			i(7929),	-- Orcish War Leggings
			i(7926),	-- Ornate Mithril Pants
			i(12420),	-- Radiant Leggings
			i(2865),	-- Rough Bronze Leggings
			i(3473),	-- Runed Copper Pants
			i(12614),	-- Runic Plate Leggings
			i(10423),	-- Silvered Bronze Leggings
			i(12414),	-- Thorium Leggings
		}),
		category(30, {		-- Boots
			i(7916),	-- Barbaric Iron Boots
			i(3469),	-- Copper Chain Boots
			i(3847),	-- Golden Scale Boots
			i(3484),	-- Green Iron Boots
			i(7933),	-- Heavy Mithril Boots
			un(PHASE_THREE, i(19048)),	-- Heavy Timbermaw Boots
			i(12426),	-- Imperial Plate Boots
			i(7936),	-- Ornate Mithril Boots
			i(3846),	-- Polished Steel Boots
			i(12419),	-- Radiant Boots
			i(6350),	-- Rough Bronze Boots
			i(12611),	-- Runic Plate Boots
			i(3482),	-- Silvered Bronze Boots
			i(12409),	-- Thorium Boots
		}),
		category(33, {	-- Skeleton Keys
			i(15872),	-- Arcanite Skeleton Key
			i(15870),	-- Golden Skeleton Key
			i(15869),	-- Silver Skeleton Key
			i(15871),	-- Truesilver Skeleton Key
		}),
	}),
	prof(COOKING, {
		category(10, {	-- Everyday Cooking
			i(13935),	-- Baked Salmon
			i(4457),	-- Barbecued Buzzard Wing
			i(2888),	-- Beer Basted Boar Ribs
			i(3726),	-- Big Bear Steak
			i(3220),	-- Blood Sausage
			i(5525),	-- Boiled Clams
			i(6290),	-- Brilliant Smallfish
			i(4593),	-- Bristle Whisker Catfish
			i(12213),	-- Carrion Surprise
			i(2679),	-- Charred Wolf Meat
			i(5526),	-- Clam Chowder
			i(2682),	-- Cooked Crab Claw
			i(13927),	-- Cooked Glossy Mightfish
			i(2684),	-- Coyote Steak
			i(2683),	-- Crab Cake
			i(12224),	-- Crispy Bat Wing
			i(5479),	-- Crispy Lizard Tail
			i(3664),	-- Crocolisk Gumbo
			i(3662),	-- Crocolisk Steak
			i(3665),	-- Curiously Tasty Omelet
			i(5478),	-- Dig Rat Stew
			i(2687),	-- Dry Pork Ribs
			i(13930),	-- Filet of Redgill
			i(5476),	-- Fillet of Frenzy
			i(6038),	-- Giant Clam Scorcho
			i(5527),	-- Goblin Deviled Clams
			i(10841),	-- Goldthorn Tea
			i(3666),	-- Gooey Spider Cake
			i(724),		-- Goretusk Liver Pie
			i(13928),	-- Grilled Squid
			i(20074),	-- Heavy Crocolisk Stew
			i(12215),	-- Heavy Kodo Stew
			i(6888),	-- Herb Baked Egg
			i(3727),	-- Hot Lion Chops
			i(13929),	-- Hot Smoked Bass
			i(13851),	-- Hot Wolf Ribs
			i(12212),	-- Jungle Stew
			i(5472),	-- Kaldorei Spider Kabob
			i(5480),	-- Lean Venison
			i(12209),	-- Lean Wolf Steak
			i(13933),	-- Lobster Stew
			i(6316),	-- Loch Frenzy Delight
			i(4592),	-- Longjaw Mud Snapper
			i(13934),	-- Mightfish Steak
			i(8364),	-- Mithril Head Trout
			i(12218),	-- Monster Omelet
			i(3663),	-- Murloc Fin Soup
			i(12214),	-- Mystery Stew
			i(13931),	-- Nightfin Soup
			i(13932),	-- Poached Sunscale Salmon
			i(5095),	-- Rainbow Fin Albacore
			i(1082),	-- Redridge Goulash
			i(12210),	-- Roast Raptor
			i(2681),	-- Roasted Boar Meat
			i(5474),	-- Roasted Kodo Meat
			i(4594),	-- Rockscale Cod
			un(PHASE_ONE_DIRE_MAUL, i(18254)),	-- Runn Tum Tuber Surprise
			i(21217),	-- Sagefish Delight
			i(5473),	-- Scorpid Surprise
			i(1017),	-- Seasoned Wolf Kabob
			i(787),		-- Slitherskin Mackerel
			i(6890),	-- Smoked Bear Meat
			un(PHASE_FOUR, i(20452)),	-- Smoked Desert Dumplings
			i(21072),	-- Smoked Sagefish
			i(3729),	-- Soothing Turtle Bisque
			un(TBC_PHASE_ONE, i(30816)),	-- Spice Bread
			i(12216),	-- Spiced Chili Crab
			i(2680),	-- Spiced Wolf Meat
			i(17222),	-- Spider Sausage
			i(6887),	-- Spotted Yellowtail
			i(5477),	-- Strider Stew
			i(2685),	-- Succulent Pork Ribs
			i(3728),	-- Tasty Lion Steak
			i(18045),	-- Tender Wolf Steak
			i(16766),	-- Undermine Clam Chowder
			i(733),		-- Westfall Stew
		}),
		category(11, {	-- Holiday Cooking
			i(17197),	-- Gingerbread Cookie
			i(17198),	-- Egg Nog
		}),
		category(12, {	-- Unusual Delights
			un(PHASE_FIVE, i(21023)),	-- Dirge's Kickin' Chimaerok Chops
			i(12217),	-- Dragonbreath Chili
			i(6657),	-- Savory Deviate Delight
			i(7676),	-- Thistle Tea
		}),
	}),
	prof(ENCHANTING, {
		category(34, {	-- Rods
			i(16207),	-- Runed Arcanite Rod
			i(6218),	-- Runed Copper Rod
			i(11130),	-- Runed Golden Rod
			i(6339),	-- Runed Silver Rod
			i(11145),	-- Runed Truesilver Rod
		}),
		category(35, {	-- Reagents
			i(12810),	-- Enchanted Leather
			i(12655),	-- Enchanted Thorium Bar
		}),
		filter(27, {	-- Wands
			i(11288),	-- Greater Magic Wand
			i(11290),	-- Greater Mystic Wand
			i(11287),	-- Lesser Magic Wand
			i(11289),	-- Lesser Mystic Wand
		}),
		filter(53, {	-- Trinkets
			i(11811),	-- Smoking Heart of the Mountain
		}),
		un(PHASE_FIVE, category(44, {	-- Oils
			un(PHASE_FIVE, i(20748)),	-- Brilliant Mana Oil
			un(PHASE_FIVE, i(20749)),	-- Brilliant Wizard Oil
			un(PHASE_FIVE, i(20747)),	-- Lesser Mana Oil
			un(PHASE_FIVE, i(20746)),	-- Lesser Wizard Oil
			un(PHASE_FIVE, i(20745)),	-- Minor Mana Oil
			un(PHASE_FIVE, i(20744)),	-- Minor Wizard Oil
			un(PHASE_FIVE, i(20750)),	-- Wizard Oil
		})),
	}),
	prof(ENGINEERING, {
		prof(20219, {	-- Gnomish Engineering
			["description"] = "These items can only be crafted by Engineers who have completed the Gnomish Engineering quest chain.",
			["groups"] = {
				category(2, {	-- Devices
					i(18645),	-- Gnomish Alarm-o-Bot
					i(10725),	-- Gnomish Battle Chicken
					i(10645),	-- Gnomish Death Ray
					i(10721),	-- Gnomish Harm Prevention Belt
					i(10726),	-- Gnomish Mind Control Cap
					i(10720),	-- Gnomish Net-o-Matic Projector
					i(10724),	-- Gnomish Rocket Boots
					i(10716),	-- Gnomish Shrink Ray
					i(11826),	-- Lil' Smoky
					i(18986),	-- Ultrasafe Transporter: Gadgetzan
					i(18660),	-- World Enlarger
				}),
				category(5, {	-- Goggles
					i(10545),	-- Gnomish Goggles
				}),
				category(7, {	-- Parts
					i(10713, {	-- Plans: Inlaid Mithril Cylinder
						["description"] = "This recipe is crafted by Gnomish Engineers and given to Blacksmiths to learn so that the Blacksmith can craft the item needed by the Engineer.\n\nIf you are missing this recipe, ask a Gnomish Engineer to craft it for you.",
					}),
				}),
			},
		}),
		prof(20222, {	-- Goblin Engineering
			["description"] = "These items can only be crafted by Engineers who have completed the Goblin Engineering quest chain.",
			["groups"] = {
				category(2, {	-- Devices
					i(18984),	-- Dimensional Ripper - Everlook
					i(10543),	-- Goblin Construction Helmet
					i(18587),	-- Goblin Jumper Cables XL
					i(10542),	-- Goblin Mining Helmet
					i(7189),	-- Goblin Rocket Boots
					i(10588),	-- Goblin Rocket Helmet
					i(11825),	-- Pet Bombling
				}),
				category(3, {	-- Explosives
					i(10587),	-- Goblin Bomb Dispenser
					i(10727),	-- Goblin Dragon Gun
					i(10577),	-- Goblin Mortar
					i(10646),	-- Goblin Sapper Charge
					i(10586),	-- The Big One
				}),
				category(7, {	-- Parts
					i(10644, {	-- Recipe: Goblin Rocket Fuel (Engineers make the recipe for alchemists)
						["description"] = "This recipe is crafted by Goblin Engineers and given to Alchemists to learn so that the Alchemist can craft the item needed by the Engineer.\n\nIf you are missing this recipe, ask a Goblin Engineer to craft it for you.",
					}),
				}),
			},
		}),
		category(1, {	-- Bullets
			i(8068),	-- Crafted Heavy Shot
			i(8067),	-- Crafted Light Shot
			i(8069),	-- Crafted Solid Shot
			i(10512),	-- Hi-Impact Mithril Slugs
			i(10513),	-- Mithril Gyro-Shot
			i(15997),	-- Thorium Shells
		}),
		category(2, {	-- Devices
			i(4392),	-- Advanced Target Dummy
			i(6533),	-- Aquadynamic Fish Attractor
			i(16022),	-- Arcanite Dragonling
			i(4391),	-- Compact Harvest Reaper Kit
			i(4388),	-- Discombobulator Ray
			i(18232),	-- Field Repair Bot 74A
			i(4376),	-- Flame Deflector
			i(4397),	-- Gnomish Cloaking Device
			i(7506),	-- Gnomish Universal Remote
			i(7148),	-- Goblin Jumper Cables
			i(18634),	-- Gyrofreeze Ice Reflector
			i(18638),	-- Hyper-Radiant Flame Reflector
			i(4386),	-- Ice Deflector
			i(15996),	-- Lifelike Mechanical Toad
			i(18637),	-- Major Recombobulator
			i(16023),	-- Masterwork Target Dummy
			i(4396),	-- Mechanical Dragonling
			i(11590),	-- Mechanical Repair Kit
			i(4401),	-- Mechanical Squirrel Box
			i(4381),	-- Minor Recombobulator
			i(10576),	-- Mithril Mechanical Dragonling
			i(5507),	-- Ornate Spyglass
			i(10518),	-- Parachute Cloak
			i(6712),	-- Practice Lock
			i(15846),	-- Salt Shaker
			i(17716),	-- Snowmaster 9000
			un(TBC_PHASE_ONE, i(22728)),	-- Steam Tonk Controller
			i(4366),	-- Target Dummy
			i(21277),	-- Tranquil Mechanical Yeti
			i(18639),	-- Ultra-Flash Shadow Reflector
			i(16009),	-- Voice Amplification Modulator
		}),
		category(3, {	-- Explosives
			i(16040),	-- Arcane Bomb
			i(4380),	-- Big Bronze Bomb
			i(4394),	-- Big Iron Bomb
			i(4365),	-- Coarse Dynamite
			i(16005),	-- Dark Iron Bomb
			i(18641),	-- Dense Dynamite
			i(4384),	-- Explosive Sheep
			i(6714),	-- EZ-Thro Dynamite
			i(18588),	-- EZ-Thro Dynamite II
			i(4852),	-- Flash Bomb
			i(4395),	-- Goblin Land Mine
			i(4378),	-- Heavy Dynamite
			i(10562),	-- Hi-Explosive Bomb
			i(4390),	-- Iron Grenade
			i(4370),	-- Large Copper Bomb
			i(4398),	-- Large Seaforium Charge
			i(10514),	-- Mithril Frag Bomb
			i(4403),	-- Portable Bronze Mortar
			i(18594),	-- Powerful Seaforium Charge
			i(4360),	-- Rough Copper Bomb
			i(4358),	-- Rough Dynamite
			i(4374),	-- Small Bronze Bomb
			i(4367),	-- Small Seaforium Charge
			i(10507),	-- Solid Dynamite
			i(15993),	-- Thorium Grenade
		}),
		category(4, {	-- Fireworks
			i(9312),	-- Blue Firework
			i(21571),	-- Blue Rocket Cluster
			i(21570),	-- Cluster Launcher
			i(21569),	-- Firework Launcher
			i(9313),	-- Green Firework
			i(21574),	-- Green Rocket Cluster
			i(21589),	-- Large Blue Rocket
			i(21714),	-- Large Blue Rocket Cluster
			i(21590),	-- Large Green Rocket
			i(21716),	-- Large Green Rocket Cluster
			i(21592),	-- Large Red Rocket
			i(21718),	-- Large Red Rocket Cluster
			i(9318),	-- Red Firework
			i(21576),	-- Red Rocket Cluster
			i(21558),	-- Small Blue Rocket
			i(21559),	-- Small Green Rocket
			i(21557),	-- Small Red Rocket
			i(19026),	-- Snake Burst Firework
		}),
		category(5, {	-- Goggles
			un(PHASE_FOUR, i(19999)),	-- Bloodvine Goggles
			un(PHASE_FOUR, i(19998)),	-- Bloodvine Lens
			i(10499),	-- Bright-Eye Goggles
			i(10501),	-- Catseye Ultra Goggles
			i(4393),	-- Craftsman's Monocle
			i(10506),	-- Deepdive Helmet
			i(10500),	-- Fire Goggles
			i(4368),	-- Flying Tiger Goggles
			i(10504),	-- Green Lens
			i(4385),	-- Green Tinted Goggles
			i(16008),	-- Master Engineer's Goggles
			i(10503),	-- Rose Colored Goggles
			i(4373),	-- Shadow Goggles
			i(10502),	-- Spellpower Goggles Xtreme
			i(15999),	-- Spellpower Goggles Xtreme Plus
		}),
		category(6, {	-- Guns
			i(18282),	-- Core Marksman Rifle
			i(16004),	-- Dark Iron Rifle
			i(4369),	-- Deadly Blunderbuss
			i(16007),	-- Flawless Arcanite Rifle
			i(4372),	-- Lovingly Crafted Boomstick
			i(10508),	-- Mithril Blunderbuss
			i(10510),	-- Mithril Heavy-Bore Rifle
			i(4383),	-- Moonsight Rifle
			i(4362),	-- Rough Boomstick
			i(4379),	-- Silver-Plated Shotgun
			i(15995),	-- Thorium Rifle
		}),
		category(7, {	-- Parts
			i(4382),	-- Bronze Framework
			i(4371),	-- Bronze Tube
			i(4364),	-- Coarse Blasting Powder
			i(4363),	-- Copper Modulator
			i(4361),	-- Copper Tube
			i(16006),	-- Delicate Arcanite Converter
			i(15992),	-- Dense Blasting Powder
			i(10558),	-- Gold Power Core
			i(4389),	-- Gyrochronatom
			i(4359),	-- Handful of Copper Bolts
			i(4377),	-- Heavy Blasting Powder
			i(4387),	-- Iron Strut
			i(10561),	-- Mithril Casing
			i(10559),	-- Mithril Tube
			i(4357),	-- Rough Blasting Powder
			i(4404),	-- Silver Contact
			i(10505),	-- Solid Blasting Powder
			i(16000),	-- Thorium Tube
			i(15994),	-- Thorium Widget
			i(18631),	-- Truesilver Transformer
			i(10560),	-- Unstable Trigger
			i(4375),	-- Whirring Bronze Gizmo
		}),
		category(8, {	-- Scopes
			i(4407),	-- Accurate Scope
			i(18283),	-- Biznicks 247x128 Accurascope
			i(4405),	-- Crude Scope
			i(10546),	-- Deadly Scope
			i(10548),	-- Sniper Scope
			i(4406),	-- Standard Scope
		}),
		filter(8, {		-- Shields
			i(18168),	-- Force Reactive Disk*
		}),
		category(9, {	-- Tools
			i(6219),	-- Arclight Spanner
			i(10498),	-- Gyromatic Micro-Adjustor
		}),
	}),
	prof(FIRST_AID, {
		i(1251),	-- Linen Bandage
		i(2581),	-- Heavy Linen Bandage
		i(6452),	-- Anti-Venom
		i(3530),	-- Wool Bandage
		i(3531),	-- Heavy Wool Bandage
		i(6453),	-- Strong Anti-Venom
		i(6450),	-- Silk Bandage
		i(6451),	-- Heavy Silk Bandage
		i(8544),	-- Mageweave Bandage
		i(8545),	-- Heavy Mageweave Bandage
		i(14529),	-- Runecloth Bandage
		i(14530),	-- Heavy Runecloth Bandage
		i(19440),	-- Powerful Anti-Venom
	}),
	prof(FISHING, {
		filter(23, {	-- 1H Maces
			i(19808),	-- Rockhide Strongfish
			i(6360),	-- Steelscale Crushfish
		}),
		filter(52, {	-- Finger
			i(8350),	-- The 1 Ring
		}),
		filter(1, {		-- Held in Off-hand
			i(6292),	-- 10 Pound Mud Snapper
			i(6294),	-- 12 Pound Mud Snapper
			i(6295),	-- 15 Pound Mud Snapper
			i(13901),	-- 15 Pound Salmon
			i(6309),	-- 17 Pound Catfish
			i(13902),	-- 18 Pound Salmon
			i(6310),	-- 19 Pound Catfish
			i(6311),	-- 22 Pound Catfish
			i(13903),	-- 22 Pound Salmon
			i(13904),	-- 25 Pound Salmon
			i(6363),	-- 26 Pound Catfish
			i(13905),	-- 29 Pound Salmon
			i(6364),	-- 32 Pound Catfish
			i(13906),	-- 32 Pound Salmon
			i(13885),	-- 34 Pound Redgill
			i(13886),	-- 37 Pound Redgill
			i(13882),	-- 42 Pound Redgill
			i(13883),	-- 45 Pound Redgill
			i(13884),	-- 49 Pound Redgill
			i(13887),	-- 52 Pound Redgill
			i(13914),	-- 70 Pound Mightfish
			i(13915),	-- 85 Pound Mightfish
			i(13916),	-- 92 Pound Mightfish
			i(13917),	-- 103 Pound Mightfish
		}),
		filter(50, {	-- Miscellaneous
			i(13907),	-- 7 Pound Lobster
			i(13908),	-- 9 Pound Lobster
			i(13909),	-- 12 Pound Lobster
			i(13910),	-- 15 Pound Lobster
			i(13911),	-- 19 Pound Lobster
			i(13912),	-- 21 Pound Lobster
			i(13913),	-- 22 Pound Lobster
			i(13876),	-- 40 Pound Grouper
			i(13877),	-- 47 Pound Grouper
			i(13878),	-- 53 Pound Grouper
			i(13879),	-- 59 Pound Grouper
			i(13880),	-- 68 Pound Grouper
			i(6646),	-- Bloated Albacore
			i(6647),	-- Bloated Catfish
			i(21163),	-- Bloated Firefin
			i(6644),	-- Bloated Mackerel
			i(21243),	-- Bloated Mightfish
			i(6645),	-- Bloated Mud Snapper
			i(21162),	-- Bloated Oily Blackmouth
			i(13881, {	-- Bloated Redgill
				i(7551),	-- Entwined Opaline Talisman
				i(7549),	-- Fairy's Embrace
			}),
			i(21164),	-- Bloated Rockscale Cod
			i(13891),	-- Bloated Salmon
			i(6643),	-- Bloated Smallfish
			i(8366),	-- Bloated Trout
		}),
	}),
	prof(HERBALISM, {
		["description"] = "The following items can be gathered by Herbalists out in the world.",
		["groups"] = {
			i(8836),	-- Arthas' Tears [Herbalism 220]
			i(13468),	-- Black Lotus [Herbalism 300]
			i(8839),	-- Blindweed [Herbalism 235]
			un(PHASE_FOUR, i(19726)),	-- Bloodvine [Herbalism 210] [ZG Only]
			i(2450),	-- Briarthorn [Herbalism 70]
			i(2453),	-- Bruiseweed [Herbalism 100]
			i(13463),	-- Dreamfoil [Herbalism 270]
			i(2449),	-- Earthroot [Herbalism 15]
			i(3818),	-- Fadeleaf [Herbalism 160]
			i(4625),	-- Firebloom [Herbalism 205]
			i(8845),	-- Ghost Mushroom [Herbalism 245]
			i(13464),	-- Golden Sansam [Herbalism 260]
			i(3821),	-- Goldthorn [Herbalism 170]
			i(3369),	-- Grave Moss [Herbalism 120]
			i(8846),	-- Gromsblood [Herbalism 250]
			i(13467),	-- Icecap [Herbalism 290]
			i(3358),	-- Khadgar's Whisker [Herbalism 185]
			i(3356),	-- Kingsblood [Herbalism 125]
			i(3357),	-- Liferoot [Herbalism 150]
			i(785),		-- Mageroyal [Herbalism 50]
			i(13465),	-- Mountain Silversage [Herbalism 280]
			i(2447),	-- Peacebloom [Herbalism 1]
			i(13466),	-- Plaguebloom [Herbalism 285]
			i(8831),	-- Purple Lotus [Herbalism 210]
			i(765),		-- Silverleaf [Herbalism 1]
			i(3820),	-- Stranglekelp [Herbalism 85]
			i(8838),	-- Sungrass [Herbalism 230]
			i(2452),	-- Swiftthistle [Herbalism 70]
			i(3355),	-- Wild Steelbloom [Herbalism 115]
			i(8153),	-- Wildvine [Herbalism 210]
			i(3819),	-- Wintersbite [Herbalism 195]
		},
	}),
	prof(LEATHERWORKING, {
		prof(10656, {	-- Dragonscale Leatherworking
			["description"] = "These items can only be crafted by Leatherworkers who have completed the associated quest.",
			["groups"] = {
				category(50, {	-- Shoulders
					i(15051),	-- Black Dragonscale Shoulders
					i(15049),	-- Blue Dragonscale Shoulders
				}),
				category(51, {	-- Chest
					i(15050),	-- Black Dragonscale Breastplate
					i(15048),	-- Blue Dragonscale Breastplate
					i(8367),	-- Dragonscale Breastplate
					un(PHASE_FOUR, i(20380)),	-- Dreamscale Breastplate
					i(15045),	-- Green Dragonscale Breastplate
					i(15047),	-- Red Dragonscale Breastplate
				}),
				category(53, {	-- Gloves
					un(PHASE_THREE, i(19157)),	-- Chromatic Gauntlets
					i(8347),	-- Dragonscale Gauntlets
					i(20296),	-- Green Dragonscale Gauntlets
				}),
				category(55, {	-- Pants
					i(15052),	-- Black Dragonscale Leggings
					i(20295),	-- Blue Dragonscale Leggings
					i(15046),	-- Green Dragonscale Leggings
				}),
				category(56, {	-- Boots
					i(16984),	-- Black Dragonscale Boots
				}),
				category(57, {	-- Cloaks
					un(PHASE_ONE_DIRE_MAUL, i(18509)),	-- Chromatic Cloak
				}),
			},
		}),
		prof(10658, {	-- Elemental Leatherworking
			["description"] = "These items can only be crafted by Leatherworkers who have completed the associated quest.",
			["groups"] = {
				category(49, {	-- Helms
					i(8348),	-- Helm of Fire
					i(16983),	-- Molten Helm
				}),
				category(50, {	-- Shoulders
					i(15061),	-- Living Shoulders
					i(15058),	-- Stormshroud Shoulders
					i(15055),	-- Volcanic Shoulders
				}),
				category(51, {	-- Chest
					i(15059),	-- Living Breastplate
					i(15056),	-- Stormshroud Armor
					i(15053),	-- Volcanic Breastplate
				}),
				category(53, {	-- Gloves
					i(8346),	-- Gauntlets of the Sea
					i(21278),	-- Stormshroud Gloves
				}),
				category(54, {	-- Belts
					un(PHASE_THREE, i(19163)),	-- Molten Belt
				}),
				category(55, {	-- Pants
					i(15060),	-- Living Leggings
					i(15057),	-- Stormshroud Pants
					i(15054),	-- Volcanic Leggings
				}),
				category(57, {	-- Cloaks
					un(PHASE_ONE_DIRE_MAUL, i(18511)),	-- Shifting Cloak
				}),
			},
		}),
		prof(10660, {	-- Tribal Leatherworking
			["description"] = "These items can only be crafted by Leatherworkers who have completed the associated quest.",
			["groups"] = {
				category(49, {	-- Helms
					i(8345),	-- Wolfshead Helm
				}),
				category(50, {	-- Shoulders
					i(15067),	-- Ironfeather Shoulders
				}),
				category(51, {	-- Chest
					i(15075),	-- Chimeric Vest
					i(8349),	-- Feathered Breastplate
					i(15068),	-- Frostsaber Tunic
					i(15066),	-- Ironfeather Breastplate
					i(15064),	-- Warbear Harness
				}),
				category(53, {	-- Gloves
					i(15074),	-- Chimeric Gloves
					i(15063),	-- Devilsaur Gauntlets
					i(15070),	-- Frostsaber Gloves
				}),
				category(54, {	-- Belts
					un(PHASE_THREE, i(19162)),	-- Corehound Belt
				}),
				category(55, {	-- Pants
					i(15072),	-- Chimeric Leggings
					i(15062),	-- Devilsaur Leggings
					i(15069),	-- Frostsaber Leggings
					i(15065),	-- Warbear Woolies
				}),
				category(56, {	-- Boots
					i(15073),	-- Chimeric Boots
					i(16982),	-- Corehound Boots
					i(15071),	-- Frostsaber Boots
				}),
				category(57, {	-- Cloaks
					un(PHASE_ONE_DIRE_MAUL, i(18510)),	-- Hide of the Wild
				}),
			},
		}),
		category(58, {	-- Materials
			i(4236),	-- Cured Heavy Hide
			i(4231),	-- Cured Light Hide
			i(4233),	-- Cured Medium Hide
			i(15407),	-- Cured Rugged Hide
			i(8172),	-- Cured Thick Hide
			un(PHASE_ONE_DIRE_MAUL, i(18258)),	-- Gordok Ogre Suit
			i(4234),	-- Heavy Leather
			i(2318),	-- Light Leather
			i(2319),	-- Medium Leather
			i(8170),	-- Rugged Leather
			i(4304),	-- Thick Leather
		}),
		category(47, {	-- Armor Kits
			i(18251),	-- Core Armor Kit
			i(4265),	-- Heavy Armor Kit
			i(2304),	-- Light Armor Kit
			i(2313),	-- Medium Armor Kit
			i(15564),	-- Rugged Armor Kit
			i(8173),	-- Thick Armor Kit
		}),
		category(48, {	-- Bags
			i(7372),	-- Heavy Leather Ammo Pouch
			i(7371),	-- Heavy Quiver
			i(5081),	-- Kodo Hide Bag
			i(7278),	-- Light Leather Quiver
			i(8217),	-- Quickdraw Quiver
			i(7279),	-- Small Leather Ammo Pouch
			i(8218),	-- Thick Leather Ammo Pouch
		}),
		category(2, {	-- Devices
			i(18662),	-- Heavy Leather Ball
		}),
		category(57, {	-- Cloaks
			i(8216),	-- Big Voodoo Cloak
			i(7283),	-- Black Whelp Cloak
			i(2316),	-- Dark Leather Cloak
			i(6466),	-- Deviate Scale Cloak
			i(2310),	-- Embossed Leather Cloak
			i(2308),	-- Fine Leather Cloak
			i(7377),	-- Frost Leather Cloak
			i(5965),	-- Guardian Cloak
			i(7276),	-- Handstitched Leather Cloak
			i(3719),	-- Hillman's Cloak
			i(15138),	-- Onyxia Scale Cloak
			i(8215),	-- Wild Leather Cloak
		}),
		filter(5, {	-- Leather
			category(49, {	-- Helms
				i(8201),	-- Big Voodoo Mask
				un(PHASE_FIVE_CATCH_UP, i(22759)),	-- Bramblewood Helm
				i(8174),	-- Comfortable Leather Hat
				i(8176),	-- Nightscape Headband
				i(15094),	-- Runic Leather Headband (Trainable now, old Pattern id 15756 used to teach this.)
				i(15086),	-- Wicked Leather Headband (Trainable now, old Pattern id 15744 used to teach this.)
				i(8214),	-- Wild Leather Helmet
			}),
			category(50, {	-- Shoulder
				i(5964),	-- Barbaric Shoulders
				un(PHASE_FOUR, i(19689)),	-- Blood Tiger Shoulders
				i(4252),	-- Dark Leather Shoulders
				i(7352),	-- Earthen Leather Shoulders
				un(PHASE_THREE, i(19058)),	-- Golden Mantle of the Dawn
				i(4251),	-- Hillman's Shoulders
				i(8192),	-- Nightscape Shoulders
				i(15096),	-- Runic Leather Shoulders (Trainable now, old Pattern id 15777 used to teach this.)
				i(8210),	-- Wild Leather Shoulders
			}),
			category(51, {	-- Chest
				i(5739),	-- Barbaric Harness
				i(8200),	-- Big Voodoo Robe
				i(20575),	-- Black Whelp Tunic
				un(PHASE_FOUR, i(19688)),	-- Blood Tiger Breastplate
				i(2317),	-- Dark Leather Tunic
				i(7374),	-- Dusky Leather Armor
				i(2300),	-- Embossed Leather Vest
				i(4243),	-- Fine Leather Tunic
				i(4255),	-- Green Leather Armor
				i(7375),	-- Green Whelp Armor
				i(4256),	-- Guardian Armor
				i(5957),	-- Handstitched Leather Vest
				i(4244),	-- Hillman's Leather Vest
				i(6709),	-- Moonglow Vest
				i(5781),	-- Murloc Scale Breastplate
				i(8175),	-- Nightscape Tunic
				un(PHASE_SIX, i(22661)),	-- Polar Tunic
				un(PHASE_FOUR, i(19685)),	-- Primal Batskin Jerkin
				{
					["itemID"] = 4455,	-- Raptor Hide Harness (Horde only)
					["races"] = HORDE_ONLY,
				},
				i(15090),	-- Runic Leather Armor (Trainable now, old Pattern id 15776 used to teach this.)
				i(5782),	-- Thick Murloc Armor
				i(2314),	-- Toughened Leather Armor
				i(2311),	-- White Leather Jerkin
				i(15085),	-- Wicked Leather Armor (Trainable now, old Pattern id 15773 used to teach this.)
				i(8211),	-- Wild Leather Vest
			}),
			category(52, {	-- Bracers
				i(18948),	-- Barbaric Bracers
				i(7378),	-- Dusky Bracers
				i(4259),	-- Green Leather Bracers
				i(7386),	-- Green Whelp Bracers
				i(4260),	-- Guardian Leather Bracers
				i(7277),	-- Handstitched Leather Bracers
				i(7281),	-- Light Leather Bracers
				i(5783),	-- Murloc Scale Bracers
				un(PHASE_SIX, i(22663)),	-- Polar Bracers
				un(PHASE_FOUR, i(19687)),	-- Primal Batskin Bracers
				i(15092),	-- Runic Leather Bracers (Trainable now, old Pattern id 15739 used to teach this.)
				i(15084),	-- Wicked Leather Bracers (Trainable now, old Pattern id 15728 used to teach this.)
			}),
			category(53, {	-- Gloves
				i(4254),	-- Barbaric Gloves
				i(4248),	-- Dark Leather Gloves
				i(6467),	-- Deviate Scale Gloves
				i(4239),	-- Embossed Leather Gloves
				i(2312),	-- Fine Leather Gloves
				i(17721),	-- Gloves of the Greatfather
				i(5966),	-- Guardian Gloves
				i(7359),	-- Heavy Earthen Gloves
				i(7349),	-- Herbalist's Gloves
				i(4247),	-- Hillman's Leather Gloves
				i(7285),	-- Nimble Leather Gloves
				i(7358),	-- Pilferer's Gloves
				un(PHASE_SIX, i(22662)),	-- Polar Gloves
				un(PHASE_FOUR, i(19686)),	-- Primal Batskin Gloves
				i(7284),	-- Red Whelp Gloves
				i(15091),	-- Runic Leather Gauntlets (Trainable now, old Pattern id 15731 used to teach this.)
				i(18238),	-- Shadowskin Gloves
				un(PHASE_THREE, i(19049)),	-- Timbermaw Brawlers
				i(4253),	-- Toughened Leather Gloves
				i(15083),	-- Wicked Leather Gauntlets (Trainable now, old Pattern id 15725 used to teach this.)
			}),
			category(54, {	-- Belts
				i(4264),	-- Barbaric Belt
				un(PHASE_FIVE_CATCH_UP, i(22761)),	-- Bramblewood Belt
				i(4249),	-- Dark Leather Belt
				i(6468),	-- Deviate Scale Belt
				i(7387),	-- Dusky Belt
				i(4246),	-- Fine Leather Belt
				i(4262),	-- Gem-Studded Leather Belt
				un(PHASE_ONE_DIRE_MAUL, i(18504)),	-- Girdle of Insight
				i(4257),	-- Green Leather Belt
				i(4258),	-- Guardian Belt
				i(4237),	-- Handstitched Leather Belt
				i(4250),	-- Hillman's Belt
				un(PHASE_THREE, i(19149)),	-- Lava Belt
				un(PHASE_THREE, i(19044)),	-- Might of the Timbermaw
				i(5780),	-- Murloc Scale Belt
				{
					["itemID"] = 4456,	-- Raptor Hide Belt (Alliance only)
					["races"] = ALLIANCE_ONLY,
				},
				i(15093),	-- Runic Leather Belt (Trainable now, old Pattern id 15745 used to teach this.)
				i(15088),	-- Wicked Leather Belt (Trainable now, old Pattern id 15768 used to teach this.)
			}),
			category(55, {	-- Pants
				i(5963),	-- Barbaric Leggings
				i(8202),	-- Big Voodoo Pants
				i(5961),	-- Dark Leather Pants
				i(7373),	-- Dusky Leather Leggings
				i(4242),	-- Embossed Leather Pants
				i(5958),	-- Fine Leather Pants
				i(5962),	-- Guardian Pants
				i(2303),	-- Handstitched Leather Pants
				i(7282),	-- Light Leather Pants
				i(8193),	-- Nightscape Pants
				i(7280),	-- Rugged Leather Pants
				i(15095),	-- Runic Leather Pants (Trainable now, old Pattern id 15765 used to teach this.)
				i(15087),	-- Wicked Leather Pants (Trainable now, old Pattern id 15757 used to teach this.)
				i(8212),	-- Wild Leather Leggings
			}),
			category(56, {	-- Boots
				un(PHASE_FIVE_CATCH_UP, i(22760)),	-- Bramblewood Boots
				i(2315),	-- Dark Leather Boots
				un(PHASE_THREE, i(19052)),	-- Dawn Treaders
				i(7390),	-- Dusky Boots
				i(2309),	-- Embossed Leather Boots
				i(2307),	-- Fine Leather Boots
				i(2302),	-- Handstitched Leather Boots
				un(PHASE_ONE_DIRE_MAUL, i(18506)),	-- Mongoose Boots
				i(8197),	-- Nightscape Boots
				i(7391),	-- Swift Boots
				i(8213),	-- Wild Leather Boots
			}),
		}),
		filter(6, {	-- Mail
			category(49, {	-- Helms
				i(15080),	-- Heavy Scorpid Helm
				i(8208),	-- Tough Scorpid Helm
				i(8191),	-- Turtle Scale Helm
			}),
			category(50, {	-- Shoulder
				i(15081),	-- Heavy Scorpid Shoulders
				i(8207),	-- Tough Scorpid Shoulders
			}),
			category(51, {	-- Chest
				i(15076),	-- Heavy Scorpid Vest
				un(PHASE_SIX, i(22664)),	-- Icy Scale Breastplate
				un(PHASE_FOUR, i(20478)),	-- Sandstalker Breastplate
				un(PHASE_FOUR, i(20479)),	-- Spitfire Breastplate
				i(8203),	-- Tough Scorpid Breastplate
				i(8189),	-- Turtle Scale Breastplate
			}),
			category(52, {	-- Bracers
				i(15077),	-- Heavy Scorpid Bracers
				un(PHASE_SIX, i(22665)),	-- Icy Scale Bracers
				un(PHASE_FOUR, i(20476)),	-- Sandstalker Bracers
				un(PHASE_FOUR, i(20481)),	-- Spitfire Bracers
				un(PHASE_ONE_DIRE_MAUL, i(18508)),	-- Swift Flight Bracers
				i(8205),	-- Tough Scorpid Bracers
				i(8198),	-- Turtle Scale Bracers
			}),
			category(53, {	-- Gloves
				i(7348),	-- Fletcher's Gloves
				i(15078),	-- Heavy Scorpid Gauntlets
				un(PHASE_SIX, i(22666)),	-- Icy Scale Gauntlets
				un(PHASE_FOUR, i(20477)),	-- Sandstalker Gauntlets
				un(PHASE_FOUR, i(20480)),	-- Spitfire Gauntlets
				i(8204),	-- Tough Scorpid Gloves
				i(8187),	-- Turtle Scale Gloves
			}),
			category(54, {	-- Belts
				i(15082),	-- Heavy Scorpid Belt
			}),
			category(55, {	-- Pants
				i(15079),	-- Heavy Scorpid Leggings
				i(8206),	-- Tough Scorpid Leggings
				i(8185),	-- Turtle Scale Leggings
			}),
			category(56, {	-- Boots
				i(8209),	-- Tough Scorpid Boots
			}),
		}),
	}),
	prof(MINING, {
		["description"] = "The following items can be gathered by Miners out in the world.",
		["groups"] = {
			spell(2656, {	-- Smelting
				["description"] = "The following items can be smelted by Miners in a city at the Black Forge in BRD.",
				["collectible"] = false,
				["groups"] = {
					i(2841),	-- Bronze Bar
					i(2840),	-- Copper Bar
					i(11371),	-- Dark Iron Bar
					i(17771),	-- Elementium Bar
					i(3577),	-- Gold Bar
					i(3575),	-- Iron Bar
					i(3860),	-- Mithril Bar
					i(2842),	-- Silver Bar
					i(3859),	-- Steel Bar
					i(12359),	-- Thorium Bar
					i(3576),	-- Tin Bar
					i(6037),	-- Truesilver Bar
				},
			}),
			i(2836),	-- Coarse Stone
			i(2770),	-- Copper Ore
			i(11370),	-- Dark Iron Ore
			i(12365),	-- Dense Stone
			i(2776),	-- Gold Ore
			i(2838),	-- Heavy Stone
			i(2772),	-- Iron Ore
			i(22203),	-- Large Obsidian Shard
			i(3858),	-- Mithril Ore
			i(2835),	-- Rough Stone
			i(2775),	-- Silver Ore
			i(22202),	-- Small Obsidian Shard
			i(7912),	-- Solid Stone
			i(10620),	-- Thorium Ore
			i(2771),	-- Tin Ore
			i(7911),	-- Truesilver Ore
		},
	}),
	prof(40, {	-- Poisons
		-- #if CLASSIC
		i(5530),	-- Blinding Powder
		-- #endif
		i(3775),	-- Crippling Poison
		i(3776),	-- Crippling Poison II
		i(2892),	-- Deadly Poison
		i(2893),	-- Deadly Poison II
		i(8984),	-- Deadly Poison III
		i(8985),	-- Deadly Poison IV
		un(PHASE_FIVE, i(20844)),	-- Deadly Poison V
		i(6947),	-- Instant Poison
		i(6949),	-- Instant Poison II
		i(6950),	-- Instant Poison III
		i(8926),	-- Instant Poison IV
		i(8927),	-- Instant Poison V
		i(8928),	-- Instant Poison VI
		i(5237),	-- Mind-Numbing Poison
		i(6951),	-- Mind-Numbing Poison II
		i(9186),	-- Mind-Numbing Poison III
		i(10918),	-- Wound Poison
		i(10920),	-- Wound Poison II
		i(10921),	-- Wound Poison III
		i(10922),	-- Wound Poison IV
	}),
	prof(SKINNING, {
		["description"] = "The following items can be gathered by skinning creatures out in the world.",
		["groups"] = {
			i(15416),	-- Black Dragonscale
			i(7286),	-- Black Whelp Scale
			i(15415),	-- Blue Dragonscale
			i(12607),	-- Brilliant Chromatic Scale
			i(15423),	-- Chimera Leather
			i(17012),	-- Core Leather
			i(6470),	-- Deviate Scale
			un(PHASE_FOUR, i(20381)),	-- Dreamscale
			i(15417),	-- Devilsaur Leather
			i(15422),	-- Frostsaber Leather
			i(15412),	-- Green Dragonscale
			i(7392),	-- Green Whelp Scale
			i(4235),	-- Heavy Hide
			i(4234),	-- Heavy Leather
			i(15408),	-- Heavy Scorpid Scale
			i(20501),	-- Heavy Silithid Carapace
			i(783),		-- Light Hide
			i(2318),	-- Light Leather
			i(20500),	-- Light Silithid Carapace
			i(4232),	-- Medium Hide
			i(2319),	-- Medium Leather
			i(11512),	-- Patch of Tainted Skin
			i(6471),	-- Perfect Deviate Scale
			un(PHASE_FOUR, i(19767)),	-- Primal Bat Leather
			un(PHASE_FOUR, i(19768)),	-- Primal Tiger Leather
			i(12731),	-- Pristine Hide of the Beast
			i(15414),	-- Red Dragonscale
			i(7287),	-- Red Whelp Scale
			i(8171),	-- Rugged Hide
			i(8170),	-- Rugged Leather
			i(2934),	-- Ruined Leather Scraps
			i(15410),	-- Scale of Onyxia
			i(8154),	-- Scorpid Scale
			i(7428),	-- Shadowcat Hide
			i(20498),	-- Silithid Chitin
			i(8169),	-- Thick Hide
			i(4304),	-- Thick Leather
			i(8368),	-- Thick Wolfhide
			i(8167),	-- Turtle Scale
			i(15419),	-- Warbear Leather
			i(8165),	-- Worn Dragonscale
		},
	}),
	prof(TAILORING, {
		category(58, {	-- Materials
			i(2996),	-- Bolt of Linen Cloth
			i(4339),	-- Bolt of Mageweave
			i(14048),	-- Bolt of Runecloth
			i(4305),	-- Bolt of Silk Cloth
			i(2997),	-- Bolt of Woolen Cloth
			un(PHASE_ONE_DIRE_MAUL, i(18258)),	-- Gordok Ogre Suit
			i(14342),	-- Mooncloth
		}),
		category(59, {	-- Bags
			un(PHASE_FIVE, i(22249)),	-- Big Bag of Enchantment
			i(5765),	-- Black Silk Pack
			i(14156),	-- Bottomless Bag
			un(PHASE_FIVE, i(22251)),	-- Cenarion Herb Bag
			i(21342),	-- Core Felcloth Bag
			i(22246),	-- Enchanted Mageweave Pouch
			un(PHASE_FIVE, i(22248)),	-- Enchanted Runecloth Bag
			i(21341),	-- Felcloth Bag
			i(5764),	-- Green Silk Pack
			i(4241),	-- Green Woolen Bag
			i(4238),	-- Linen Bag
			i(10050),	-- Mageweave Bag
			i(14155),	-- Mooncloth Bag
			i(5762),	-- Red Linen Bag
			i(10051),	-- Red Mageweave Bag
			i(5763),	-- Red Woolen Bag
			i(14046),	-- Runecloth Bag
			un(PHASE_FIVE, i(22252)),	-- Satchel of Cenarius
			i(4245),	-- Small Silk Pack
			i(21340),	-- Soul Pouch
			i(4240),	-- Woolen Bag
		}),
		category(60, {	-- Hats & Hoods
			i(10030),	-- Admiral's Hat
			i(7048),	-- Azure Silk Hood
			i(10024),	-- Black Mageweave Headband
			i(10041),	-- Dreamweave Circlet
			i(4322),	-- Enchanter's Cowl
			i(14111),	-- Felcloth Hood
			i(14140),	-- Mooncloth Circlet
			i(10033),	-- Red Mageweave Headband
			i(13866),	-- Runecloth Headband
			i(4323),	-- Shadow Hood
			i(10025),	-- Shadoweave Mask
			i(7050),	-- Silk Headband
			un(PHASE_FIVE_CATCH_UP, i(22757)),	-- Sylvan Crown
			i(10008),	-- White Bandit Mask
			i(14130),	-- Wizardweave Turban
		}),
		category(61, {	-- Shoulders
			un(PHASE_THREE, i(19059)),	-- Argent Shoulders
			i(7060),	-- Azure Shoulders
			i(10027),	-- Black Mageweave Shoulders
			i(7059),	-- Crimson Silk Shoulders
			i(4314),	-- Double-stitched Woolen Shoulders
			i(14112),	-- Felcloth Shoulders
			i(16980),	-- Flarecore Mantle
			i(7057),	-- Green Silken Shoulders
			un(PHASE_THREE, i(19050)),	-- Mantle of the Timbermaw
			i(14139),	-- Mooncloth Shoulders
			i(10029),	-- Red Mageweave Shoulders
			i(4315),	-- Reinforced Woolen Shoulders
			i(13867),	-- Runecloth Shoulders
			i(10028),	-- Shadoweave Shoulders
			un(PHASE_FIVE_CATCH_UP, i(22758)),	-- Sylvan Shoulders
		}),
		category(62, {	-- Robes & Tunics
			i(4324),	-- Azure Silk Vest
			i(2578),	-- Barbaric Linen Vest
			i(10001),	-- Black Mageweave Robe
			i(9998),	-- Black Mageweave Vest
			un(PHASE_FOUR, i(19682)),	-- Bloodvine Vest
			i(6242),	-- Blue Linen Robe
			i(6240),	-- Blue Linen Vest
			i(6263),	-- Blue Overalls
			i(14100),	-- Brightcloth Robe
			i(6238),	-- Brown Linen Robe
			i(10042),	-- Cindercloth Robe
			i(14042),	-- Cindercloth Vest
			i(7063),	-- Crimson Silk Robe
			i(7058),	-- Crimson Silk Vest
			i(10021),	-- Dreamweave Vest
			i(7051),	-- Earthen Vest
			i(14106),	-- Felcloth Robe
			i(21154),	-- Festival Dress
			i(21542),	-- Festival Suit
			i(19156),	-- Flarecore Robe
			i(13868),	-- Frostweave Robe
			i(13869),	-- Frostweave Tunic
			i(14141),	-- Ghostweave Vest
			un(PHASE_SIX, i(22652)),	-- Glacial Vest
			i(2585),	-- Gray Woolen Robe
			i(6264),	-- Greater Adept's Robe
			i(7065),	-- Green Silk Armor
			i(2582),	-- Green Woolen Vest
			i(5766),	-- Lesser Wizard's Robe
			i(18486),	-- Mooncloth Robe
			i(14138),	-- Mooncloth Vest
			i(2572),	-- Red Linen Robe
			i(6239),	-- Red Linen Vest
			i(10007),	-- Red Mageweave Vest
			i(7054),	-- Robe of Power
			i(14152),	-- Robe of the Archmage
			i(14153),	-- Robe of the Void
			i(14136),	-- Robe of Winter Night
			i(5770),	-- Robes of Arcana
			i(13858),	-- Runecloth Robe
			i(13857),	-- Runecloth Tunic
			i(10004),	-- Shadoweave Robe
			i(10053),	-- Simple Black Dress
			i(6786),	-- Simple Dress
			un(PHASE_FIVE_CATCH_UP, i(22756)),	-- Sylvan Vest
			i(14154),	-- Truefaith Vestments
			i(10036),	-- Tuxedo Jacket
			i(6241),	-- White Linen Robe
			i(10040),	-- White Wedding Dress
			i(6787),	-- White Woolen Dress
			i(14128),	-- Wizardweave Robe
		}),
		category(63, {	-- Bracers
			i(18263),	-- Flarecore Wraps
			un(PHASE_SIX, i(22655)),	-- Glacial Wrists
			i(4308),	-- Green Linen Bracers
		}),
		category(64, {	-- Belts
			i(7052),	-- Azure Silk Belt
			un(PHASE_ONE_DIRE_MAUL, i(18405)),	-- Belt of the Archmage
			i(7055),	-- Crimson Silk Belt
			i(7061),	-- Earthen Silk Belt
			i(14143),	-- Ghostweave Belt
			i(7026),	-- Linen Belt
			i(13856),	-- Runecloth Belt
			un(PHASE_FOUR, i(20539)),	-- Runed Stygian Belt
			i(4328),	-- Spider Belt
			i(4329),	-- Star Belt
			un(PHASE_THREE, i(19047)),	-- Wisdom of the Timbermaw
		}),
		category(65, {	-- Gloves
			i(4319),	-- Azure Silk Gloves
			i(10003),	-- Black Mageweave Gloves
			i(14101),	-- Brightcloth Gloves
			i(14043),	-- Cindercloth Gloves
			i(7064),	-- Crimson Silk Gloves
			i(10019),	-- Dreamweave Gloves
			un(PHASE_ONE_DIRE_MAUL, i(18407)),	-- Felcloth Gloves
			i(16979),	-- Flarecore Gloves
			i(13870),	-- Frostweave Gloves
			i(14142),	-- Ghostweave Gloves
			un(PHASE_SIX, i(22654)),	-- Glacial Gloves
			i(4318),	-- Gloves of Meditation
			i(14146),	-- Gloves of Spell Mastery
			i(7047),	-- Hands of Darkness
			i(4307),	-- Heavy Linen Gloves
			i(4310),	-- Heavy Woolen Gloves
			un(PHASE_ONE_DIRE_MAUL, i(18408)),	-- Inferno Gloves
			un(PHASE_ONE_DIRE_MAUL, i(18409)),	-- Mooncloth Gloves
			i(4331),	-- Phoenix Gloves
			i(10018),	-- Red Mageweave Gloves
			i(13863),	-- Runecloth Gloves
			i(10023),	-- Shadoweave Gloves
			i(7049),	-- Truefaith Gloves
		}),
		category(66, {	-- Pants
			i(7046),	-- Azure Silk Pants
			i(9999),	-- Black Mageweave Leggings
			un(PHASE_FOUR, i(19683)),	-- Bloodvine Leggings
			i(14104),	-- Brightcloth Pants
			i(4343),	-- Brown Linen Pants
			i(14045),	-- Cindercloth Pants
			i(10048),	-- Colorful Kilt
			i(7062),	-- Crimson Silk Pantaloons
			i(14107),	-- Felcloth Pants
			i(19165),	-- Flarecore Leggings
			i(13871),	-- Frostweave Pants
			i(14144),	-- Ghostweave Pants
			i(4309),	-- Handstitched Linen Britches
			i(4316),	-- Heavy Woolen Pants
			i(14137),	-- Mooncloth Leggings
			i(4317),	-- Phoenix Pants
			i(10009),	-- Red Mageweave Pants
			i(13865),	-- Runecloth Pants
			un(PHASE_FOUR, i(20538)),	-- Runed Stygian Leggings
			i(10002),	-- Shadoweave Pants
			i(10047),	-- Simple Kilt
			i(10045),	-- Simple Linen Pants
			i(10035),	-- Tuxedo Pants
			i(14132),	-- Wizardweave Leggings
		}),
		category(67, {	-- Boots
			un(PHASE_THREE, i(19056)),	-- Argent Boots
			i(10026),	-- Black Mageweave Boots
			un(PHASE_FOUR, i(19684)),	-- Bloodvine Boots
			i(4325),	-- Boots of the Enchanter
			i(10044),	-- Cindercloth Boots
			i(14108),	-- Felcloth Boots
			i(2569),	-- Linen Boots
			i(15802),	-- Mooncloth Boots
			i(4313),	-- Red Woolen Boots
			i(13864),	-- Runecloth Boots
			un(PHASE_FOUR, i(20537)),	-- Runed Stygian Boots
			i(10031),	-- Shadoweave Boots
			i(10046),	-- Simple Linen Boots
			i(4312),	-- Soft-Soled Linen Boots
			i(4321),	-- Spider Silk Slippers
			i(4320),	-- Spidersilk Boots
			i(2583),	-- Woolen Boots
		}),
		category(68, {	-- Cloaks
			i(7053),	-- Azure Silk Cloak
			i(14103),	-- Brightcloth Cloak
			i(14044),	-- Cindercloth Cloak
			i(14134),	-- Cloak of Fire
			un(PHASE_ONE_DIRE_MAUL, i(18413)),	-- Cloak of Warding
			i(7056),	-- Crimson Silk Cloak
			un(PHASE_FIVE_CATCH_UP, i(22660)),	-- Gaea's Embrace
			un(PHASE_SIX, i(22658)),	-- Glacial Cloak
			i(4311),	-- Heavy Woolen Cloak
			i(4327),	-- Icy Cloak
			i(2570),	-- Linen Cloak
			i(4326),	-- Long Silken Cloak
			i(5542),	-- Pearl-Clasped Cloak
			i(2580),	-- Reinforced Linen Cape
			i(13860),	-- Runecloth Cloak
			i(2584),	-- Woolen Cape
		}),
		category(69, {	-- Shirts
			i(4336),	-- Black Swashbuckler's Shirt
			i(2577),	-- Blue Linen Shirt
			i(4332),	-- Bright Yellow Shirt
			i(4344),	-- Brown Linen Shirt
			i(4333),	-- Dark Silk Shirt
			i(4334),	-- Formal White Shirt
			i(2587),	-- Gray Woolen Shirt
			i(17723),	-- Green Holiday Shirt
			i(2579),	-- Green Linen Shirt
			i(10054),	-- Lavender Mageweave Shirt
			i(10056),	-- Orange Mageweave Shirt
			i(10052),	-- Orange Martial Shirt
			i(10055),	-- Pink Mageweave Shirt
			i(2575),	-- Red Linen Shirt
			i(6796),	-- Red Swashbuckler's Shirt
			i(4335),	-- Rich Purple Silk Shirt
			i(6384),	-- Stylish Blue Shirt
			i(6385),	-- Stylish Green Shirt
			i(4330),	-- Stylish Red Shirt
			i(10034),	-- Tuxedo Shirt
			i(2576),	-- White Linen Shirt
			i(6795),	-- White Swashbuckler's Shirt
		}),
	}),
})};