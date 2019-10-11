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
						i(22392, {	-- Formula: Enchant 2H Weapon - Agility
							["u"] = 3,	-- Added in later phase
						}),
						i(19445, {	-- Formula: Enchant Weapon - Agility
							["u"] = 3,	-- Added in later phase
						}),
						i(19218, {	-- Pattern: Mantle of the Timbermaw
							["u"] = 3,	-- Added in later phase
						}),
						i(19326, {	-- Pattern: Might of the Timbermaw
							["u"] = 3,	-- Added in later phase
						}),
						i(19327, {	-- Pattern: Timbermaw Brawlers
							["u"] = 3,	-- Added in later phase
						}),
						i(20253),	-- Pattern: Warbear Harness (15742 is also this pattern, need to find out which version is in game and put the other one in NYI)
						i(20254),	-- Pattern: Warbear Woolies (15754 is also this pattern, need to find out which version is in game and put the other one in NYI)
						i(19215, {	-- Pattern: Wisdom of the Timbermaw
							["u"] = 3,	-- Added in later phase
						}),
						i(19202, {	-- Plans: Heavy Timbermaw Belt
							["u"] = 3,	-- Added in later phase
						}),
						i(19204, {	-- Plans: Heavy Timbermaw Boots
							["u"] = 3,	-- Added in later phase
						}),
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