---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(HILLSBRAD_FOOTHILLS, {
			n(0, {	-- Zone Drops
				i(3477, {	-- Creeper Ichor
					["questID"] = 496,	-- Elixir of Suffering
					["races"] = HORDE_ONLY,
					["crs"] = {
						14279,	-- Creepthess
						2348,	-- Elder Moss Creeper
						2350,	-- Forest Moss Creeper
						2349,	-- Giant Moss Creeper
					},
				}),
				i(11152, {	-- Formula: Enchant Gloves - Fishing
					["crs"] = {
						14276,	-- Scargil
						2375,	-- Torn Fin Coastrunner
						2374,	-- Torn Fin Muckdweller
						2376,	-- Torn Fin Oracle
						2377,	-- Torn Fin Tidehunter
					},
				}),
				i(3476, {	-- Gray Bear Tongue
					["questID"] = 496,	-- Elixir of Suffering
					["races"] = HORDE_ONLY,
					["crs"] = {
						14280,	-- Big Samras
						2356,	-- Elder Gray Bear
						2351,	-- Gray Bear
						2354,	-- Vicious Gray Bear
					},
				}),
				i(3708, {	-- Helcular's Rod
					["questID"] = 552,	-- Helcular's Revenge
					["races"] = HORDE_ONLY,
					["crs"] = {
						2248,	-- Cave Yeti
						2249,	-- Ferocious Yeti
					},
				}),
				i(3496, {	-- Mountain Lion Blood
					["questID"] = 501,	-- Elixir of Pain
					["races"] = HORDE_ONLY,
					["crs"] = {
						2385,	-- Feral Mountain Lion
						2407,	-- Hulking Mountain Lion
						2406,	-- Mountain Lion
						2384,	-- Starving Mountain Lion
					},
				}),
				i(3720, {	-- Yeti Fur
					["questID"] = 565,	-- Bartolo's Yeti Fur Cloak
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						2248,	-- Cave Yeti
						2249,	-- Ferocious Yeti
					},
				}),
			}),
		}),
	}),
};