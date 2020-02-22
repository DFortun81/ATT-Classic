---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(WINTERSPRING, {
			n(ZONEDROPS, {
				i(16223, {	-- Formula: Enchant Weapon - Icy Chill
					["cr"] = 7524,	-- Anguished Highborne
				}),
				i(18704, {	-- Mature Blue Dragon Sinew
					["cr"] = 7437,	-- Cobalt Mageweaver
				}),
				i(15761, {	-- Pattern: Frostsaber Gloves
					["cr"] = 7441,	-- Winterfall Totemic
				}),
				i(15747, {	-- Pattern: Frostsaber Leggings
					["cr"] = 7440,	-- Winterfall Den Watcher
				}),
				i(15779, {	-- Pattern: Frostsaber Tunic
					["cr"] = 7438,	-- Winterfall Ursa
				}),
				i(14493, {	-- Pattern: Robe of Winter Night
					["cr"] = 7437,	-- Cobalt Mageweaver
				}),
				i(13497, {	-- Recipe: Greater Arcane Protection Potion
					["cr"] = 7437,	-- Cobalt Mageweaver
				}),
				i(13495, {	-- Recipe: Greater Frost Protection Potion
					["cr"] = 7428,	-- Frostmaul Giant
				}),
				i(16054, {	-- Schematic: Arcanite Dragonling
					["cr"] = 7437,	-- Cobalt Mageweaver
				}),
				i(18604, {	-- Tears of the Hederine
					["questID"] = 7582,	-- The Prison's Casing
					["classes"] = { WARLOCK },
					["crs"] = {
						7461,	-- Hederine Initiate
						7463,	-- Hederine Slayer
						7462,	-- Hederine Manastalker
					},
				}),
				i(18665, {	-- The Eye of Shadow
					["classes"] = { PRIEST },
					["crs"] = {
						7461,	-- Hederine Initiate
						7463,	-- Hederine Slayer
					},
				}),
			}),
		}),
	}),
};