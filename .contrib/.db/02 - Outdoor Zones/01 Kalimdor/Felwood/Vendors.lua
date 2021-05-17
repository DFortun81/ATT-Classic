---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(FELWOOD, {
			n(VENDORS, {
				n(2806, {	-- Bale <General Goods>
					["coord"] = { 34.8, 53.2, FELWOOD },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(16110),	-- Recipe: Monster Omelet
					},
				}),
				n(11555, {	-- Gorn One Eye
					["coord"] = { 65.2, 2.6, FELWOOD },
					["groups"] = {
						i(16768),	-- Furbolg Medicine Pouch
						i(16769),	-- Furbolg Medicine Totem
					},
				}),
				n(11557, {	-- Meilosh
					["coord"] = { 65.6, 2.8, FELWOOD },
					["groups"] = {
						un(PHASE_FIVE, i(22392)),	-- Formula: Enchant 2H Weapon - Agility
						un(PHASE_THREE, i(19445)), 	-- Formula: Enchant Weapon - Agility
						un(PHASE_THREE, i(19218)), 	-- Pattern: Mantle of the Timbermaw
						un(PHASE_THREE, i(19326)), 	-- Pattern: Might of the Timbermaw
						un(PHASE_THREE, i(19327)), 	-- Pattern: Timbermaw Brawlers
						i(20253),	-- Pattern: Warbear Harness
						i(20254),	-- Pattern: Warbear Woolies
						un(PHASE_THREE, i(19215)), 	-- Pattern: Wisdom of the Timbermaw
						un(PHASE_THREE, i(19202)), 	-- Plans: Heavy Timbermaw Belt
						un(PHASE_THREE, i(19204)), 	-- Plans: Heavy Timbermaw Boots
						i(13484),	-- Recipe: Transmute Earth to Water
					},
				}),
				n(2803, {	-- Malygen <General Goods>
					["coord"] = { 62.2, 25.6, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(16110),	-- Recipe: Monster Omelet
					},
				}),
				n(14522, {	-- Ur'dan
					["sourceQuest"] = 7625, 	-- Xorothian Stardust
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