---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(WESTERN_PLAGUELANDS, {
			n(0, {	-- Zone Drops
				i(16252, {	-- Formula: Enchant Weapon - Crusader
					["cr"] = 4494,	-- Scarlet Spellbinder
				}),
				i(15771, {	-- Pattern: Living Breastplate
					["cr"] = 1813,	-- Decaying Horror
				}),
				i(12836, {	-- Plans: Frostguard
					["cr"] = 1844,	-- Foreman Marcrid
				}),
				i(12707, {	-- Plans: Runic Plate Boots
					["cr"] = 1836,	-- Scarlet Cavalier
				}),
				i(12719, {	-- Plans: Runic Plate Leggings
					["cr"] = 1885,	-- Scarlet Smith
				}),
				i(9296, {	-- Recipe: Gift of Arthas
					["crs"] = {
						1783,	-- Skeletal Flayer
						1791,	-- Slavering Ghoul
					},
				}),
				i(13496, {	-- Recipe: Greater Nature Protection Potion
					["crs"] = {
						1813,	-- Decaying Horror
						1812,	-- Rotting Behemoth
					},
				}),
			}),
		}),
	}),
};