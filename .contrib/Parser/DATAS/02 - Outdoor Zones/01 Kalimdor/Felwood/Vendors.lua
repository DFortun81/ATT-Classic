---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(FELWOOD, {	-- Felwood
			n(-2, {	-- Vendors
				n(2806, {	-- Bale <General Goods>
					["groups"] = {
						i(16110),	-- Recipe: Monster Omelet
					},
				}),
				n(11557, {	-- Meilosh
					["groups"] = {
						i(20253),	-- Pattern: Warbear Harness
						i(20254),	-- Pattern: Warbear Woolies
						i(13484),	-- Recipe: Transmute Earth to Water
					},
				}),
				n(2803, {	-- Malygen <General Goods>
					["groups"] = {
						i(16110),	-- Recipe: Monster Omelet
					},
				}),
			}),	
		}),
	}),
};