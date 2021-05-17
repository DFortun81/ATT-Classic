---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(BURNING_STEPPES, {
			n(VENDORS, {
				n(9544, {	-- Yuka Screwspigot
					["coord"] = { 66.0, 22.0, BURNING_STEPPES },
					["groups"] = {
						i(10602, {	-- Schematic: Deadly Scope
							["isLimited"] = true,
						}),
					},
				}),
				n(14437, {	-- Gorzeeki Wildeyes
					["coord"] = { 12.6, 31.6, BURNING_STEPPES },
					["classes"] = { WARLOCK },
					["groups"] = {
						i(18629, {	-- Black Lodestone
							["cost"] = {
								{ "g", 500000 },
							},
						}),
						i(18663, {	-- J'eevee's Jar
							["cost"] = {
								{ "g", 1500000 },
							},
						}),
						i(18802, {	-- Shadowy Potion
							["cost"] = {
								{ "g", 60000 },
							},
						}),
						i(18670, {	-- Xorothian Glyphs
							["cost"] = {
								{ "g", 500000 },
							},
						}),
					},
				}),
			}),
		}),
	}),
};