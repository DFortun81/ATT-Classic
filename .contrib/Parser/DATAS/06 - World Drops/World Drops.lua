-----------------------------------------------------
--       W O R L D   D R O P S   M O D U L E       --
-----------------------------------------------------
_.WorldDrops =
{
	filter(200, {	-- Recipes
		["g"] = bubbleDown({["collectible"] = true}, {
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
		}),
	}),
};