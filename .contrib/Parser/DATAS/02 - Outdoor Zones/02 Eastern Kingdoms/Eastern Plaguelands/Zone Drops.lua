---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(EASTERN_PLAGUELANDS, {
			n(0, {	-- Zone Drops
				i(16242, {	-- Formula: Enchant Chest - Major Mana
					["cr"] = 9452,	-- Scarlet Enchanter
				}),
				i(16222, {	-- Formula: Enchant Chest - Superior Spirit
					["cr"] = 9447,	-- Scarlet Warder
				}),
				i(14485, {	-- Pattern: Wizardweave Leggings
					["cr"] = 8551,	-- Dark Summoner
				}),
				i(14500, {	-- Pattern: Wizardweave Robe
					["cr"] = 8526,	-- Dark Caster
				}),
				i(13479, {	-- Recipe: Elixir of the Sages
					["crs"] = {
						9451,	-- Scarlet Archmage
						9449,	-- Scarlet Cleric
						9450,	-- Scarlet Curate
						9452,	-- Scarlet Enchanter
					},
				}),
				i(13499, {	-- Recipe: Greater Shadow Protection Potion
					["crs"] = {
						8546,	-- Dark Adept
						8550,	-- Shadowmage
					},
				}),
				i(16056, {	-- Schematic: Flawless Arcanite Rifle
					["cr"] = 8561,	-- Mossflayer Shadowhunter
				}),
			}),
		}),
	}),
};