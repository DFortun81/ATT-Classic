---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(EASTERN_PLAGUELANDS, {	-- Eastern Plaguelands
			n(-2, {	-- Vendors
				n(12941, {	-- Jase Farlane <Trade Supplies>
					["groups"] = {
						i(15756),	-- Pattern: Runic Leather Headband
					},
				}),
				n(11536, {	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["groups"] = {
						i(19442, {	-- Formula: Powerful Anti-Venom
							["u"] = 3,	-- Added in later phase
						}),
						i(19328, {	-- Pattern: Dawn Treaders
							["u"] = 3,	-- Added in later phase
						}),
						i(19329, {	-- Pattern: Golden Mantle of the Dawn
							["u"] = 3,	-- Added in later phase
						}),
						i(13482),	-- Recipe: Transmute Air to Fire
					},
				}),				
			}),	
		}),
	}),
};