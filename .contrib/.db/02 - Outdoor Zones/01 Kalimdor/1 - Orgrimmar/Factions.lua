---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(ORGRIMMAR, {
			n(FACTIONS, {
				faction(530, {	-- Darkspear Trolls
					["icon"] = asset("Achievement_Character_Troll_Male"),
					["races"] = HORDE_ONLY,
				}),
				faction(76, {	-- Orgrimmar
					["icon"] = asset("Achievement_Character_Orc_Male"),
					["races"] = HORDE_ONLY,
				}),
			}),
		}),
	}),
};