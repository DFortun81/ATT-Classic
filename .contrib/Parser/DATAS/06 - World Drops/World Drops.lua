-----------------------------------------------------
--       W O R L D   D R O P S   M O D U L E       --
-----------------------------------------------------
_.WorldDrops =
{
	filter(200, {	-- Recipes
		["g"] = bubbleDown({["collectible"] = true}, {
			profession(171, {	-- Alchemy
				i(3832),	-- Recipe: Elixir of Detect Lesser Invisibility
				i(9297),	-- Recipe: Elixir of Dream Vision
				i(3830),	-- Recipe: Elixir of Fortitude
				i(9298),	-- Recipe: Elixir of Giants
				i(3396),	-- Recipe: Elixir of Lesser Agility
				i(2553),	-- Recipe: Elixir of Minor Agility
				i(6211),	-- Recipe: Elixir of Ogre's Strength
				i(3394),	-- Recipe: Elixir of Poison Resistance
				i(3395),	-- Recipe: Limited Invulnerability Potion
				i(3831),	-- Recipe: Mighty Troll's Blood Potion
				i(2555),	-- Recipe: Swiftness Potion
				i(9293),	-- Recipe: Magic Resistance Potion
				i(3393),	-- Recipe: Minor Magic Resistance Potion
			}),
			profession(164, {	-- Blacksmithing
				i(12713),	-- Plans: Radiant Leggings
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
		}),
	}),
};