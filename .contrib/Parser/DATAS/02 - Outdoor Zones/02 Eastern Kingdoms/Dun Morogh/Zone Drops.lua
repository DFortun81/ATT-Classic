---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(DUN_MOROGH, {
			n(ZONEDROPS, {
				i(2259, {	-- Frostmane Club
					["cr"] = 1121,	-- Frostmane Snowstrider
				}),
				i(2260, {	-- Frostmane Hand Axe
					["crs"] = {
						1123,	-- Frostmane Headhunter
						1122,	-- Frostmane Hideskinner
					},
				}),
				i(2108, {	-- Frostmane Leather Vest
					["cr"] = 706,	-- Frostmane Troll Whelp
				}),
				i(2898, {	-- Mountaineer Chestpiece
					["cr"] = 1196,	-- Ice Claw Bear
				}),
				i(2066, {	-- Skull Hatchet
					["cr"] = 1115,	-- Rockjaw Skullthumper
				}),
				i(2787, {	-- Trogg Dagger
					["cr"] = 724,	-- Burly Rockjaw Trogg
				}),
				i(2671, {	-- Wendigo Mane
					["questID"] = 313,	-- The Grizzled Den
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						1134,	-- Young Wendigo
						1137,	-- Edan the Howler
						1135,	-- Wendigo
					},
				}),
			}),
		}),
	}),
};