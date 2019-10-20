-----------------------------------------------------
--       W O R L D   D R O P S   M O D U L E       --
-----------------------------------------------------
_.WorldDrops =
{
	n(-318, {	-- Armor
		n(-320, {	-- Head
		}),
		n(-321, {	-- Shoulder
			i(13103),  -- Pads of the Venom Spider
		}),
		n(-322, {	-- Back
			i(4701),  -- Inscribed Cloak
			i(9779),  -- Bandit Cloak
		}),
		n(-323, {	-- Chest
			i(821),  -- Riverpaw Leather Vest
			i(2977),  -- Veteran Armor
			i(3313),  -- Ceremonial Leather Harness
		}),
		n(-324, {	-- Shirt
		}),
		n(-326, {	-- Wrist
			i(14723),  -- War Paint Bindings
		}),
		n(-327, {	-- Hands
			i(1448),  -- Blackrock Gauntlets
			i(10369),  -- Imbued Plate Gauntlets
			i(14117), -- Aboriginal Gloves
			i(14168),  -- Buccaneer's Gloves
		}),
		n(-328, {	-- Waist
		}),
		n(-329, {	-- Legs
			i(9756), -- Gypsy Trousers
		}),
		n(-330, {	-- Feet
			i(2983),  -- Seer's Boots
			i(6557),  -- Bard's Boots
		}),
		filter(51, {	-- Neck
			i(13087),  -- River Pride Choker
		}),
	}),
	n(-319, {	-- Weapons		
		n(-334, {	-- 1H Axes
			i(871),  -- Flurry Axe
		}),
		n(-335, {	-- 2H Axes
		}),	
		n(-346, {	-- Bows
			i(3036),  -- Heavy Shortbow
		}),
		n(-347, {	-- Crossbows
		}),			
		n(-333, {	-- Daggers
			i(1287),  -- Giant Tarantula Fang
			i(2140),  -- Carving Knife
			i(2632),  -- Curved Dagger			
		}),
		n(-348, {	-- Fist Weapons	
		}),
		n(-345, {	-- Guns
		}),			
		n(-331, {	-- Held in Off-hand
		}),
		n(-336, {	-- 1H Maces
			i(789),  -- Stout Battlehammer
			i(4090),  -- Mug O' Hurt
		}),
		n(-337, {	-- 2H Maces
		}),
		n(-343, {	-- Polearms
		}),			
		n(-332, {	-- Shield
			i(9764),  -- Cadet Shield
			i(15298),  -- Grizzly Buckler
			i(15943),  -- Imbued Shield
		}),
		n(-342, {	-- Staves
		}),
		n(-338, {	-- 1H Swords
			i(727),  -- Notched Shortsword
			i(2011),  -- Twisted Sabre
			i(15210),  -- Raider Shortsword
		}),
		n(-339, {	-- 2H Swords
		}),
		n(-341, {	-- Wands
		}),
	}),	
	filter(200, {	-- Recipes
		["g"] = {
			profession(171, {	-- Alchemy
				i(3832),	-- Recipe: Elixir of Detect Lesser Invisibility
				i(9297),	-- Recipe: Elixir of Dream Vision
				i(3830),	-- Recipe: Elixir of Fortitude
				i(9298),	-- Recipe: Elixir of Giants
				i(3396),	-- Recipe: Elixir of Lesser Agility
				i(2553),	-- Recipe: Elixir of Minor Agility
				i(6211),	-- Recipe: Elixir of Ogre's Strength
				i(3394),	-- Recipe: Elixir of Poison Resistance
				i(13493),	-- Recipe: Greater Arcane Elixir
				i(13490),	-- Recipe: Greater Stoneshield Potion
				i(3395),	-- Recipe: Limited Invulnerability Potion
				i(3831),	-- Recipe: Mighty Troll's Blood Potion
				i(13492),	-- Recipe: Purification Potion
				i(2555),	-- Recipe: Swiftness Potion
				i(9293),	-- Recipe: Magic Resistance Potion
				i(3393),	-- Recipe: Minor Magic Resistance Potion
			}),
			profession(164, {	-- Blacksmithing
				i(7992),	-- Plans: Blue Glittering Axe
				i(3609),	-- Plans: Copper Chain Vest
				i(12698),	-- Plans: Dawnbringer Shoulders
				i(7993),	-- Plans: Dazzling Mithril Rapier
				i(2883),	-- Plans: Deadly Bronze Poniard
				i(3868),	-- Plans: Frost Tiger Blade
				i(3610),	-- Plans: Gemmed Copper Gauntlets
				i(3867),	-- Plans: Golden Iron Destroyer
				i(3875),	-- Plans: Golden Scale Boots
				i(3873),	-- Plans: Golden Scale Cuirass
				i(3872),	-- Plans: Golden Scale Leggings
				i(3871),	-- Plans: Golden Scale Shoulders
				i(3611),	-- Plans: Green Iron Boots
				i(3612),	-- Plans: Green Iron Gauntlets
				i(3870),	-- Plans: Green Iron Shoulders
				i(7975),	-- Plans: Heavy Mithril Pants
				i(7990),	-- Plans: Heavy Mithril Helm
				i(12716),	-- Plans: Helm of the Great Chief
				i(5543),	-- Plans: Iridescent Hammer
				i(6045),	-- Plans: Iron Counterweight
				i(6044),	-- Plans: Iron Shield Spike
				i(3866),	-- Plans: Jade Serpentblade
				i(12717),	-- Plans: Lionheart Helm
				i(3608),	-- Plans: Mighty Iron Hammer
				i(7991),	-- Plans: Mithril Scale Shoulders
				i(7976),	-- Plans: Mithril Shield Spike
				i(7989),	-- Plans: Mithril Spurs
				i(22390),	-- Plans: Persuader
				i(3874),	-- Plans: Polished Steel Boots
				i(12685),	-- Plans: Radiant Belt
				i(12697),	-- Plans: Radiant Boots
				i(12689),	-- Plans: Radiant Breastplate
				i(12702),	-- Plans: Radiant Circlet
				i(12695),	-- Plans: Radiant Gloves
				i(12713),	-- Plans: Radiant Leggings
				i(2881),	-- Plans: Runed Copper Breastplate
				i(22389),	-- Plans: Sageblade
				i(12261),	-- Plans: Searing Golden Blade
				i(3869),	-- Plans: Shadow Crescent Axe
				i(5578),	-- Plans: Silvered Bronze Breastplate
				i(10424),	-- Plans: Silvered Bronze Leggings
				i(2882),	-- Plans: Silvered Bronze Shoulders
				i(6046),	-- Plans: Steel Weapon Chain
				i(12720),	-- Plans: Stronghold Gauntlets
				i(12682),	-- Plans: Thorium Armor
				i(12683),	-- Plans: Thorium Belt
				i(12693),	-- Plans: Thorium Boots
				i(12684),	-- Plans: Thorium Bracers
				i(12694),	-- Plans: Thorium Helm
				i(12704),	-- Plans: Thorium Leggings
				i(12692),	-- Plans: Thorium Shield Spike
				i(22388),	-- Plans: Titanic Leggings
				i(8029),	-- Plans: Wicked Mithril Blade
				i(12711),	-- Plans: Whitesoul Helm
				i(12691),	-- Plans: Wildthorn Mail
			}),
			profession(333, {	-- Enchanting
				i(11038),	-- Formula: Enchant 2H Weapon - Lesser Spirit
				i(16245),	-- Formula: Enchant Boots - Greater Agility
				i(16215),	-- Formula: Enchant Boots - Greater Stamina
				i(11167),	-- Formula: Enchant Boots - Lesser Spirit
				i(16220),	-- Formula: Enchant Boots - Spirit
				i(11204),	-- Formula: Enchant Bracer - Greater Spirit
				i(11225),	-- Formula: Enchant Bracer - Greater Stamina
				i(6375),	-- Formula: Enchant Bracer - Lesser Spirit
				i(6344),	-- Formula: Enchant Bracer - Minor Spirit
				i(6347),	-- Formula: Enchant Bracer - Minor Strength
				i(16218),	-- Formula: Enchant Bracer - Superior Spirit
				i(16251),	-- Formula: Enchant Bracer - Superior Stamina
				i(16253),	-- Formula: Enchant Chest - Greater Stats
				i(11098),	-- Formula: Enchant Cloak - Lesser Shadow Resistance
				i(11226),	-- Formula: Enchant Gloves - Riding Skill
				i(11224),	-- Formula: Enchant Shield - Frost Resistance
				i(11168),	-- Formula: Enchant Shield - Lesser Block
				i(11081),	-- Formula: Enchant Shield - Lesser Protection
				i(11202),	-- Formula: Enchant Shield - Stamina
				i(11208),	-- Formula: Enchant Weapon - Demonslaying
				i(11164),	-- Formula: Enchant Weapon - Lesser Beastslayer
				i(11165),	-- Formula: Enchant Weapon - Lesser Elemental Slayer
				i(6348),	-- Formula: Enchant Weapon - Minor Beastslayer
			}),
			profession(202, {	-- Engineering
				i(16055),	-- Schematic: Arcane Bomb
				i(10601),	-- Schematic: Bright-Eye Goggles
				i(10603),	-- Schematic: Catseye Ultra Goggles
				i(16044),	-- Schematic: Lifelike Mechanical Toad
				i(4408),	-- Schematic: Mechanical Squirrel
				i(10604),	-- Schematic: Mithril Heavy-bore Rifle
				i(10606),	-- Schematic: Parachute Cloak
				i(10608),	-- Schematic: Sniper Scope
				i(10605),	-- Schematic: Spellpower Goggles Xtreme
				i(16043),	-- Schematic: Thorium Rifle
				i(16051),	-- Schematic: Thorium Shells
			}),
			profession(129, {	-- First Aid
				i(6454),	-- Manual: Strong Anti-Venom
			}),
			profession(165, {	-- Leatherworking
				i(4301),	-- Pattern: Barbaric Belt
				i(4297),	-- Pattern: Barbaric Gloves
				i(8390),	-- Pattern: Big Voodoo Cloak
				i(8387),	-- Pattern: Big Voodoo Mask
				i(8389),	-- Pattern: Big Voodoo Pants
				i(8386),	-- Pattern: Big Voodoo Robe
				i(15737),	-- Pattern: Chimeric Boots
				i(15746),	-- Pattern: Chimeric Leggings
				i(15755),	-- Pattern: Chimeric Vest
				i(8384),	-- Pattern: Comfortable Leather Hat
				i(4296),	-- Pattern: Dark Leather Shoulders
				i(2409),	-- Pattern: Dark Leather Tunic
				i(7452),	-- Pattern: Dusky Boots
				i(7449),	-- Pattern: Dusky Leather Leggings
				i(2406),	-- Pattern: Fine Leather Boots
				i(2408),	-- Pattern: Fine Leather Gloves
				i(5972),	-- Pattern: Fine Leather Pants
				i(7450),	-- Pattern: Green Whelp Armor
				i(4299),	-- Pattern: Guardian Armor
				i(4298),	-- Pattern: Guardian Belt
				i(5974),	-- Pattern: Guardian Cloak
				i(4300),	-- Pattern: Guardian Leather Bracers
				i(7364),	-- Pattern: Heavy Earthen Gloves
				i(15743),	-- Pattern: Heavy Scorpid Belt
				i(4294),	-- Pattern: Hillman's Belt
				i(4293),	-- Pattern: Hillman's Leather Vest
				i(7363),	-- Pattern: Pilferer's Gloves
				i(15745),	-- Pattern: Runic Leather Belt
				i(15731),	-- Pattern: Runic Leather Gauntlets
				i(15765),	-- Pattern: Runic Leather Pants
				i(7288),	-- Pattern: Rugged Leather Pants
				i(7453),	-- Pattern: Swift Boots
				i(2407),	-- Pattern: White Leather Jerkin
				i(15757),	-- Pattern: Wicked Leather Pants
			}),
			profession(197, {	-- Tailoring
				i(7085),	-- Pattern: Azure Shoulders
				i(4352),	-- Pattern: Boots of the Enchanter
				i(14510),	-- Pattern: Bottomless Bag
				i(14484),	-- Pattern: Brightcloth Cloak
				i(14479),	-- Pattern: Brightcloth Gloves
				i(14494),	-- Pattern: Brightcloth Pants
				i(14478),	-- Pattern: Brightcloth Robe
				i(10316),	-- Pattern: Colorful Kilt
				i(7084),	-- Pattern: Crimson Silk Shoulders
				i(7086),	-- Pattern: Earthen Silk Belt
				i(14492),	-- Pattern: Felcloth Boots
				i(14496),	-- Pattern: Felcloth Hood
				i(14506),	-- Pattern: Felcloth Robe
				i(14508),	-- Pattern: Felcloth Shoulders
				i(14474),	-- Pattern: Frostweave Gloves
				i(14489),	-- Pattern: Frostweave Pants
				i(14467),	-- Pattern: Frostweave Robe
				i(14466),	-- Pattern: Frostweave Tunic
				i(2601),	-- Pattern: Gray Woolen Robe
				i(7090),	-- Pattern: Green Silk Armor
				i(5774),	-- Pattern: Green Silk Pack
				i(4292),	-- Pattern: Green Woolen Bag
				i(7092),	-- Pattern: Hands of Darkness
				i(4346),	-- Pattern: Heavy Woolen Cloak
				i(14499),	-- Pattern: Mooncloth Bag
				i(4348),	-- Pattern: Phoenix Gloves
				i(4349),	-- Pattern: Phoenix Pants
				i(2598),	-- Pattern: Red Linen Robe
				i(6271),	-- Pattern: Red Linen Vest
				i(10312),	-- Pattern: Red Mageweave Gloves
				i(10320),	-- Pattern: Red Mageweave Headband
				i(10302),	-- Pattern: Red Mageweave Pants
				i(10315),	-- Pattern: Red Mageweave Shoulders
				i(10300),	-- Pattern: Red Mageweave Vest
				i(4345),	-- Pattern: Red Woolen Boots
				i(4347),	-- Pattern: Reinforced Woolen Shoulders
				i(4354),	-- Pattern: Rich Purple Silk Shirt
				i(14498),	-- Pattern: Runecloth Headband
				i(14491),	-- Pattern: Runecloth Pants
				i(14504),	-- Pattern: Runecloth Shoulders
				i(14470),	-- Pattern: Runecloth Tunic
				i(4351),	-- Pattern: Shadow Hood
				i(4353),	-- Pattern: Spider Belt
				i(4350),	-- Pattern: Spider Silk Slippers
				i(4356),	-- Pattern: Star Belt
				i(6390),	-- Pattern: Stylish Blue Shirt
				i(6391),	-- Pattern: Stylish Green Shirt
				i(7091),	-- Pattern: Truefaith Gloves
				i(10301),	-- Pattern: White Bandit Mask
			}),
		},
	}),
};