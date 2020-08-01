---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(HILLSBRAD_FOOTHILLS, {
			n(ZONEDROPS, {
				i(3668, {	-- Assassin's Contract
					["questID"] = 522,	-- Assassin's Contract
					["cr"] = 2434,	-- Shadowy Assassin
					["races"] = ALLIANCE_ONLY,
				}),
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
				i(3509, {	-- Daggerspine Scale
					["questID"] = 515,	-- Elixir of Agony
					["races"] = HORDE_ONLY,
					["crs"] = {
						2370,	-- Daggerspine Screamer
						2369,	-- Daggerspine Shorehunter
						2368,	-- Daggerspine Shorestalker
						2371,	-- Daggerspine Siren
						14277,	-- Lady Zephris
					},
				}),
				i(3204, {	-- Deepwood Bracers
					["cr"] = 2372,	-- Mudsnout Gnoll
				}),
				i(3336, {	-- Flesh Piercer
					["crs"] = {
						2370,	-- Daggerspine Screamer
						2368,	-- Daggerspine Shorestalker
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
				i(3429, {	-- Guardsman Belt
					["crs"] = {
						2427,	-- Jailor Eston
						2428,	-- Jailor Marlgen
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
				i(3692, {	-- Hillsbrad Human Skull
					["questID"] = 546,	-- Souvenirs of Death
					["races"] = HORDE_ONLY,
					["crs"] = {
						2404,	-- Blacksmith Verringtan
						2449,	-- Citizen Wilkes
						2448,	-- Clerk Horrace Whitesteed
						2403,	-- Farmer Getz
						2451,	-- Farmer Kalaba
						232,	-- Farmer Ray
						2305,	-- Foreman Bonds
						2265,	-- Hillsbrad Apprentice Blacksmith
						2387,	-- Hillsbrad Councilman
						2266,	-- Hillsbrad Farmer
						2360,	-- Hillsbrad Farmhand
						2268,	-- Hillsbrad Footman
						2503,	-- Hillsbrad Foreman
						2269,	-- Hillsbrad Miner
						2267,	-- Hillsbrad Peasant
						2270,	-- Hillsbrad Sentry
						2264,	-- Hillsbrad Tailor
						2427,	-- Jailor Eston
						2428,	-- Jailor Marlgen
						2335,	-- Magistrate Burnside
						2450,	-- Miner Hackett
						2260,	-- Syndicate Rogue
						2244,	-- Syndicate Shadow Mage
						2261,	-- Syndicate Watchman
					},
				}),
				i(3053, {	-- Humbert's Chestpiece
					["crs"] = {
						2344,	-- Dun Garok Mountaineer
						14275,	-- Tamra Stormpike
					},
				}),
				i(4724, {	-- Humbert's Helm
					["cr"] = 2345,	-- Dun Garok Rifleman
				}),
				i(4723, {	-- Humbert's Pants
					["cr"] = 2346,	-- Dun Garok Priest
				}),
				i(3693, {	-- Humbert's Sword
					["questID"] = 547,	-- Humbert's Sword
					["races"] = HORDE_ONLY,
					["crs"] = {
						2344,	-- Dun Garok Mountaineer
						2346,	-- Dun Garok Priest
						2345,	-- Dun Garok Rifleman
						14275,	-- Tamra Stormpike
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
				i(3716, {	-- Murloc Head
					["questID"] = 559,	-- Farren's Proof
					["description"] = "Running joke is that since all adventurers take from the Murlocs is their heads, that's why the drop rate is so low - bunch of headless murlocs running around.",
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						14276,	-- Scargil
						2375,	-- Torn Fin Coastrunner
						2374,	-- Torn Fin Muckdweller
						2376,	-- Torn Fin Oracle
						2377,	-- Torn Fin Tidehunter
					},
				}),
				i(5775, {	-- Pattern: Black Silk Pack
					["cr"] = 2434,	-- Shadowy Assassin
				}),
				i(5772, {	-- Pattern: Red Woolen Bag
					["cr"] = 2264,	-- Hillsbrad Tailor
				}),
				i(1485, {	-- Pitchfork
					["crs"] = {
						2403,	-- Farmer Getz
						2451,	-- Farmer Kalaba
						232,	-- Farmer Ray
						2266,	-- Hillsbrad Farmer
					},
				}),
				i(7127, {	-- Powdered Azurite
					["questID"] = 1838,	-- Brutal Armor
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["cr"] = 2269,	-- Hillsbrad Miner
				}),
				un(PHASE_FIVE, i(22229, {	-- Soul Ashes of the Banished
					["crs"] = {
						7071,	-- Cursed Paladin
						7072,	-- Cursed Justicar
						7075,	-- Writhing Mage
					},
				})),
				i(3510, {	-- Torn Fin Eye
					["questID"] = 515,	-- Elixir of Agony
					["races"] = HORDE_ONLY,
					["crs"] = {
						14276,	-- Scargil
						2375,	-- Torn Fin Coastrunner
						2374,	-- Torn Fin Muckdweller
						2376,	-- Torn Fin Oracle
						2377,	-- Torn Fin Tidehunter
					},
				}),
				i(5620, {	-- Vial of Innocent Blood
					["questID"] = 1066,	-- Blood of Innocents
					["races"] = HORDE_ONLY,
					["cr"] = 2244,	-- Syndicate Shadow Mage
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