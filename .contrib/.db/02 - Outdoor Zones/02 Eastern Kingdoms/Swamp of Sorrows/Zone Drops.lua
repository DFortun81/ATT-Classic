---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(SWAMP_OF_SORROWS, {
			n(ZONEDROPS, {
				i(11205, {	-- Formula: Enchant Gloves - Advanced Herbalism
					["crs"] = {
						1081,	-- Mire Lord
						14448,	-- Molt Thorn
						764,	-- Swampwalker
						765,	-- Swampwalker Elder
						766,	-- Tangled Horror
					},
				}),
				i(6065, {	-- Khadgar's Essays on Dimensional Convergence
					["questID"] = 1364,	-- Mazen's Behest
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						1081,	-- Mire Lord
						14448,	-- Molt Thorn
						764,	-- Swampwalker
						765,	-- Swampwalker Elder
						766,	-- Tangled Horror
					},
				}),
				i(5608, {	-- Living Cowl
					["crs"] = {
						14448,	-- Molt Thorn
						766,	-- Tangled Horror
					},
				}),
				i(6081, {	-- Mire Lord Fungus
					["questID"] = 1383,	-- Nothing But The Truth
					["races"] = HORDE_ONLY,
					["cr"] = 1081,	-- Mire Lord
				}),
				i(6184, {	-- Monstrous Crawler Leg
					["questID"] = 1430,	-- Fresh Meat
					["races"] = HORDE_ONLY,
					["cr"] = 1088,	-- Monstrous Crawler
				}),
				i(5938, {	-- Pristine Crawler Leg
					["questID"] = 1258,	-- ... and Bugs
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						1088,	-- Monstrous Crawler
						922,	-- Silt Crawler
					},
				}),
				i(6168, {	-- Sawtooth Snapper Claw
					["questID"] = 699,	-- Lack of Surplus
					["races"] = HORDE_ONLY,
					["cr"] = 1087,	-- Sawtooth Snapper
				}),
				i(6080, {	-- Shadow Panther Heart
					["questID"] = 1383,	-- Nothing But The Truth
					["races"] = HORDE_ONLY,
					["cr"] = 768,	-- Shadow Panther
				}),
				i(5803, {	-- Speck of Dream Dust
					["questID"] = 1116,	-- Dream Dust in the Swamp
					["crs"] = {
						740,	-- Adolescent Whelp
						741,	-- Dreaming Whelp
						746,	-- Elder Dragonkin
						744,	-- Green Scalebane
						742,	-- Green Wyrmkin
						14445,	-- Lord Captain Wyrmak
						745,	-- Scalebane Captain
					},
				}),
				i(8498, {	-- Tiny Emerald Whelpling
					["cr"] = 741,	-- Dreaming Whelp
				}),
				
				i(6169, {	-- Unprepared Sawtooth Flank
					["questID"] = 698,	-- Lack of Surplus
					["races"] = HORDE_ONLY,
					["crs"] = {
						1082,	-- Sawtooth Crocolisk
						1087,	-- Sawtooth Snapper
					},
				}),
			}),
		}),
	}),
};