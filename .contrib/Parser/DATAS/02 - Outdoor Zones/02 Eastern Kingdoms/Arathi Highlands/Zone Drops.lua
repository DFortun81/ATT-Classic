---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(ARATHI_HIGHLANDS, {
			n(0, {	-- Zone Drops
				i(11166, {	-- Formula: Enchant Gloves - Skinning
					["crs"] = {
						2558,	-- Witherbark Berserker
						2556,	-- Witherbark Headhunter
						2557,	-- Witherbark Shadow Hunter
					},
				}),
				i(1993, {	-- Ogremind Ring
					["crs"] = {
						2570,	-- Boulderfist Shaman
						2567,	-- Boulderfist Magus
					},
				}),
				i(5040, {	-- Shadow Hunter Knife
					["questID"] = 691,	-- Worth Its Weight in Gold
					["cr"] = 2557,	-- Witherbark Shadow Hunter
					["races"] = ALLIANCE_ONLY,
				}),
				i(1404, {	-- Tidal Charm
					["cr"] = 2779,	-- Prince Nazjak
				}),
				i(4522, {	-- Witherbark Medicine Pouch
					["questID"] = 691,	-- Worth Its Weight in Gold
					["cr"] = 2555,	-- Witherbark Witch Doctor
					["races"] = ALLIANCE_ONLY,
				}),
				i(7273, {	-- Witherbark Totem Stick
					["questID"] = 1948,	-- Items of Power
					["classes"] = { MAGE },
					["crs"] = {
						2554,	-- Witherbark Axe Thrower
						2558,	-- Witherbark Berserker
						2556,	-- Witherbark Headhunter
						2557,	-- Witherbark Shadow Hunter
						2553,	-- Witherbark Shadowcaster
						2552,	-- Witherbark Troll
						2555,	-- Witherbark Witch Doctor
						2605,	-- Zalas Witherbark <Warband Leader>
					},
				}),
				i(4503, {	-- Witherbark Tusk
					["questID"] = 691,	-- Worth Its Weight in Gold
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						2554,	-- Witherbark Axe Thrower
						2558,	-- Witherbark Berserker
						2556,	-- Witherbark Headhunter
						2557,	-- Witherbark Shadow Hunter
						2553,	-- Witherbark Shadowcaster
						2552,	-- Witherbark Troll
						2555,	-- Witherbark Witch Doctor
						2605,	-- Zalas Witherbark <Warband Leader>
					},
				}),
			}),
		}),
	}),
};