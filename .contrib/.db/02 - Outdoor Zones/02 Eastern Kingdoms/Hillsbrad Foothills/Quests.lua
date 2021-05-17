---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(HILLSBRAD_FOOTHILLS, {
			n(QUESTS, {
				q(565, {	-- Bartolo's Yeti Fur Cloak
					["qg"] = 2438,	-- Bartolo Ginsetti
					["coord"] = { 49.4, 55.5, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2997, 1 },	-- Bolt of Woolen Cloth
						{ "i", 2321, 1 },	-- Fine Thread
						{ "i", 3719, 1 },	-- Hillman's Cloak
						{ "i", 3720, 10 },	-- Yeti Fur
					},
					["lvl"] = 29,
					["g"] = {
						i(2805),	-- Yeti Fur Cloak
					},
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
					["provider"] = { "o", 2008 },	-- Dangerous!
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
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3502, 6 },	-- Mudsnout Blossoms
					},
					["lvl"] = 24,
					["g"] = {
						{
							["itemID"] = 3502,	-- Mudsnout Blossoms
							["questID"] = 509,	-- Elixir of Agony
							["coord"] = { 64.2, 62.5, HILLSBRAD_FOOTHILLS },
						},
						i(2459),	-- Swiftness Potion
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
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["cost"] = {
						{ "i", 3508, 1 },	-- Mudsnout Mixture
						{ "i", 3388, 1 },	-- Strong Troll's Blood Potion
						{ "i", 3509, 5 },	-- Daggerspine Scale
						{ "i", 3510, 5 },	-- Torn Fin Eye
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
					["cost"] = {
						{ "i", 3517, 1 },	-- Keg of Shindigger Stout
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						{
							["itemID"] = 3517,	-- Keg of Shindigger Stout
							["questID"] = 517,	-- Elixir of Agony
							["coord"] = { 72.7, 80.0, HILLSBRAD_FOOTHILLS },
						},
					},
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
					["cost"] = {
						{ "i", 3496, 10 },	-- Mountain Lion Blood
					},
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
					["cost"] = {
						{ "i", 3476, 10 },	-- Gray Bear Tongue
						{ "i", 3477, 1 },	-- Creeper Ichor
					},
					["lvl"] = 19,
				}),
				q(499, {	-- Elixir of Suffering
					["qg"] = 2216,	-- Apothecary Lydon
					["sourceQuest"] = 496,	-- Elixir of Suffering
					["coord"] = { 61.45, 19.05, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(560, {	-- Farren's Proof (2)
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2228,	-- Lieutenant Farren Orinelle
					["sourceQuest"] = 559,	-- Farren's Proof (1)
					["coord"] = { 51.4, 58.4, HILLSBRAD_FOOTHILLS },
				}),
				q(561, {	-- Farren's Proof (3)
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2263,	-- Marshal Redpath
					["sourceQuest"] = 560,	-- Farren's Proof (2)
					["coord"] = { 49.5, 58.6, HILLSBRAD_FOOTHILLS },
				}),
				q(559, {	-- Farren's Proof (1)
					["qg"] = 2228,	-- Lieutenant Farren Orinelle
					["sourceQuest"] = 536,	-- Down the Coast
					["coord"] = { 51.4, 58.4, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3716, 10 },	-- Murloc Head
					},
					["lvl"] = 25,
				}),
				q(503, {	-- Gol'dir
					["qg"] = 2229,	-- Krusk
					["sourceQuest"] = 533,	-- Infiltration
					["coord"] = { 63.24, 20.68, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						{
							["itemID"] = 3704,	-- Rusted Iron Key
							["questID"] = 503,	-- Gol'dir
							["cr"] = 2431,	-- Jailor Borhuin
							["coord"] = { 61.8, 40.6, ALTERAC_MOUNTAINS },
						},
					},
				}),
				q(552, {	-- Helcular's Revenge
					["qg"] = 2429,	-- Novice Thaivand
					["coord"] = { 63.87, 19.66, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3708, 1 },	-- Helcular's Rod
					},
					["lvl"] = 29,
				}),
				q(553, {	-- Helcular's Revenge
					["qg"] = 2429,	-- Novice Thaivand
					["sourceQuest"] = 552,	-- Helcular's Revenge
					["coord"] = { 63.87, 19.66, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(2480, {	-- Hinott's Assistance
					["lvl"] = 20,
					["qg"] = 2391,	-- Serge Hinott
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { ROGUE },
					["sourceQuest"] = 2479,	-- Hinott's Assistance
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
					["qg"] = 2712,	-- Quae
					["maps"] = { ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4482, 1 },	-- Sealed Folder
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4482,	-- Sealed Folder
							["questID"] = 658,	-- Hints of a New Plague?
							["cr"] = 2714,	-- Forsaken Courier
							["coord"] = { 52.6, 61.6, ARATHI_HIGHLANDS },
						},
					},
				}),
				q(547, {	-- Humbert's Sword
					["qg"] = 2419,	-- Deathguard Humbert
					["coord"] = { 62.74, 20.21, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3693, 1 },	-- Humbert's Sword
					},
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
				q(9435, {	-- Missing Crystals
					["qg"] = 17218,	-- Huraan
					["coord"] = { 51.0, 58.7, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["cost"] = {
						{ "i", 23646, 1 },	-- Shipment of Rare Crystals
					},
					["lvl"] = 25,
					["groups"] = {
						{
							["itemID"] = 23646,	-- Shipment of Rare Crystals
							["questID"] = 9435,	-- Missing Crystals
							["coord"] = { 55.6, 35.2, HILLSBRAD_FOOTHILLS },
						},
					},
				}),
				q(540, {	-- Preserving Knowledge
					["qg"] = 2277,	-- Loremaster Dibbs
					["sourceQuest"] = 538,	-- Southshore
					["coord"] = { 50.6, 57.1, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3658, 5 },	-- Recovered Tome
						{ "i", 3659, 1 },	-- Worn Leather Book
					},
					["lvl"] = 20,
				}),
				q(544, {	-- Prison Break In
					["qg"] = 2410,	-- Magus Wordeen Voidglare
					["coord"] = { 61.60, 20.85, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3688, 1 },	-- Bloodstone Oval
					},
					["lvl"] = 30,
					["g"] = {
						{
							["itemID"] = 3688,	-- Bloodstone Oval
							["questID"] = 544,	-- Prison Break In
							["cr"] = 2414,	-- Kegan Darkmar
							["coord"] = { 18.0, 83.6, ALTERAC_MOUNTAINS },
						},
					},
				}),
				q(563, {	-- Reassignment
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2228,	-- Lieutenant Farren Orinelle
					["sourceQuest"] = 562,	-- Stormwind Ho!
					["coord"] = { 51.4, 58.4, HILLSBRAD_FOOTHILLS },
					["cost"] = {
						{ "i", 3721, 1 },	-- Farren's Report
					},
				}),
				q(542, {	-- Return to Milton
					["qg"] = 2277,	-- Loremaster Dibbs
					["sourceQuest"] = 540,	-- Preserving Knowledge
					["coord"] = { 50.6, 57.1, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(538, {	-- Southshore
					["qg"] = 1440,	-- Milton Sheaf <Librarian>
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 74.2, 7.5, STORMWIND_CITY },
					["sourceQuest"] = 337,	-- An Old History Book
				}),
				q(546, {	-- Souvenirs of Death
					["qg"] = 2418,	-- Deathguard Samsa
					["coord"] = { 62.12, 19.72, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3692, 30 },	-- Hillsbrad Human Skull
					},
					["lvl"] = 20,
					["g"] = {
						i(3739),	-- Skull Ring
					},
				}),
				q(556, {	-- Stone Tokens
					["qg"] = 2437,	-- Keeper Bel'varil
					["coord"] = { 61.50, 20.91, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3714, 10 },	-- Worn Stone Token
					},
					["lvl"] = 30,
				}),
				q(562, {	-- Stormwind Ho!
					["qg"] = 2228,	-- Lieutenant Farren Orinelle
					["sourceQuest"] = 561,	-- Farren's Proof (3)
					["coord"] = { 51.4, 58.4, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["g"] = {
						i(3755),	-- Fish Gutter
					},
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
				q(495, {	-- The Crown of Will
					["qg"] = 2227,	-- Sharlindra
					["coord"] = { 57.60, 93.84, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 34,
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
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3552, 1 },	-- Glommus's Head
						{ "i", 3551, 1 },	-- Muckrake's Head
						{ "i", 3550, 1 },	-- Targ's Head
					},
					["lvl"] = 34,
					["groups"] = {
						{
							["itemID"] = 3552,	-- Glommus's Head
							["questID"] = 519,	-- The Crown of Will
							["cr"] = 2422,	-- Glommus
							["coord"] = { 39.4, 41.8, ALTERAC_MOUNTAINS },
						},
						{
							["itemID"] = 3551,	-- Muckrake's Head
							["questID"] = 519,	-- The Crown of Will
							["cr"] = 2421,	-- Muckrake
							["coord"] = { 38.8, 47.2, ALTERAC_MOUNTAINS },
						},
						{
							["itemID"] = 3550,	-- Targ's Head
							["questID"] = 519,	-- The Crown of Will
							["cr"] = 2420,	-- Targ
							["coord"] = { 39.6, 53.0, ALTERAC_MOUNTAINS },
						},
					},
				}),
				q(520, {	-- The Crown of Will
					["qg"] = 2278,	-- Melisara
					["sourceQuest"] = 519,	-- The Crown of Will
					["coord"] = { 62.61, 20.64, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3554, 1 },	-- Crown of Will
						{ "i", 3553, 1 },	-- Mug'thol's Head
					},
					["lvl"] = 34,
					["groups"] = {
						{
							["itemID"] = 3553,	-- Mug'thol's Head
							["questID"] = 520,	-- The Crown of Will
							["cr"] = 2257,	-- Mug'thol
							["coord"] = { 35.8, 54.0, ALTERAC_MOUNTAINS },
						},
					},
				}),
				q(521, {	-- The Crown of Will
					["qg"] = 2278,	-- Melisara
					["sourceQuest"] = 520,	-- The Crown of Will
					["coord"] = { 62.61, 20.64, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3554, 1 },	-- Crown of Will
					},
					["lvl"] = 34,
					["g"] = {
						i(4430),	-- Ethereal Talisman
					},
				}),
				q(676, {	-- The Hammer May Fall
					["qg"] = 2770,	-- Tallow
					["coord"] = { 61.86, 19.58, HILLSBRAD_FOOTHILLS },
					["maps"] = { ARATHI_HIGHLANDS },
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(498, {	-- The Rescue
					["qg"] = 2229,	-- Krusk
					["coord"] = { 63.24, 20.68, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3499, 1 },	-- Burnished Gold Key
						{ "i", 3467, 1 },	-- Dull Iron Key
					},
					["lvl"] = 17,
					["g"] = {
						{
							["itemID"] = 3499,	-- Burnished Gold Key
							["questID"] = 498,	-- The Rescue
							["cr"] = 2428,	-- Jailor Marlgen
							["coord"] = { 79.6, 40.6, HILLSBRAD_FOOTHILLS },
						},
						{
							["itemID"] = 3467,	-- Dull Iron Key
							["questID"] = 498,	-- The Rescue
							["cr"] = 2427,	-- Jailor Eston
							["coords"] = {
								{ 75.6, 42.6, HILLSBRAD_FOOTHILLS },
								{ 79.6, 42.0, HILLSBRAD_FOOTHILLS },
							},
						},
						i(3752),	-- Grunt Vest
						i(3733),	-- Orcish War Chain
						i(3734),	-- Recipe: Big Bear Steak
					},
				}),
				q(494, {	-- Time To Strike
					["qg"] = 2214,	-- Deathstalker Lesh
					["coord"] = { 20.79, 47.41, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(2934, {	-- Undamaged Venom Sac
					["qg"] = 2216,	-- Apothecary Lydon <Royal Apothecary Society>
					["sourceQuest"] = 2933,	-- Venom Bottles
					["coord"] = { 61.4, 19.2, HILLSBRAD_FOOTHILLS },
					["maps"] = { THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9322, 1 },	-- Undamaged Venom Sac
					},
					["lvl"] = 40,
				}),
				q(2938, {	-- Venom to the Undercity
					["qg"] = 2216,	-- Apothecary Lydon <Royal Apothecary Society>
					["sourceQuest"] = 2934,	-- Undamaged Venom Sac
					["coord"] = { 61.4, 19.2, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["g"] = {
						i(9649),	-- Royal Highmark Vestments
						i(9650),	-- Honorguard Chestpiece
						i(10686),	-- Aegis of Battle
					},
				}),
				q(566, {	-- WANTED: Baron Vardus
					["provider"] = { "o", 1763 },	-- WANTED
					["sourceQuest"] = 549,	-- WANTED: Syndicate Personnel
					["coord"] = { 62.61, 20.76, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3626, 1 },	-- Head of Baron Vardus
					},
					["lvl"] = 35,
					["g"] = {
						{
							["itemID"] = 3626,	-- Head of Baron Vardus
							["questID"] = 566,	-- WANTED: Baron Vardus
							["cr"] = 2306,	-- Baron Vardus
							["coord"] = { 56.0, 26.2, ALTERAC_MOUNTAINS },
						},
						i(2231),	-- Inferno Robe
					},
				}),
				q(549, {	-- WANTED: Syndicate Personnel
					["provider"] = { "o", 1763 },	-- WANTED
					["coord"] = { 62.61, 20.76, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				}),
			}),
		}),
	}),
};