---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(STONETALON_MOUNTAINS, {
			n(VENDORS, {
				n(9549, {	-- Borand <Bowyer>
					["coord"] = { 45.2, 59.2, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11304),	-- Fine Longbow
					},
				}),
				n(4083, {	-- Jeeda <Apprentice Witch Doctor>
					["coord"] = { 47.6, 61.6, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6055),	-- Recipe: Fire Protection Potion
					},
				}),
				n(12043, {	-- Kulwia <Trade Supplies>
					["coord"] = { 45.4, 59.4, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11039),	-- Formula: Enchant Cloak - Minor Agility
						i(11101),	-- Formula: Enchant Bracer - Lesser Strength
					},
				}),
				n(4085, {	-- Nizzik <Venture Armor Salesman>
					["coord"] = { 62.6, 40.2, STONETALON_MOUNTAINS },
					["groups"] = {
						i(4827),	-- Wizard's Belt
						i(4828),	-- Nightwind Belt
						i(4829),	-- Dreamer's Belt
						i(4830),	-- Saber Leggings
						i(4831),	-- Stalking Pants
						i(4832),	-- Mystic Sarong
						i(4833),	-- Glorious Shoulders
						i(4835),	-- Elite Shoulders
					},
				}),
				n(4086, {	-- Veenix <Venture Co. Merchant>
					["coord"] = { 58.2, 51.6, STONETALON_MOUNTAINS },
					["groups"] = {
						i(4817),	-- Orb of Power
						i(4818),	-- Executioner's Sword
						i(4836),	-- Fireproof Orb
						i(4837),	-- Strength of Will
						i(4838),	-- Orb of Power
						i(7561),	-- Schematic: Goblin Jumper Cables
					},
				}),
			}),
		}),
	}),
};