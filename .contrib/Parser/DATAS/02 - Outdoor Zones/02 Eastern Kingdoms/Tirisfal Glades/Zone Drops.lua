---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(TIRISFAL_GLADES, {	-- Tirisfal Glades
			n(0, {	-- Zone Drops
				i(2839, {	-- A Letter to Yvette
					["questID"] = 361,	-- A Letter Undelivered
					["races"] = HORDE_ONLY,
					["crs"] = {
						1523,	-- Cracked Skull Soldier
						1522,	-- Darkeye Bonecaster
						1520,	-- Rattlecage Soldier
					},
				}),
				i(2834, {	-- Embalming Ichor
					["questID"] = 358,	-- Graverobbers
					["races"] = HORDE_ONLY,
					["crs"] = {
						1674,	-- Rot Hide Gnoll
						1941,	-- Rot Hide Graverobber
						1675,	-- Rot Hide Mongrel
					},
				}),
				i(3325, {	-- Vile Fin Battle Axe
					["cr"] = 1545,	-- Vile Fin Muckdweller
				}),
			}),
		}),
	}),
};