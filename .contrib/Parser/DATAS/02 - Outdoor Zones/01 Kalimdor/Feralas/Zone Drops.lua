---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(FERALAS, {
			n(ZONEDROPS, {
				i(21024, {	-- Chimaerok Tenderloin
					["crs"] = {
						12801,	-- Arcane Chimaerok
						12800,	-- Chimaerok
						12802,	-- Chimaerok Devourer
						12803,	-- Lord Lakmaeran
					},
				}),
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
				i(9460, {	-- Grimtotem Horn
					["questID"] = 2974,	-- A Grim Discovery
					["races"] = HORDE_ONLY,
					["crs"] = {
						7726,	-- Grimtotem Naturalist
						7725,	-- Grimtotem Raider
						7727,	-- Grimtotem Shaman
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
				i(9369, {	-- Iridescent Sprite Darter Wing
					["questID"] = 2973,	-- A New Cloak's Sheen
					["races"] = HORDE_ONLY,
					["crs"] = {
						7997,	-- Captured Sprite Darter
						5278,	-- Sprite Darter
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
				i(18947, {	-- Rage Scar Yeti Hide
					["allianceQuestID"] = 7733,	-- Improved Quality
					["hordeQuestID"] = 7734,	-- Improved Quality
					["description"] = "Can also be looted via Skinning to speed up your progress.",
					["crs"] = {
						5297,	-- Elder Rage Scar
						5299,	-- Ferocious Rage Scar
						5296,	-- Rage Scar Yeti
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
					["description"] = "Can also be looted via Skinning to speed up your progress.",
					["crs"] = {
						5346,	-- Bloodroar the Stalker
						5295,	-- Enraged Feral Scar
						5292,	-- Feral Scar Yeti
						5293,	-- Hulking Feral Scar
						7848,	-- Lurking Feral Scar
					},
				}),
				i(18958, {	-- Water Elemental Core
					["questID"] = 7721,	-- Fuel for the Zapping
					["crs"] = {
						5461,	-- Sea Elemental
						5462,	-- Sea Spray
					},
				}),
				i(9237, {	-- Woodpaw Gnoll Mane
					["questID"] = 2862,	-- War on the Woodpaw
					["races"] = HORDE_ONLY,
					["crs"] = {
						5258,	-- Woodpaw Alpha
						5253,	-- Woodpaw Brute
						5249,	-- Woodpaw Mongrel
						5254,	-- Woodpaw Mystic
						5255,	-- Woodpaw Reaver
						5251,	-- Woodpaw Trapper
					},
				}),
				i(18961, {	-- Zukk'ash Carapace
					["questID"] = 7730,	-- Zukk'ash Infestation
					["races"] = HORDE_ONLY,
					["crs"] = {
						14661,	-- Stinglasher
						5244,	-- Zukk'ash Stinger
						5247,	-- Zukk'ash Tunneler
						5245,	-- Zukk'ash Wasp
						5246,	-- Zukk'ash Worker
					},
				}),
			}),
		}),
	}),
};