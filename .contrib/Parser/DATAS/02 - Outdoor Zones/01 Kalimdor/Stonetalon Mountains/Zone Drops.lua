---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(STONETALON_MOUNTAINS, {
			n(ZONEDROPS, {
				i(6839, {	-- Charred Horn
					["questID"] = 1701,	-- Fire Hardened Mail
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["crs"] = {
						4031,	-- Fledgling Chimaera
						4032,	-- Young Chimaera
					},
				}),
				i(11151, {	-- Formula: Enchant Gloves - Herbalism
					["crs"] = {
						4029,	-- Blackened Ancient
						4028,	-- Charred Ancient
						4030,	-- Vengeful Ancient
					},
				}),
				i(6840, {	-- Galvanized Horn
					["questID"] = 1701,	-- Fire Hardened Mail
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["cr"] = 6167,	-- Chimaera Matriarch
				}),
				i(5808, {	-- Pridewing Venom Sac
					["questID"] = 1134,	-- Pridewings of Stonetalon
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4014,	-- Pridewing Consort
						4015,	-- Pridewing Patriarch
						4013,	-- Pridewing Skyhunter
						4012,	-- Pridewing Wyvern
						5928,	-- Sorrow Wing
						4011,	-- Young Pridewing
					},
				}),
			}),
		}),
	}),
};