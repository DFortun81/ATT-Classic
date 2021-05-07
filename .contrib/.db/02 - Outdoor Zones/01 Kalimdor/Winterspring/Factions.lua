---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(WINTERSPRING, {
			n(FACTIONS, {
				faction(577, { 	-- Everlook
					["icon"] = icon("INV_Misc_Coin_01"),
				}),
				faction(576, {	-- Timbermaw Hold
					["maps"] = { FELWOOD },
				}),
				faction(589, {	-- Wintersaber Trainers
					["races"] = ALLIANCE_ONLY,
				}),
			}),
		}),
	}),
};