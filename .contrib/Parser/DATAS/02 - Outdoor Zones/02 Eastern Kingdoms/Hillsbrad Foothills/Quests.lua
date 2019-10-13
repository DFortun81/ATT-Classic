---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(HILLSBRAD_FOOTHILLS, {	-- Hillsbrad Foothills
			n(-17, {	-- Quests
				q(565, {	-- Bartolo's Yeti Fur Cloak
					["lvl"] = 29,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2438,	-- Bartolo Ginsetti
					["g"] = {
						i(2805),	-- Yeti Fur Cloak
					},
					["coord"] = { 49.4, 55.5, HILLSBRAD_FOOTHILLS },
				}),
				q(527, {	-- Battle of Hillsbrad
					["qg"] = 2215,	-- High Executor Darthalia
					["coord"] = { 62.32, 20.33, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(528, {	-- Battle of Hillsbrad
					["qg"] = 2215,	-- High Executor Darthalia
					["sourceQuest"] = 527,	-- Battle of Hillsbrad
					["coord"] = { 62.32, 20.33, HILLSBRAD_FOOTHILLS },
					["lvl"] = 19,
					["races"] = HORDE_ONLY,
				}),
				q(529, {	-- Battle of Hillsbrad
					["qg"] = 2215,	-- High Executor Darthalia
					["sourceQuest"] = 528,	-- Battle of Hillsbrad
					["coord"] = { 62.32, 20.33, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(532, {	-- Battle of Hillsbrad
					["qg"] = 2215,	-- High Executor Darthalia
					["sourceQuest"] = 529,	-- Battle of Hillsbrad
					["coord"] = { 62.32, 20.33, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(539, {	-- Battle of Hillsbrad
					["qg"] = 2215,	-- High Executor Darthalia
					["sourceQuest"] = 532,	-- Battle of Hillsbrad
					["coord"] = { 62.32, 20.33, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(541, {	-- Battle of Hillsbrad
					["qg"] = 2215,	-- High Executor Darthalia
					["sourceQuest"] = 539,	-- Battle of Hillsbrad
					["coord"] = { 62.32, 20.33, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(550, {	-- Battle of Hillsbrad
					["qg"] = 2215,	-- High Executor Darthalia
					["coord"] = { 62.32, 20.33, HILLSBRAD_FOOTHILLS },
					["sourceQuest"] = 541,	-- Battle of Hillsbrad
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
					["g"] = {
						i(6282),	-- Sacred Burial Trousers
						i(3761),	-- Deadskull Shield
						i(3822),	-- Runic Darkblade
						i(3760),	-- Band of the Undercity
					},
				}),
				q(506, {	-- Blackmoore's Legacy
					["qg"] = 2316,	-- Gol'dir
					["sourceQuest"] = 503,	-- Gol'dir
					["coord"] = { 59.96, 43.74, ALTERAC_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(557, {	-- Bracers of Binding
					["qg"] = 2437,	-- Keeper Bel'varil
					["sourceQuest"] = 556,	-- Stone Tokens
					["coord"] = { 61.50, 20.91, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(564, {	-- Costly Menace
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2382,	-- Darren Malvew
					["g"] = {
						i(3753),	-- Shepherd's Girdle
						i(3754),	-- Shepherd's Gloves
						i(3736),	-- Recipe: Tasty Lion Steak
						i(3728),	-- Tasty Lion Steak
					},
					["coord"] = { 52.4, 56.0, HILLSBRAD_FOOTHILLS },
				}),
				q(545, {	-- Dalaran Patrols
					["qg"] = 2410,	-- Magus Wordeen Voidglare
					["sourceQuest"] = 544,	-- Prison Break In
					["coord"] = { 61.60, 20.85, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(567, {	-- Dangerous!
					["provider"] = { "o", 2008 }, -- Dangerous!
					["coord"] = { 62.56, 19.69, HILLSBRAD_FOOTHILLS },
					["lvl"] = 19,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(3742),	-- Bow of Plunder
						i(3743),	-- Sentry Buckler
						i(5250),	-- Charred Wand
						i(3732),	-- Hooded Cowl
					},
				}),
				q(536, {	-- Down the Coast
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2228,	-- Lieutenant Farren Orinelle
					["coord"] = { 51.4, 58.4, HILLSBRAD_FOOTHILLS },
				}),
				q(509, {	-- Elixir of Agony
					["qg"] = 2216,	-- Apothecary Lydon
					["sourceQuest"] = 502,	-- Elixir of Pain
					["coord"] = { 61.45, 19.05, HILLSBRAD_FOOTHILLS },
					["lvl"] = 24,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(2459),	-- Swiftness Potion
						i(929),	-- Healing Potion
					},
				}),
				q(513, {	-- Elixir of Agony
					["qg"] = 2216,	-- Apothecary Lydon
					["sourceQuest"] = 509,	-- Elixir of Agony
					["coord"] = { 61.45, 19.05, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
				}),
				q(515, {	-- Elixir of Agony
					["qg"] = 2055,	-- Master Apothecary Faranell
					["sourceQuest"] = 513,	-- Elixir of Agony
					["coord"] = { 48.89, 69.21, UNDERCITY },
					["cost"] = {
						{ 3388, 1 },	-- Strong Troll's Blood Potion
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["g"] = {
						i(3749),	-- High Apothecary Cloak
						i(3747),	-- Meditative Sash
					},
				}),
				q(517, {	-- Elixir of Agony
					["qg"] = 2216,	-- Apothecary Lydon
					["sourceQuest"] = 515,	-- Elixir of Agony
					["coord"] = { 61.45, 19.05, HILLSBRAD_FOOTHILLS },
					["lvl"] = 24,
					["races"] = HORDE_ONLY,
				}),
				q(524, {	-- Elixir of Agony
					["qg"] = 2216,	-- Apothecary Lydon
					["sourceQuest"] = 517,	-- Elixir of Agony
					["coord"] = { 61.45, 19.05, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
				}),
				q(501, {	-- Elixir of Pain
					["qg"] = 2216,	-- Apothecary Lydon
					["sourceQuest"] = 499,	-- Elixir of Suffering
					["coord"] = { 61.45, 19.05, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 21,
					["g"] = {
						i(2230),	-- Gloves of Brawn
						i(3741),	-- Stomping Boots
						i(6482),	-- Firewalker Boots
						i(3735),	-- Recipe: Hot Lion Chops
					},
				}),
				q(502, {	-- Elixir of Pain
					["qg"] = 2216,	-- Apothecary Lydon
					["sourceQuest"] = 501,	-- Elixir of Pain
					["coord"] = { 61.45, 19.05, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 21,
				}),
				q(496, {	-- Elixir of Suffering
					["qg"] = 2216,	-- Apothecary Lydon
					["coord"] = { 61.45, 19.05, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(499, {	-- Elixir of Suffering
					["qg"] = 2216,	-- Apothecary Lydon
					["sourceQuest"] = 496,	-- Elixir of Suffering
					["coord"] = { 61.45, 19.05, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(560, {	-- Farren's Proof
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2228,	-- Lieutenant Farren Orinelle
					["coord"] = { 51.4, 58.4, HILLSBRAD_FOOTHILLS },
				}),
				q(561, {	-- Farren's Proof
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2263,	-- Marshal Redpath
					["coord"] = { 49.5, 58.6, HILLSBRAD_FOOTHILLS },
				}),
				q(559, {	-- Farren's Proof
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2228,	-- Lieutenant Farren Orinelle
					["coord"] = { 51.4, 58.4, HILLSBRAD_FOOTHILLS },
				}),
				q(503, {	-- Gol'dir
					["qg"] = 2229,	-- Krusk
					["sourceQuest"] = 533,	-- Infiltration
					["coord"] = { 63.24, 20.68, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(552, {	-- Helcular's Revenge
					["qg"] = 2429,	-- Novice Thaivand
					["coord"] = { 63.87, 19.66, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(553, {	-- Helcular's Revenge
					["qg"] = 2429,	-- Novice Thaivand
					["sourceQuest"] = 552,	-- Helcular's Revenge
					["coord"] = { 63.87, 19.66, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(661, {	-- Hints of a New Plague?
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2712,	-- Quae
					["g"] = {
						i(15455),	-- Dustfall Robes
						i(15456),	-- Lightstep Leggings
					},
				}),
				q(660, {	-- Hints of a New Plague?
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2713,	-- Kinelory
				}),
				q(659, {	-- Hints of a New Plague?
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2711,	-- Phin Odelic
					["coord"] = { 50.3, 59.0, HILLSBRAD_FOOTHILLS },
				}),
				q(657, {	-- Hints of a New Plague?
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2712,	-- Quae
				}),
				q(658, {	-- Hints of a New Plague?
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2712,	-- Quae
				}),
				q(547, {	-- Humbert's Sword
					["qg"] = 2419,	-- Deathguard Humbert
					["coord"] = { 62.74, 20.21, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
					["g"] = {
						i(3750),	-- Ribbed Breastplate
						i(3751),	-- Mercenary Leggings
					},
				}),
				q(533, {	-- Infiltration
					["qg"] = 2229,	-- Krusk
					["sourceQuest"] = 498,	-- The Rescue,
					["coord"] = { 63.24, 20.68, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29, 
				}),
				q(507, {	-- Lord Aliden Perenolde
					["qg"] = 2229,	-- Krusk
					["sourceQuest"] = 506,	-- Blackmoore's Legacy
					["coord"] = { 63.24, 20.68, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(544, {	-- Prison Break In
					["qg"] = 2410,	-- Magus Wordeen Voidglare
					["coord"] = { 61.60, 20.85, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(563, {	-- Reassignment
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2228,	-- Lieutenant Farren Orinelle
					["coord"] = { 51.4, 58.4, HILLSBRAD_FOOTHILLS },
				}),
				q(555, {	-- Soothing Turtle Bisque
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2430,	-- Chef Jessen
					["g"] = {
						i(3737),	-- Recipe: Soothing Turtle Bisque
						i(3729),	-- Soothing Turtle Bisque
					},
					["coord"] = { 51.8, 58.7, HILLSBRAD_FOOTHILLS },
				}),
				q(7321, {	-- Soothing Turtle Bisque
					["qg"] = 2393,	-- Christoph Jeffcoat
					["coord"] = { 62.30, 19.05, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 28,
					["g"] = {
						i(3737),	-- Recipe: Soothing Turtle Bisque
						i(3729),	-- Soothing Turtle Bisque
					},
				}),
				q(538, { -- Southshore
					["qg"] = 1440, -- Milton Sheaf <Librarian>
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 74.2, 7.5, STORMWIND_CITY },
					["sourceQuest"] = 337, -- An Old History Book
				}),
				q(546, {	-- Souvenirs of Death
					["qg"] = 2418,	-- Deathguard Samsa
					["coord"] = { 62.12, 19.72, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["g"] = {
						i(3739),	-- Skull Ring
					},
				}),
				q(556, {	-- Stone Tokens
					["qg"] = 2437,	-- Keeper Bel'varil
					["coord"] = { 61.50, 20.91, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(562, {	-- Stormwind Ho!
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2228,	-- Lieutenant Farren Orinelle
					["g"] = {
						i(3755),	-- Fish Gutter
					},
					["coord"] = { 51.4, 58.4, HILLSBRAD_FOOTHILLS },
				}),
				q(508, {	-- Taretha's Gift
					["qg"] = 2317,	-- Elysa
					["coord"] = { 39.30, 14.30, ALTERAC_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["g"] = {
						i(3764),	-- Mantis Boots
						i(3765),	-- Brigand's Pauldrons
					},
				}),
				q(518, {	-- The Crown of Will
					["qg"] = 2278,	-- Melisara
					["sourceQuest"] = 495,	-- The Crown of Will
					["coord"] = { 62.61, 20.64, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 34,
				}),
				q(519, {	-- The Crown of Will
					["qg"] = 2278,	-- Melisara
					["sourceQuest"] = 518,	-- The Crown of Will
					["coord"] = { 62.61, 20.64, HILLSBRAD_FOOTHILLS },
					["lvl"] = 34,
					["races"] = HORDE_ONLY,
				}),
				q(520, {	-- The Crown of Will
					["qg"] = 2278,	-- Melisara
					["sourceQuest"] = 519,	-- The Crown of Will
					["coord"] = { 62.61, 20.64, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 34,
				}),
				q(521, {	-- The Crown of Will
					["qg"] = 2278,	-- Melisara
					["sourceQuest"] = 520,	-- The Crown of Will
					["coord"] = { 62.61, 20.64, HILLSBRAD_FOOTHILLS },
					["lvl"] = 34,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(4430),	-- Ethereal Talisman
					},
				}),
				q(676, {	-- The Hammer May Fall
					["qg"] = 2770,	-- Tallow
					["coord"] = { 61.86, 19.58, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(498, {	-- The Rescue
					["qg"] = 2229,	-- Krusk
					["coord"] = { 63.24, 20.68, HILLSBRAD_FOOTHILLS },
					["lvl"] = 17,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(3752),	-- Grunt Vest
						i(3733),	-- Orcish War Chain
						i(3734),	-- Recipe: Big Bear Steak
						i(3467),	-- Dull Iron Key
						i(3499),	-- Burnished Gold Key
					},
				}),
				q(494, {	-- Time To Strike
					["qg"] = 2214,	-- Deathstalker Lesh
					["coord"] = { 20.79, 47.41, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(566, {	-- WANTED: Baron Vardus
					["provider"] = { "o", 1763 }, -- WANTED
					["sourceQuest"] = 549,	-- WANTED: Syndicate Personnel
					["coord"] = { 62.61, 20.76, HILLSBRAD_FOOTHILLS },
					["lvl"] = 35,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(2231),	-- Inferno Robe
					},
				}),
				q(549, {	-- WANTED: Syndicate Personnel
					["provider"] = { "o", 1763 }, -- WANTED
					["coord"] = { 62.61, 20.76, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				}),
			}),
		}),
	}),
};