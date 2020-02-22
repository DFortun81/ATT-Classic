---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(FELWOOD, {
			n(VENDORS, {
				n(2806, {	-- Bale <General Goods>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(16110),	-- Recipe: Monster Omelet
					},
				}),
				n(11557, {	-- Meilosh
					["groups"] = {
						i(22392, {	-- Formula: Enchant 2H Weapon - Agility
							["u"] = 3,	-- Added in later phase
						}),
						i(19445), 	-- Formula: Enchant Weapon - Agility
						i(19218), 	-- Pattern: Mantle of the Timbermaw
						i(19326), 	-- Pattern: Might of the Timbermaw
						i(19327), 	-- Pattern: Timbermaw Brawlers
						i(20253),	-- Pattern: Warbear Harness (15742 is also this pattern, need to find out which version is in game and put the other one in NYI)
						i(20254),	-- Pattern: Warbear Woolies (15754 is also this pattern, need to find out which version is in game and put the other one in NYI)
						i(19215), 	-- Pattern: Wisdom of the Timbermaw
						i(19202), 	-- Plans: Heavy Timbermaw Belt
						i(19204), 	-- Plans: Heavy Timbermaw Boots
						i(13484),	-- Recipe: Transmute Earth to Water
					},
				}),
				n(2803, {	-- Malygen <General Goods>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(16110),	-- Recipe: Monster Omelet
					},
				}),
				n(14522, {	-- Ur'dan
					["coord"] = { 36.2, 44.6, FELWOOD },
					["classes"] = { WARLOCK },
					["groups"] = {
						i(18687, {	-- Xorothian Stardust
							["cost"] = {
								{ "g", 1500000 },
							},
						}),
					},
				}),
			}),	
		}),
	}),
};