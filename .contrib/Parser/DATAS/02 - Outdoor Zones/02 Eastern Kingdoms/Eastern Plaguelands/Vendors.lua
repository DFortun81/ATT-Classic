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
						i(19447, {	-- Formula: Enchant Bracer - Healing
							["u"] = 3,	-- Added in later phase
						}),
						i(19446, {	-- Formula: Enchant Bracer - Mana Regeneration
							["u"] = 3,	-- Added in later phase
						}),
						i(19442, {	-- Formula: Powerful Anti-Venom
							["u"] = 3,	-- Added in later phase
						}),
						i(19216, {	-- Pattern: Argent Boots
							["u"] = 3,	-- Added in later phase
						}),
						i(19217, {	-- Pattern: Argent Shoulders
							["u"] = 3,	-- Added in later phase
						}),
						i(19328, {	-- Pattern: Dawn Treaders
							["u"] = 3,	-- Added in later phase
						}),
						i(19329, {	-- Pattern: Golden Mantle of the Dawn
							["u"] = 3,	-- Added in later phase
						}),
						i(19203, {	-- Plans: Girdle of the Dawn
							["u"] = 3,	-- Added in later phase
						}),
						i(19205, {	-- Plans: Gloves of the Dawn
							["u"] = 3,	-- Added in later phase
						}),
						i(13482),	-- Recipe: Transmute Air to Fire
					},
				}),				
			}),	
		}),
	}),
};