---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(EASTERN_PLAGUELANDS, {
			n(0, {	-- Zone Drops
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
				n(8561, {	-- Mossflayer Shadowhunter
					["g"] = {
						i(16056),	-- Schematic: Flawless Arcanite Rifle
					},
				}),
			}),
		}),
	}),
};