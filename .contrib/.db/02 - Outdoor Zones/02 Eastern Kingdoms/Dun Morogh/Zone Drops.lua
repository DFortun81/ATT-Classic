---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(DUN_MOROGH, {
			n(ZONEDROPS, {
				i(2886),	-- Crag Boar Rib
				i(6753, {	-- Feather Charm
					["questID"] = 1599,	-- Beginnings
					["cr"] = 946,	-- Frostmane Novice
					["races"] = { GNOME },
					["classes"] = { WARLOCK },
				}),
				i(2067, {	-- Frostbit Staff
					["cr"] = 1117,	-- Rockjaw Bonesnapper
				}),
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
				i(3084, {	-- Gyromechanic Gear
					["questID"] = 412,	-- Operation Recombobulation
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						8503,	-- Gibblewilt
						1211,	-- Leper Gnome
					},
				}),
				i(2898, {	-- Mountaineer Chestpiece
					["cr"] = 1196,	-- Ice Claw Bear
				}),
				i(3083, {	-- Restabilization Cog
					["questID"] = 412,	-- Operation Recombobulation
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						8503,	-- Gibblewilt
						1211,	-- Leper Gnome
					},
				}),
				i(2676, {	-- Shimmerweed
					["questID"] = 315,	-- The Perfect Stout
					["races"] = ALLIANCE_ONLY,
					["cr"] = 1397,	-- Frostmane Seer
				}),
				i(2066, {	-- Skull Hatchet
					["cr"] = 1115,	-- Rockjaw Skullthumper
				}),
				i(6952, {	-- Thick Bear Fur
					["questID"] = 317,	-- Stocking Jetsteam
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						1128,	-- Young Black Bear
						1196,	-- Ice Claw Bear
					},
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
						1271,	-- Old Icebeard
						1135,	-- Wendigo
					},
				}),
			}),
		}),
	}),
};