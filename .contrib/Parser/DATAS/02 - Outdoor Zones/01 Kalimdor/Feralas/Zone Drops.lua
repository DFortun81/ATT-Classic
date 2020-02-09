---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(FERALAS, {	-- Feralas
			n(0, {	-- Zone Drops
				i(9589, {	-- Encrusted Minerals
					["questID"] = 3128,	-- Natural Materials
					["races"] = HORDE_ONLY,
					["crs"] = {
						7997,	-- Captured Sprite Darter
						5358,	-- Cliff Giant
						5357,	-- Land Walker
						5278,	-- Sprite Darter
						5276,	-- Sprite Dragon
					},
				}),
				i(6259, {	-- Groddoc Liver
					["questID"] = 1452,	-- Rhapsody's Kalimdor Kocktail
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						5260,	-- Groddoc Ape
						5262,	-- Groddoc Thunderer
					},
				}),
				i(6258, {	-- Ironfur Liver
					["questID"] = 1452,	-- Rhapsody's Kalimdor Kocktail
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						5272,	-- Grizzled Ironfur Bear
						5268,	-- Ironfur Bear
						5274,	-- Ironfur Patriarch
						5352,	-- Old Grizzlegut
					},
				}),
				i(9592, {	-- Metallic Fragments
					["questID"] = 3128,	-- Natural Materials
					["races"] = HORDE_ONLY,
					["crs"] = {
						5347,	-- Antilus the Soarer
						5358,	-- Cliff Giant
						5300,	-- Frayfeather Hippogryph
						5306,	-- Frayfeather Patriarch
						5305,	-- Frayfeather Skystormer
						5304,	-- Frayfeather Stagwing
						5357,	-- Land Walker
						7584,	-- Wandering Forest Walker
					},
				}),
				i(9591, {	-- Resilient Sinew
					["questID"] = 3128,	-- Natural Materials
					["races"] = HORDE_ONLY,
					["crs"] = {
						5347,	-- Antilus the Soarer
						5300,	-- Frayfeather Hippogryph
						5306,	-- Frayfeather Patriarch
						5305,	-- Frayfeather Skystormer
						5304,	-- Frayfeather Stagwing
					},
				}),
				i(9590, {	-- Splintered Log
					["questID"] = 3128,	-- Natural Materials
					["cr"] = 7584,	-- Wandering Forest Walker
					["races"] = HORDE_ONLY,
				}),
			}),
		}),
	}),
};