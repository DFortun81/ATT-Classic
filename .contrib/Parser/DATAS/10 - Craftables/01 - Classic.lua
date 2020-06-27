_.Craftables =
{
	prof(ALCHEMY, {
		i(9149),	-- Philosopher's Stone
	}),
	prof(BLACKSMITHING, {
		filter(20, {	-- Daggers
			i(3848),	-- Big Bronze Knife
			i(19166),	-- Black Amnesty
			i(3490),	-- Deadly Bronze Poniard
			i(7947),	-- Ebon Shiv
			i(12259),	-- Glinting Steel Dagger
			i(12783),	-- Heartseeker
			i(5540),	-- Pearl-Handled Dagger
			i(12260),	-- Searing Golden Blade
		}),
		filter(21, {	-- 1H Axes
			i(12798),	-- Annihilator
			i(7942),	-- Blue Glittering Axe
			i(2849),	-- Bronze Axe
			i(12774),	-- Dawn's Edge
			i(17016),	-- Dark Iron Destroyer
			i(17704),	-- Edge of Winter
			i(7941),	-- Heavy Mithril Axe
			i(12773),	-- Ornate Thorium Handaxe
			i(3489),	-- Thick War Axe
		}),
		filter(22, {	-- 2H Axes
			i(12784),	-- Arcanite Reaper
			i(12769, {	-- Bleakwood Hew
				["timeline"] = {
					"created 1.11.1.5462",	-- Was originally never implemented.
					"added 7.1.5.23360",
				},
			}),
			i(7958),	-- Bronze Battle Axe
			i(3488),	-- Copper Battle Axe
			i(11607),	-- Dark Iron Sunderer
			i(12775),	-- Huge Thorium Battleaxe
			i(3855),	-- Massive Iron Axe
			i(19169),	-- Nightfall
			i(3856),	-- Shadow Crescent Axe
		}),
		filter(23, {	-- 1H Maces
			i(7945),	-- Big Black Mace
			i(2848),	-- Bronze Mace
			i(19170),	-- Ebon Hand
			i(3491),	-- Heavy Bronze Mace
			i(5541),	-- Iridescent Hammer
			i(12794),	-- Masterwork Stormhammer
			i(3492),	-- Mighty Iron Hammer
			i(22384),	-- Persuader
			i(7946),	-- Runed Mithril Hammer
			i(12781),	-- Serenity
			i(7954),	-- The Shatterer
			i(12792),	-- Volcanic Hammer
		}),
		filter(24, {	-- 2H Maces
			i(7956),	-- Bronze Warhammer
			i(11608),	-- Dark Iron Pulverizer
			i(12776),	-- Enchanted Battlehammer
			i(3852),	-- Golden Iron Destroyer
			i(12796),	-- Hammer of the Titans
			i(6214),	-- Heavy Copper Maul
			i(3851),	-- Solid Iron Maul
			i(17193),	-- Sulfuron Hammer
		}),
		filter(25, {	-- 1H Swords
			i(19168),	-- Blackguard
			i(12777, {	-- Blazing Rapier
				["timeline"] = {
					"added 1.11.1.5462",
					"removed 4.0.1.13287",
					"added 7.1.5.23360",
				},
			}),
			i(2850),	-- Bronze Shortsword
			i(17015),	-- Dark Iron Reaver
			i(7944),	-- Dazzling Mithril Rapier
			i(12797),	-- Frostguard
			i(3849),	-- Hardened Iron Shortsword
			i(3850),	-- Jade Serpentblade
			i(7961),	-- Phantom Blade
			i(22383),	-- Sageblade
			i(7943),	-- Wicked Mithril Blade
		}),
		filter(26, {	-- 2H Swords
			i(12790, {	-- Arcanite Champion
				["timeline"] = {
					"added 1.11.1.5462",
					"removed 4.0.1.13287",
					"added 7.1.5.23360",
				},
			}),
			i(7957),	-- Bronze Greatsword
			i(12782),	-- Corruption
			i(3854),	-- Frost Tiger Blade
			i(3487),	-- Heavy Copper Broadsword
			i(3853),	-- Moonsteel Broadsword
			i(7960),	-- Truesilver Champion
		}),
		filter(29, {	-- Polearms
			i(19167),	-- Blackfury
			i(7959, {	-- Blight
				["timeline"] = {
					"added 1.11.1.5462",
					"removed 4.0.1.13287",
					"added 7.1.5.23360",
				},
			}),
			i(12802, {	-- Darkspear
				["timeline"] = {
					"created 1.12.1.6898",	-- Was originally never implemented.
					"added 7.1.5.23360",
				},
			}),
		}),
		filter(8, {		-- Shield
			un(3, i(22198)),	-- Jagged Obsidian Shield (AQ)
		}),
		n(-320, {		-- Head
			i(7915),	-- Barbaric Iron Helm
			i(19148),	-- Dark Iron Helm
			i(20551),	-- Darkrune Helm
			i(12620),	-- Enchanted Thorium Helm
			i(3837),	-- Golden Scale Coif
			i(3836),	-- Green Iron Helm
			i(7934),	-- Heavy Mithril Helm
			i(12636),	-- Helm of the Great Chief
			i(12427),	-- Imperial Plate Helm
			i(12640),	-- Lionheart Helm
			i(7931),	-- Mithril Coif
			i(7937),	-- Ornate Mithril Helm
			i(12417),	-- Radiant Circlet
			i(12612),	-- Runic Plate Helm
			i(7922),	-- Steel Plate Helm
			i(12410),	-- Thorium Helm
			i(12633),	-- Whitesoul Helm
		}),
		n(-321, {		-- Shoulders
			i(7913),	-- Barbaric Iron Shoulders
			i(19691),	-- Bloodsoul Shoulders
			i(11605),	-- Dark Iron Shoulders
			i(19695),	-- Darksoul Shoulders
			i(12625),	-- Dawnbringer Shoulders
			i(16988),	-- Fiery Chain Shoulders
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
		n(-323, {		-- Chest
			i(7914),	-- Barbaric Iron Breastplate
			i(19690),	-- Bloodsoul Breastplate
			i(3471),	-- Copper Chain Vest
			i(11604),	-- Dark Iron Plate
			i(11606),	-- Dark Iron Plate
			i(20550),	-- Darkrune Breastplate
			i(19693),	-- Darksoul Breastplate
			i(12628),	-- Demon Forged Breastplate
			i(12618),	-- Enchanted Thorium Breastplate
			i(3845),	-- Golden Scale Cuirass
			i(3844),	-- Green Iron Hauberk
			i(7930),	-- Heavy Mithril Breastplate
			i(22669, {	-- Icebane Breastplate
				["u"] = 3,
			}),
			i(12422),	-- Imperial Plate Chest
			i(12641),	-- Invulnerable Mail
			i(6731),	-- Ironforge Breastplate
			i(22762),	-- Ironvine Breastplate
			i(22191),	-- Obsidian Plate Tunic
			i(7935),	-- Ornate Mithril Breastplate
			i(12415),	-- Radiant Breastplate
			i(2866),	-- Rough Bronze Cuirass
			i(2864),	-- Runed Copper Breastplate
			i(12613),	-- Runic Breastplate
			i(2870),	-- Shining Silver Breastplate
			i(2869),	-- Silvered Bronze Breastplate
			i(7963),	-- Steel Breastplate
			i(22196),	-- Thick Obsidian Breastplate
			i(12405),	-- Thorium Armor
			i(7939),	-- Truesilver Breastplate
			i(12624),	-- Wildthorn Mail
		}),
		n(-327, {		-- Hands
			i(7917),	-- Barbaric Iron Gloves
			i(22194),	-- Black Grasp of the Destroyer
			i(19692),	-- Bloodsoul Gauntlets
			i(19164),	-- Dark Iron Gauntlets
			i(20549),	-- Darkrune Gauntlets
			i(12631),	-- Fiery Plate Gauntlets
			i(3474),	-- Gemmed Copper Gauntlets
			i(19057),	-- Gloves of the Dawn
			i(9366),	-- Golden Scale Gauntlets
			i(3485),	-- Green Iron Gauntlets
			i(7919),	-- Heavy Mithril Gauntlet
			i(22670, {	-- Icebane Gauntlets
				["u"] = 3,
			}),
			i(22763),	-- Ironvine Gloves
			i(7927),	-- Ornate Mithril Gloves
			i(12418),	-- Radiant Gloves
			i(3472),	-- Runed Copper Gauntlets
			i(3483),	-- Silvered Bronze Gauntlets
			i(12632),	-- Storm Gauntlets
			i(12639),	-- Stronghold Gauntlets
			i(7938),	-- Truesilver Gauntlets
		}),
		n(-326, {		-- Wrist
			i(17014),	-- Dark Iron Bracers
			i(6040),	-- Golden Scale Bracers
			i(3835),	-- Green Iron Bracers
			i(22671, {	-- Icebane Bracers
				["u"] = 3,
			}),
			i(12425),	-- Imperial Plate Bracers
			i(7924),	-- Mithril Scale Bracers
			i(2868),	-- Patterned Bronze Bracers
			i(2854),	-- Runed Copper Bracers
			i(12408),	-- Thorium Bracers
		}),
		n(-328, {		-- Waist
			i(16989),	-- Fiery Chain Girdle
			i(19051),	-- Girdle of the Dawn
			i(22197),	-- Heavy Obsidian Belt
			i(19043),	-- Heavy Timbermaw Belt
			i(12424),	-- Imperial Plate Belt
			i(22764),	-- Ironvine Belt
			i(22195),	-- Light Obsidian Belt
			i(12416),	-- Radiant Belt
			i(2857),	-- Runed Copper Belt
			i(12406),	-- Thorium Belt
		}),
		n(-329, {		-- Legs
			i(17013),	-- Dark Iron Leggings
			i(19694),	-- Darksoul Leggings
			i(12619),	-- Enchanted Thorium Leggings
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
			i(22385),	-- Titanic Leggings
		}),
		n(-330, {		-- Feet
			i(7916),	-- Barbaric Iron Boots
			i(20039),	-- Dark Iron Boots
			i(3847),	-- Golden Scale Boots
			i(3484),	-- Green Iron Boots
			i(7933),	-- Heavy Mithril Boots
			i(19048),	-- Heavy Timbermaw Boots
			i(12426),	-- Imperial Plate Boots
			i(7936),	-- Ornate Mithril Boots
			i(3846),	-- Polished Steel Boots
			i(12419),	-- Radiant Boots
			i(6350),	-- Rough Bronze Boots
			i(12611),	-- Runic Plate Boots
			i(3482),	-- Silvered Bronze Boots
			i(12409),	-- Thorium Boots
		}),
		filter(50, {	-- Miscellaneous
			i(15872),	-- Arcanite Skeleton Key
			i(18262),	-- Elemental Sharpening Stone
			i(15870),	-- Golden Skeleton Key
			i(7967),	-- Mithril Shield Spike
			i(7969),	-- Mithril Spurs
			i(15869),	-- Silver Skeleton Key
			i(12645),	-- Thorium Shield Spike
			i(15871),	-- Truesilver Skeleton Key
		}),
	}),
	prof(ENCHANTING, {
		filter(27, {	-- Wands
			i(11288),	-- Greater Magic Wand
			i(11290),	-- Greater Mystic Wand
			i(11287),	-- Lesser Magic Wand
			i(11289),	-- Lesser Mystic Wand
		}),
		filter(53, {	-- Trinkets
			i(11811),	-- Smoking Heart of the Mountain
		}),
		{
			["categoryID"] = 44,	-- Oils
			["groups"] = {
				i(20748),	-- Brilliant Mana Oil
				i(20749),	-- Brilliant Wizard Oil
				i(20747, {	-- Lesser Mana Oil
					["u"] = 3,	-- Added later
				}),
				i(20746, {	-- Lesser Wizard Oil
					["u"] = 3,	-- Added later
				}),
				i(20745, {	-- Minor Mana Oil
					["u"] = 3,	-- Added later
				}),
				i(20744, {	-- Minor Wizard Oil
					["u"] = 3,	-- Added later
				}),
				i(20750, {	-- Wizard Oil
					["u"] = 3,	-- Added later
				}),
			},
		},
	}),
	prof(ENGINEERING, {
		n(-319, {	-- Weapons
			i(6219),	-- Arclight Spanner
			-- Guns
			i(18282),	-- Core Marksman Rifle*
			i(16004),	-- Dark Iron Rifle*
			i(4369),	-- Deadly Blunderbuss*
			i(16007),	-- Flawless Arcanite Rifle
			i(4372),	-- Lovingly Crafted Boomstick*
			i(10508),	-- Mithril Blunderbuss*
			i(10510),	-- Mithril Heavy-Bore Rifle*
			i(4383),	-- Moonsight Rifle*
			i(4362),	-- Rough Boomstick*
			i(4379),	-- Silver-Plated Shotgun*
			i(15995),	-- Thorium Rifle*
		}),
		filter(8, {	-- Shields
			i(18168),	-- Force Reactive Disk*
		}),
		n(-318, {	-- Armor
			-- Head
			i(19999),	-- Bloodvine Goggles
			i(19998),	-- Bloodvine Lens
			i(10499),	-- Bright-Eye Goggles*
			i(10501),	-- Catseye Ultra Goggles*
			i(4393),	-- Craftsman's Monocle*
			i(10506),	-- Deepdive Helmet*
			i(10500),	-- Fire Goggles*
			i(4368),	-- Flying Tiger Goggles*
			i(10545),	-- Gnomish Goggles*
			i(10726),	-- Gnomish Mind Control Cap*
			i(10543),	-- Goblin Construction Helmet*
			i(10542),	-- Goblin Mining Helmet*
			i(10588),	-- Goblin Rocket Helmet*
			i(10504),	-- Green Lens*
			i(4385),	-- Green Tinted Goggles*
			i(16008),	-- Master Engineer's Goggles*
			i(10503),	-- Rose Colored Goggles*
			i(4373),	-- Shadow Goggles*
			i(10502),	-- Spellpower Goggles Xtreme*
			i(15999),	-- Spellpower Goggles Xtreme Plus*
			-- Neck
			i(16009),	-- Voice Amplification Modulator*
			-- Back
			i(10518),	-- Parachute Cloak*
			-- Waist
			i(10721),	-- Gnomish Harm Prevention Belt*
			-- Feet
			i(10724),	-- Gnomish Rocket Boots*
			i(7189),	-- Goblin Rocket Boots*
		}),
		filter(200, {	-- Recipes
			i(10644, {	-- Recipe: Goblin Rocket Fuel (Engineers make the recipe for alchemists)
				["description"] = "This recipe is crafted by Engineers and given to Alchemists to learn so that the Alchemist can craft the item needed by the Engineer.\n\nIf you are missing this recipe, ask an Engineer to craft it for you.",
			}),
			i(10713, {	-- Plans: Inlaid Mithril Cylinder
				["description"] = "This recipe is crafted by Engineers and given to Blacksmiths to learn so that the Blacksmith can craft the item needed by the Engineer.\n\nIf you are missing this recipe, ask an Engineer to craft it for you.",
			}),
		}),
		filter(50, {	-- Miscellaneous
			i(4407),	-- Accurate Scope
			i(4392),	-- Advanced Target Dummy
			i(6533),	-- Aquadynamic Fish Attractor
			i(16040),	-- Arcane Bomb
			i(18283),	-- Biznicks 247x128 Accurascope
			i(4405),	-- Crude Scope
			i(10546),	-- Deadly Scope
			i(18645),	-- Gnomish Alarm-O-Bot
			i(15996),	-- Lifelike Mechanical Toad*
			i(11826),	-- Lil' Smoky*
			i(4401),	-- Mechanical Squirrel Box*
			i(5507),	-- Ornate Spyglass
			i(11825),	-- Pet Bombling*
			i(21277),	-- Tranquil Mechanical Yeti*
			i(10548),	-- Sniper Scope
			i(17716),	-- Snowmaster 9000*
			i(4406),	-- Standard Scope
			i(18660),	-- World Enlarger*
		}),
		filter(53, {	-- Trinkets
			i(16022),	-- Arcanite Dragonling*
			i(18984),	-- Dimensional Ripper - Everlook*
			i(4397),	-- Gnomish Cloaking Device*
			i(10720),	-- Gnomish Net-o-Matic Projector*
			i(10716),	-- Gnomish Shrink Ray*
			i(7506),	-- Gnomish Universal Remote*
			i(10577),	-- Goblin Mortar*
			i(18634),	-- Gyrofreeze Ice Reflector*
			i(18638),	-- Hyper-Radiant Flame Reflector
			i(18637),	-- Major Recombobulator*
			i(4396),	-- Mechanical Dragonling*
			i(4381),	-- Minor Recombobulator*
			i(10576),	-- Mithril Mechanical Dragonling*
			i(18639),	-- Ultra-Flash Shadow Reflector*
			i(18986),	-- Ultrasafe Transporter: Gadgetzan*
		}),
	}),
	prof(LEATHERWORKING, {
		filter(113, {	-- Bags
			i(7372),	-- Heavy Leather Ammo Pouch
			i(7371),	-- Heavy Quiver
			i(8217),	-- Quickdraw Quiver
			i(8218),	-- Thick Leather Ammo Pouch
		}),
		filter(3, {	-- Cloak
			i(18509),	-- Chromatic Cloak
			i(6466),	-- Deviate Scale Cloak
			i(18510),	-- Hide of the Wild
			i(18511),	-- Shifting Cloak
			i(8215),	-- Wild Leather Cloak
			i(8216),	-- Big Voodoo Cloak
			i(7283),	-- Black Whelp Cloak
			i(2316),	-- Dark Leather Cloak
			i(2310),	-- Embossed Leather Cloak
			i(2308),	-- Fine Leather Cloak
			i(7377),	-- Frost Leather Cloak
			i(5965),	-- Guardian Cloak
			i(3719),	-- Hillman's Cloak
			i(15138),	-- Onyxia Scale Cloak
		}),
		filter(5, {	-- Leather
			n(-320, {	-- Head
				i(22759),	-- Bramblewood Helm
				i(16983),	-- Molten Helm
				i(15094),	-- Runic Leather Headband (Trainable now, old Pattern id 15756 used to teach this.)
				i(15086),	-- Wicked Leather Headband (Trainable now, old Pattern id 15744 used to teach this.)
				i(8348),	-- Helm of Fire
				i(8345),	-- Wolfshead Helm
				i(8214),	-- Wild Leather Helmet
				i(8201),	-- Big Voodoo Mask
				i(8176),	-- Nightscape Headband
				i(8174),	-- Comfortable Leather Hat
			}),
			n(-321, {	-- Shoulder
				i(19689),	-- Blood Tiger Shoulders
				i(15058),	-- Stormshroud Shoulders
				i(15055),	-- Volcanic Shoulders
				i(19058),	-- Golden Mantle of the Dawn
				i(15061),	-- Living Shoulders
				i(15096),	-- Runic Leather Shoulders (Trainable now, old Pattern id 15777 used to teach this.)
				i(15067),	-- Ironfeather Shoulders
				i(8210),	-- Wild Leather Shoulders
				i(8192),	-- Nightscape Shoulders
				i(5964),	-- Barbaric Shoulders
				i(4252),	-- Dark Leather Shoulders
				i(7352),	-- Earthen Leather Shoulders
				i(4251),	-- Hillman's Shoulders
			}),
			n(-323, {	-- Chest
				i(22661),	-- Polar Tunic
				i(19688),	-- Blood Tiger Breastplate
				i(19685),	-- Primal Batskin Jerkin
				i(15059),	-- Living Breastplate
				i(15090),	-- Runic Leather Armor (Trainable now, old Pattern id 15776 used to teach this.)
				i(15085),	-- Wicked Leather Armor (Trainable now, old Pattern id 15773 used to teach this.)
				i(15066),	-- Ironfeather Breastplate
				i(15056),	-- Stormshroud Armor
				i(15075),	-- Chimeric Vest
				i(15053),	-- Volcanic Breastplate
				i(15064),	-- Warbear Harness
				i(15068),	-- Frostsaber Tunic
				i(8349),	-- Feathered Breastplate
				i(8211),		-- Wild Leather Vest
				i(8200),	-- Big Voodoo Robe
				i(8175),	-- Nightscape Tunic
				i(5739),	-- Barbaric Harness
				i(7375),	-- Green Whelp Armor
				i(7374),	-- Dusky Leather Armor
				i(4256),	-- Guardian Armor
				i(5782),	-- Thick Murloc Armor
				{
					["itemID"] = 4455,	-- Raptor Hide Harness (Horde only)
					["races"] = HORDE_ONLY,
				},
				i(4255),	-- Green Leather Armor
				i(2314),	-- Toughened Leather Armor
				i(5781),	-- Murloc Scale Breastplate
				i(2317),	-- Dark Leather Tunic
				i(4244),	-- Hillman's Leather Vest
				i(20575),	-- Black Whelp Tunic
				i(6709),	-- Moonglow Vest
				i(4243),	-- Fine Leather Tunic
				i(2311),	-- White Leather Jerkin
				i(2300),	-- Embossed Leather Vest
			}),
			n(-326, {	-- Wrists
				i(22663),	-- Polar Bracers
				i(19687),	-- Primal Batskin Bracers
				i(15092),	-- Runic Leather Bracers (Trainable now, old Pattern id 15739 used to teach this.)
				i(15084),	-- Wicked Leather Bracers (Trainable now, old Pattern id 15728 used to teach this.)
				i(4260),	-- Guardian Leather Bracers
				i(7386),	-- Green Whelp Bracers
				i(5783),	-- Murloc Scale Bracers
				i(7378),	-- Dusky Bracers
				i(4259),	-- Green Leather Bracers
				i(18948),	-- Barbaric Bracers
				i(7281),	-- Light Leather Bracers
			}),
			n(-327, {	-- Hands
				i(19049),	-- Timbermaw Brawlers
				i(22662),	-- Polar Gloves
				i(19686),	-- Primal Batskin Gloves
				i(15070),	-- Frostsaber Gloves
				i(15063),	-- Devilsaur Gauntlets
				i(21278),	-- Stormshroud Gloves
				i(15091),	-- Runic Leather Gauntlets (Trainable now, old Pattern id 15731 used to teach this.)
				i(15083),	-- Wicked Leather Gauntlets (Trainable now, old Pattern id 15725 used to teach this.)
				i(15074),	-- Chimeric Gloves
				i(8346),	-- Gauntlets of the Sea
				i(18238),	-- Shadowskin Gloves
				un(29, i(17721)),	-- Gloves of the Greatfather
				i(5966),	-- Guardian Gloves
				i(4247),	-- Hillman's Leather Gloves
				i(7359),	-- Heavy Earthen Gloves
				i(4254),	-- Barbaric Gloves
				i(7358),	-- Pilferer's Gloves
				i(4253),	-- Toughened Leather Gloves
				i(4248),	-- Dark Leather Gloves
				i(7285),	-- Nimble Leather Gloves
				i(7284),	-- Red Whelp Gloves
				i(7349),	-- Herbalist's Gloves
				i(6467),		-- Deviate Scale Gloves
				i(2312),	-- Fine Leather Gloves
				i(4239),	-- Embossed Leather Gloves
			}),
			n(-328, {	-- Waist
				i(18504),	-- Girdle of Insight
				i(22761),	-- Bramblewood Belt
				i(19163),	-- Molten Belt
				i(19162),	-- Corehound Belt
				i(19149),	-- Lava Belt
				i(15088),	-- Wicked Leather Belt (Trainable now, old Pattern id 15768 used to teach this.)
				i(19044),	-- Might of the Timbermaw
				i(15093),	-- Runic Leather Belt (Trainable now, old Pattern id 15745 used to teach this.)
				i(4264),	-- Barbaric Belt
				i(7387),	-- Dusky Belt
				i(4262),	-- Gem-Studded Leather Belt
				i(4258),	-- Guardian Belt
				{
					["itemID"] = 4456,	-- Raptor Hide Belt (Alliance only)
					["races"] = ALLIANCE_ONLY,
				},
				i(4257),	-- Green Leather Belt
				i(4249),	-- Dark Leather Belt
				i(4250),	-- Hillman's Belt
				i(6468),	-- Deviate Scale Belt
				i(5780),	-- Murloc Scale Belt
				i(4246),	-- Fine Leather Belt
			}),
			n(-329, {	-- Legs
				i(15095),	-- Runic Leather Pants (Trainable now, old Pattern id 15765 used to teach this.)
				i(15062),	-- Devilsaur Leggings
				i(15069),	-- Frostsaber Leggings
				i(15065),	-- Warbear Woolies
				i(15087),	-- Wicked Leather Pants (Trainable now, old Pattern id 15757 used to teach this.)
				i(15060),	-- Living Leggings
				i(15072),	-- Chimeric Leggings
				i(15057),	-- Stormshroud Pants
				i(15054),	-- Volcanic Leggings
				i(8212),		-- Wild Leather Leggings
				i(8202),	-- Big Voodoo Pants
				i(8193),	-- Nightscape Pants
				i(5963),	-- Barbaric Leggings
				i(7373),	-- Dusky Leather Leggings
				i(5962),	-- Guardian Pants
				i(5961),	-- Dark Leather Pants
				i(5958),	-- Fine Leather Pants
				i(7282),	-- Light Leather Pants
				i(4242),	-- Embossed Leather Pants
				i(7280),	-- Rugged Leather Pants
			}),
			n(-330, {	-- Feet
				i(22760),	-- Bramblewood Boots
				i(16982),	-- Corehound Boots
				i(18506),	-- Mongoose Boots
				i(19052),	-- Dawn Treaders
				i(15073),	-- Chimeric Boots
				i(15071),	-- Frostsaber Boots
				i(8213),		-- Wild Leather Boots
				i(8197),	-- Nightscape Boots
				i(7391),	-- Swift Boots
				i(7390),	-- Dusky Boots
				i(2315),	-- Dark Leather Boots
				i(2307),	-- Fine Leather Boots
				i(2309),	-- Embossed Leather Boots
			}),
		}),
		filter(6, {	-- Mail
			n(-320, {	-- Head
				i(15080),	-- Heavy Scorpid Helm
				i(8208),	-- Tough Scorpid Helm
				i(8191),	-- Turtle Scale Helm
			}),
			n(-321, {	-- Shoulder
				i(15049),	-- Blue Dragonscale Shoulders
				i(15051),	-- Black Dragonscale Shoulders
				i(15081),	-- Heavy Scorpid Shoulders
				i(8207),	-- Tough Scorpid Shoulders
			}),
			n(-323, {	-- Chest
				un(NEVER_IMPLEMENTED, i(15141)),	-- Onyxia Scale Breastplate (never made it out of Beta)
				i(20479),	-- Spitfire Breastplate
				i(20478),	-- Sandstalker Breastplate
				i(20380),	-- Dreamscale Breastplate
				i(22664),	-- Icy Scale Breastplate
				i(15047),	-- Red Dragonscale Breastplate
				i(15048),	-- Blue Dragonscale Breastplate
				i(15050),	-- Black Dragonscale Breastplate
				i(15045),	-- Green Dragonscale Breastplate
				i(15076),	-- Heavy Scorpid Vest
				i(8367),	-- Dragonscale Breastplate
				i(8203),	-- Tough Scorpid Breastplate
				i(8189),	-- Turtle Scale Breastplate
			}),
			n(-326, {	-- Wrists
				i(22665),	-- Icy Scale Bracers
				i(18508),	-- Swift Flight Bracers
				i(20481),	-- Spitfire Bracers
				i(20476),	-- Sandstalker Bracers
				i(15077),	-- Heavy Scorpid Bracers
				i(8205),	-- Tough Scorpid Bracers
				i(8198),	-- Turtle Scale Bracers
			}),
			n(-327, {	-- Hands
				i(19157),	-- Chromatic Gauntlets
				i(22666),	-- Icy Scale Gauntlets
				i(20480),	-- Spitfire Gauntlets
				i(20477),	-- Sandstalker Gauntlets
				i(15078),	-- Heavy Scorpid Gauntlets
				i(20296),	-- Green Dragonscale Gauntlets
				i(8347),		-- Dragonscale Gauntlets
				i(8204),	-- Tough Scorpid Gloves
				i(8187),	-- Turtle Scale Gloves
				i(7348),	-- Fletcher's Gloves
			}),
			n(-328, {	-- Waist
				i(15082),	-- Heavy Scorpid Belt
			}),
			n(-329, {	-- Legs
				i(15052),	-- Black Dragonscale Leggings
				i(20295),	-- Blue Dragonscale Leggings
				i(15079),	-- Heavy Scorpid Leggings
				i(15046),	-- Green Dragonscale Leggings
				i(8206),	-- Tough Scorpid Leggings
				i(8185),	-- Turtle Scale Leggings
			}),
			n(-330, {	-- Feet
				i(16984),	-- Black Dragonscale Boots
				i(8209),	-- Tough Scorpid Boots
			}),
		}),
		filter(50, {	-- Miscellaneous
			i(18251),	-- Core Armor Kit
		}),
	}),
	prof(MINING, {
		
	}),
	prof(TAILORING, {
		filter(113, {	-- Bags
			i(22249),	-- Big Bag of Enchantment
			i(5765),	-- Black Silk Pack
			i(14156),	-- Bottomless Bag
			i(22251),	-- Cenarion Herb Bag
			i(21342),	-- Core Felcloth Bag
			i(22246),	-- Enchanted Mageweave Pouch
			i(22248),	-- Enchanted Runecloth Bag
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
			un(3, i(22252)),	-- Satchel of Cenarius [Not available yet.]
			i(4245),	-- Small Silk Pack
			i(21340),	-- Soul Pouch
			i(4240),	-- Woolen Bag
		}),
		n(-323, {	-- Chest
			i(19682),	-- Bloodvine Vest
			i(22652),	-- Glacial Vest
			i(14153),	-- Robe of the Void
			i(4324),	-- Azure Silk Vest
			i(2578),	-- Barbaric Linen Vest
			i(10001),	-- Black Mageweave Robe
			i(9998),	-- Black Mageweave Vest
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
			i(19156),	-- Flarecore Robe
			i(13868),	-- Frostweave Robe
			i(13869),	-- Frostweave Tunic
			i(14141),	-- Ghostweave Vest
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
			i(14136),	-- Robe of Winter Night
			i(5770),	-- Robes of Arcana
			i(13858),	-- Runecloth Robe
			i(13857),	-- Runecloth Tunic
			i(10004),	-- Shadoweave Robe
			i(22756),	-- Sylvan Vest
			i(14154),	-- Truefaith Vestments
			i(6241),	-- White Linen Robe
			i(14128),	-- Wizardweave Robe
		}),
		n(-322, {	-- Cloaks
			i(22658),	-- Glacial Cloak
			i(7053),	-- Azure Silk Cloak
			i(14103),	-- Brightcloth Cloak
			i(14044),	-- Cindercloth Cloak
			i(14134),	-- Cloak of Fire
			i(18413),	-- Cloak of Warding
			i(7056),	-- Crimson Silk Cloak
			i(22660),	-- Gaea's Embrace
			i(4311),	-- Heavy Woolen Cloak
			i(4327),	-- Icy Cloak
			i(4326),	-- Long Silken Cloak
			i(5542),	-- Pearl-Clasped Cloak
			i(2580),	-- Reinforced Linen Cape
			i(13860),	-- Runecloth Cloak
		}),
		n(-330, {	-- Feet
			i(19684),	-- Bloodvine Boots
			un(NEVER_IMPLEMENTED, i(7027)),		-- Boots of Darkness
			i(19056),	-- Argent Boots
			i(10026),	-- Black Mageweave Boots
			i(4325),	-- Boots of the Enchanter
			i(10044),	-- Cindercloth Boots
			i(14108),	-- Felcloth Boots
			i(2569),	-- Linen Boots
			i(15802),	-- Mooncloth Boots
			i(4313),	-- Red Woolen Boots
			i(13864),	-- Runecloth Boots
			i(20537),	-- Runed Stygian Boots
			i(10031),	-- Shadoweave Boots
			i(4312),	-- Soft-Soled Linen Boots
			i(4321),	-- Spider Silk Slippers
			i(4320),	-- Spidersilk Boots
			i(2583),	-- Woolen Boots
		}),
		n(-327, {	-- Hands
			i(22654),	-- Glacial Gloves
			i(4319),	-- Azure Silk Gloves
			i(10003),	-- Black Mageweave Gloves
			i(14101),	-- Brightcloth Gloves
			i(14043),	-- Cindercloth Gloves
			i(7064),	-- Crimson Silk Gloves
			i(10019),	-- Dreamweave Gloves
			i(18407),	-- Felcloth Gloves
			i(16979),	-- Flarecore Gloves
			i(13870),	-- Frostweave Gloves
			i(14142),	-- Ghostweave Gloves
			i(4318),	-- Gloves of Meditation
			i(14146),	-- Gloves of Spell Mastery
			i(7047),	-- Hands of Darkness
			i(4307),	-- Heavy Linen Gloves
			i(4310),	-- Heavy Woolen Gloves
			i(18408),	-- Inferno Gloves
			i(18409),	-- Mooncloth Gloves
			i(4331),	-- Phoenix Gloves
			i(10018),	-- Red Mageweave Gloves
			i(13863),	-- Runecloth Gloves
			i(10023),	-- Shadoweave Gloves
			i(7049),	-- Truefaith Gloves
		}),
		n(-320, {	-- Head
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
			i(10025, {	-- Shadoweave Mask
				["description"] = "Required for the |cff3399ffLucid Nightmare|r riddle mount.",
			}),
			i(7050),	-- Silk Headband
			i(22757),	-- Sylvan Crown
			i(10008),	-- White Bandit Mask
			i(14130),	-- Wizardweave Turban
		}),
		n(-329, {	-- Legs
			i(19683),	-- Bloodvine Leggings
			i(7046),	-- Azure Silk Pants
			i(9999),	-- Black Mageweave Leggings
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
			i(20538),	-- Runed Stygian Leggings
			i(10002),	-- Shadoweave Pants
			i(10047),	-- Simple Kilt
			i(14132),	-- Wizardweave Leggings
		}),
		filter(10, {	-- Shirts
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
		n(-321, {	-- Shoulders
			i(19059),	-- Argent Shoulders
			i(7060),	-- Azure Shoulders
			i(10027),	-- Black Mageweave Shoulders
			i(7059),	-- Crimson Silk Shoulders
			i(4314),	-- Double-stitched Woolen Shoulders
			i(14112),	-- Felcloth Shoulders
			i(16980),	-- Flarecore Mantle
			i(7057),	-- Green Silken Shoulders
			i(19050),	-- Mantle of the Timbermaw
			i(14139),	-- Mooncloth Shoulders
			i(10029),	-- Red Mageweave Shoulders
			i(4315),	-- Reinforced Woolen Shoulders
			i(13867),	-- Runecloth Shoulders
			i(10028),	-- Shadoweave Shoulders
			i(22758),	-- Sylvan Shoulders
		}),
		n(-328, {	-- Waist
			i(7052),	-- Azure Silk Belt
			i(18405),	-- Belt of the Archmage
			i(7055),	-- Crimson Silk Belt
			i(7061),	-- Earthen Silk Belt
			i(14143),	-- Ghostweave Belt
			i(13856),	-- Runecloth Belt
			i(20539),	-- Runed Stygian Belt
			i(4328),	-- Spider Belt
			i(4329),	-- Star Belt
			i(19047),	-- Wisdom of the Timbermaw
		}),
		n(-326, {	-- Wrist
			i(22655),	-- Glacial Wrists
			i(18263),	-- Flarecore Wraps
			i(4308),	-- Green Linen Bracers
		}),
	}),
};