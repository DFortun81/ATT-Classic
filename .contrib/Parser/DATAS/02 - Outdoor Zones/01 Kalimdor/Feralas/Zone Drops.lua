---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(FERALAS, {
			n(ZONEDROPS, {
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
				i(11242, {	-- Evoroot
					["questID"] = 3909,	-- The Videre Elixir
					["coord"] = { 44, 11, FERALAS },
				}),
				i(6259, {	-- Groddoc Liver
					["questID"] = 1452,	-- Rhapsody's Kalimdor Kocktail
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						5260,	-- Groddoc Ape
						5262,	-- Groddoc Thunderer
					},
				}),
				i(9247, {	-- Hatecrest Naga Scale
					["questID"] = 2869,	-- Against the Hatecrest (2/2)
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						5334,	-- Hatecrest Myrmidon
						5335,	-- Hatecrest Screamer
						5333,	-- Hatecrest Serpent Guard
						5337,	-- Hatecrest Siren
						5336,	-- Hatecrest Sorceress
						5331,	-- Hatecrest Warrior
						5332,	-- Hatecrest Wave Rider
						5343,	-- Lady Szallah
						8136,	-- Lord Shalzaru
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
				i(8973, {	-- Thick Yeti Hide
					["allianceQuestID"] = 2821,	-- The Mark of Quality
					["hordeQuestID"] = 2822,	-- The Mark of Quality
					["crs"] = {
						5346,	-- Bloodroar the Stalker
						5295,	-- Enraged Feral Scar
						5292,	-- Feral Scar Yeti
						5293,	-- Hulking Feral Scar
						7848,	-- Lurking Feral Scar
					},
				}),
			}),
		}),
	}),
};