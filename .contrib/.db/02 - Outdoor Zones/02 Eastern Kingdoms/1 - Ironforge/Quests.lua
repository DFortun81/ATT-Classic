---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(IRONFORGE, {
			n(QUESTS, {
				q(7809, {	-- A Donation of Mageweave
					["qg"] = 14724,	-- Bubulo Acerbus
					["coord"] = { 74.1, 48.1, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4338, 60 },	-- Mageweave Cloth
					},
					["lvl"] = 40,
				}),
				q(7804, {	-- A Donation of Mageweave
					["qg"] = 14723,	-- Mistina Steelshield
					["coord"] = { 43.2, 31.9, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4338, 60 }, 	-- Mageweave Cloth
					},
					["lvl"] = 40,
				}),
				q(7811, {	-- A Donation of Runecloth
					["qg"] = 14724,	-- Bubulo Acerbus
					["coord"] = { 74.1, 48.1, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 14047, 60 },	-- Runecloth
					},
					["lvl"] = 50,
				}),
				q(7805, {	-- A Donation of Runecloth
					["qg"] = 14723,	-- Mistina Steelshield
					["coord"] = { 43.2, 31.9, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 14047, 60 },	-- Runecloth
					},
					["lvl"] = 50,
				}),
				q(7808, {	-- A Donation of Silk
					["qg"] = 14724,	-- Bubulo Acerbus
					["coord"] = { 74.1, 48.1, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4306, 60 },	-- Silk Cloth
					},
					["lvl"] = 26,
				}),
				q(7803, {	-- A Donation of Silk
					["qg"] = 14723,	-- Mistina Steelshield
					["coord"] = { 43.2, 31.9, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4306, 60 }, 	-- Silk Cloth
					},
					["lvl"] = 26,
				}),
				q(7802, {	-- A Donation of Wool
					["qg"] = 14723,	-- Mistina Steelshield
					["coord"] = { 43.2, 31.9, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2592, 60 },	-- Wool Cloth
					},
					["lvl"] = 12,
				}),
				q(7807, {	-- A Donation of Wool
					["qg"] = 14724,	-- Bubulo Acerbus
					["coord"] = { 74.1, 48.1, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2592, 60 },	-- Wool Cloth
					},
					["lvl"] = 12,
				}),
				q(2964, {	-- A Future Task
					["qg"] = 2916,	-- Historian Karnik
					["sourceQuest"] = 2977,	-- Return to Ironforge
					["coord"] = { 77.2, 11.8, IRONFORGE },
					["timeline"] = { "removed 4.0.3.10000" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 45,
					["groups"] = {
						un(TBC_PHASE_ONE, i(34418, {	-- Scrying Wand
							["timeline"] = {
								"added 2.3.0.10000",
								"removed 4.0.3.10000",
							},
						})),
						-- #if BEFORE MOP
						un(TBC_PHASE_ONE, i(34419, {	-- Thorium Flight Blade
							["timeline"] = {
								"added 2.3.0.10000",
								"removed 4.0.3.10000",
							},
						})),
						-- #endif
					},
				}),
				q(686, {	-- A King's Tribute (1/3)
					["qg"] = 2784,	-- King Magni Bronzebeard
					["sourceQuest"] = 683,	-- Sara Balloo's Plea
					["coord"] = { 39.4, 55.8, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(689, {	-- A King's Tribute (2/3)
					["qg"] = 2790,	-- Grand Mason Marblesten
					["sourceQuest"] = 686,	-- A King's Tribute (1/3)
					["coord"] = { 38.6, 87, IRONFORGE },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4521, 5 },	-- Alterac Granite
					},
					["lvl"] = 25,
				}),
				q(700, {	-- A King's Tribute (3/3)
					["qg"] = 2790,	-- Grand Mason Marblesten
					["sourceQuest"] = 689,	-- A King's Tribute (2/3)
					["coord"] = { 38.6, 87, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						i(4535),	-- Ironforge Memorial Ring
					},
				}),
				q(4512, {	-- A Little Slime Goes a Long Way (1/2)
					["qg"] = 9616,	-- Laris Geardawdle
					["coord"] = { 75.6, 23.5, IRONFORGE },
					["maps"] = { FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11947, 6 },	-- Filled Cursed Ooze Jar
						{ "i", 11949, 6 },	-- Filled Tainted Ooze Jar
					},
					["lvl"] = 48,
					["groups"] = {
						i(11912, {	 -- Package of Empty Ooze Containers
							{
								["itemID"] = 11914,	-- Empty Cursed Ooze Jar
								["cr"] = 7086,	-- Cursed Ooze
								["groups"] = {
									{
										["itemID"] = 11947,	-- Filled Cursed Ooze Jar
										["questID"] = 4512,	-- A Little Slime Goes a Long Way (1/2)
									},
								},
							},
							{
								["itemID"] = 11948,	-- Empty Tainted Ooze Jar
								["cr"] = 7092,	-- Tainted Ooze
								["groups"] = {
									{
										["itemID"] = 11949,	-- Filled Tainted Ooze Jar
										["questID"] = 4512,	-- A Little Slime Goes a Long Way (1/2)
									},
								},
							},
						}),
					},
				}),
				q(4513, {	-- A Little Slime Goes a Long Way (2/2)
					["qg"] = 9616,	-- Laris Geardawdle
					["sourceQuest"] = 4512,	-- A Little Slime Goes a Long Way (1/2)
					["coord"] = { 75.6, 23.5, IRONFORGE },
					["maps"] = { UNGORO_CRATER },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11954, 10 },	-- Filled Pure Sample Jar
					},
					["lvl"] = 40,
					["groups"] = {
						i(11955, {	-- Bag of Empty Ooze Containers
							{
								["itemID"] = 11953,	-- Empty Pure Sample Jar
								["crs"] = {
									6556,	-- Muculent Slime
									6557,	-- Primal Ooze
								},
								["groups"] = {
									{
										["itemID"] = 11954,	-- Filled Pure Sample Jar
										["questID"] = 4513,	-- A Little Slime Goes a Long Way (2/2)
									},
								},
							},
						}),
						i(12050),	-- Hazecover Boots
						i(12051),	-- Brazen Gauntlets
					},
				}),
				q(7806, {	-- Additional Runecloth
					["qg"] = 14723,	-- Mistina Steelshield
					["sourceQuest"] = 7805,	-- A Donation of Runecloth
					["coord"] = { 43.2, 31.9, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 14047, 20 }, 	-- Runecloth
					},
					["lvl"] = 50,
				}),
				q(7812, {	-- Additional Runecloth
					["qg"] = 14724,	-- Bubulo Acerbus
					["sourceQuest"] = 7811,	-- A Donation of Runecloth
					["coord"] = { 74.1, 48.1, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 14047, 20 },	-- Runecloth
					},
					["lvl"] = 50,
				}),
				q(3450, {	-- An Easy Pickup
					["qg"] = 8507,	-- Tymor
					["sourceQuest"] = 3448,	-- Passing the Burden
					["coord"] = { 31.2, 4.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 45,
				}),
				q(3449, {	-- Arcane Runes
					["qg"] = 8507,	-- Tymor
					["sourceQuest"] = 3448,	-- Passing the Burden
					["coord"] = { 31.2, 4.6, IRONFORGE },
					["maps"] = { AZSHARA },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10563, 1 },	-- Rubbing: Rune of Beth'Amara
						{ "i", 10564, 1 },	-- Rubbing: Rune of Jin'yael
						{ "i", 10565, 1 },	-- Rubbing: Rune of Markri
						{ "i", 10566, 1 },	-- Rubbing: Rune of Sael'hai
					},
					["lvl"] = 45,
					["groups"] = {
						i(10445, {	-- Drawing Kit
							{
								["itemID"] = 10563,	-- Rubbing: Rune of Beth'Amara
								["questID"] = 3449,	-- Arcane Runes
								["coord"] = { 36, 53, AZSHARA },
							},
							{
								["itemID"] = 10564,	-- Rubbing: Rune of Jin'yael
								["questID"] = 3449,	-- Arcane Runes
								["coord"] = { 39, 50, AZSHARA },
							},
							{
								["itemID"] = 10565,	-- Rubbing: Rune of Markri
								["questID"] = 3449,	-- Arcane Runes
								["coord"] = { 39, 55, AZSHARA },
							},
							{
								["itemID"] = 10566,	-- Rubbing: Rune of Sael'hai
								["questID"] = 3449,	-- Arcane Runes
								["coord"] = { 42, 64, AZSHARA },
							},
						}),
						{
							["itemID"] = 10444,	-- Standard Issue Flare Gun
							["questID"] = 3449,	-- Arcane Runes
							["coord"] = { 77, 91, AZSHARA },
							["description"] = "DO NOT LEAVE IRONFORGE WITHOUT THIS.\n - Crieve",
						},
					},
				}),
				q(7342, {	-- Arrows Are For Sissies
					["qg"] = 14183,	-- Artilleryman Sheldonore
					["coord"] = { 19.6, 52.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15997, 200 },	-- Thorium Shells
					},
					["lvl"] = 52,
					["groups"] = {
						i(18042),	-- Thorium Headed Arrow
					},
				}),
				q(3790, {	-- Assisting Arch Druid Staghelm
					["qg"] = 5111,	-- Innkeeper Firebrew
					["coord"] = { 18.1, 51.5, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["altQuests"] = {
						3763, -- Assisting Arch Druid Staghelm (Darnassus)
						3789, -- Assisting Arch Druid Staghelm (Stormwind)
					},
					["lvl"] = 47,
				}),
				q(3201, {	-- At Last!
					["qg"] = 8256,	-- Curator Thorius
					["sourceQuest"] = 3182,	-- Proof of Deed
					["coord"] = { 71.4, 16.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10022, 1 },	-- Proof of Deed
					},
					["lvl"] = 40,
					["groups"] = {
						i(5396),	-- Key to Searing Gorge
					},
				}),
				q(2039, {	-- Find Bingles
					["qg"] = 6569,	-- Gnoarn
					["coord"] = { 69.4, 50.8, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 12,
				}),
				q(1717, {	-- Gakin's Summons
					["qg"] = 6120,	-- Lago Blackwrench
					["coord"] = { 47.6, 9.6, IRONFORGE },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1682, {	-- Grey Iron Weapons
					["qg"] = 6031,	-- Tormus Deepforge
					["sourceQuest"] = 1681,	-- Ironband's Compound
					["coord"] = { 49, 42.6, IRONFORGE },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["g"] = {
						i(6978),	-- Umbral Axe
						i(6984),	-- Umbral Sword
						i(6982),	-- Umbral Mace
						i(6981),	-- Umbral Dagger
					},
				}),
				q(6388, {	-- Gryth Thurden
					["qg"] = 4256,	-- Golnir Bouldertoe
					["sourceQuest"] = 6391,	-- Ride to Ironforge
					["coord"] = { 51, 26, IRONFORGE },
					["races"] = { DWARF, GNOME },
					["cost"] = {
						{ "i", 16311, 1 },	-- Honorary Picks
					},
					["lvl"] = 10,
				}),
				q(1073, {	-- Ineptitude + Chemicals = Fun (1/2)
					["qg"] = 4081,	-- Lomac Gearstrip
					["sourceQuest"] = 1072,	-- An Old Colleague
					["coord"] = { 71.9, 51.9, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2455, 4 },	-- Minor Mana Potion
						{ "i", 2458, 2 },	-- Elixir of Minor Fortitude
					},
					["lvl"] = 17,
				}),
				q(1074, {	-- Ineptitude + Chemicals = Fun (2/2)
					["qg"] = 4081,	-- Lomac Gearstrip
					["sourceQuest"] = 1073,	-- Ineptitude + Chemicals = Fun (1/2)
					["coord"] = { 71.9, 51.9, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5732, 1 },	-- NG-5
					},
					["lvl"] = 17,
				}),
				q(1708, {	-- Iron Coral
					["qg"] = 6169,	-- Klockmort Spannerspan
					["sourceQuest"] = 1704,	-- Klockmort Spannerspan
					["coord"] = { 68.2, 46.2, IRONFORGE },
					["maps"] = { WETLANDS },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6848, 20 },	-- Searing Coral
					},
					["lvl"] = 20,
				}),
				q(707, {	-- Ironband Wants You!
					["qg"] = 1356,	-- Prospector Stormpike
					["coord"] = { 74.64, 11.74, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1681, {	-- Ironband's Compound
					["qg"] = 6031,	-- Tormus Deepforge
					["sourceQuest"] = 1680,	-- Tormus Deepforge
					["coord"] = { 49, 42.6, IRONFORGE },
					["maps"] = { DUN_MOROGH },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6800, 1 },	-- Umbral Ore
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 6800,	-- Umbral Ore
							["questID"] = 1681,	-- Ironband's Compound
							["coord"] = { 77.9, 62.2, DUN_MOROGH },
						},
					},
				}),
				q(2298, {	-- Kingly Shakedown
					["qg"] = 5165,	-- Hulfdan Blackbeard
					["sourceQuest"] = 2299,	-- To Hulfdan!
					["coord"] = { 51.6, 14.8, IRONFORGE },
					["classes"] = { ROGUE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				q(1709, {	-- Klockmort's Creation
					["qg"] = 6169,	-- Klockmort Spannerspan
					["sourceQuest"] = 1708,	-- Iron Coral
					["coord"] = { 68.2, 46.2, IRONFORGE },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(6974),	-- Fire hardened Gauntlets
					},
				}),
				q(1880,	{	-- Mage-tastic Gizmonitor
					["qg"] = 5144,	-- Bink <Mage Trainer>
					["sourceQuest"] = 1879,	-- Speak with Bink
					["coord"] = { 27, 8.2, IRONFORGE },
					["classes"] = { MAGE },
					["races"] = ALLIANCE_ONLY,
					["altQuests"] = {
						1861,	-- Mirror Lake
					},
					["cost"] = {
						{ "i", 7226, 1 },	-- Mage-tastic Gizmonitor
					},
					["lvl"] = 10,
					["groups"] = {
						i(7507),	-- Arcane Orb
						i(9514),	-- Arcane Staff
					},
				}),
				q(3448, {	-- Passing the Burden
					["qg"] = 2916,	-- Historian Karnik
					["coord"] = { 77.2, 11.8, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 45,
				}),
				q(2963, {	-- Portents of Uldum
					["qg"] = 5387,	-- High Explorer Magellas
					["sourceQuest"] = 2439,	-- The Platinum Discs [Alliance - Part 3]
					["coord"] = { 69.8, 18.4, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 45,
				}),
				q(6392, {	-- Return to Brock
					["qg"] = 1573,	-- Gryth Thurden
					["sourceQuest"] = 6388,	-- Gryth Thurden
					["coord"] = { 55.6, 48, IRONFORGE },
					["races"] = { DWARF, GNOME },
					["cost"] = {
						{ "i", 16311, 1 },	-- Honorary Picks
					},
					["lvl"] = 10,
				}),
				q(3461, {	-- Return to Tymor
					["qg"] = 8392,	-- Pilot Xiggs Fuselighter
					["sourceQuest"] = 3449,	-- Arcane Runes
					["coord"] = { 77.8, 91.4, AZSHARA },
					["maps"] = { AZSHARA },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10445, 1 },	-- Drawing Kit
					},
					["lvl"] = 45,
					["groups"] = {
						i(10707),	-- Steelsmith Greaves
						i(10708),	-- Skullspell Orb
					},
				}),
				q(683, {	-- Sara Balloo's Plea
					["qg"] = 2695,	-- Sara Balloo
					["sourceQuest"] = 637,	-- Sully Balloo's Letter
					["coord"] = { 63.5, 67.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4514, 1 },	-- Sara Balloo's Plea
					},
					["lvl"] = 25,
				}),
				q(2946, {	-- Seeing What Happens
					["qg"] = 2916,	-- Historian Karnik
					["sourceQuest"] = 2963,	-- Portents of Uldum
					["coord"] = { 77.2, 11.8, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6064, 1 },	-- Miniature Platinum Discs
					},
					["lvl"] = 45,
				}),
				q(3451, {	-- Signal for Pickup (1/2)
					["qg"] = 8517,	-- Xiggs Fuselighter
					["sourceQuest"] = 3450,	-- An Easy Pickup
					["coord"] = { 71, 94.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 45,
					["groups"] = {
						i(10444),	-- Standard Issue Flare Gun
					},
				}),
				q(3483, {	-- Signal for Pickup (2/2)
					["qg"] = 8517,	-- Xiggs Fuselighter
					["sourceQuest"] = 3451,	-- Signal for Pickup (1/2)
					["coord"] = { 71, 94.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 45,
					["groups"] = {
						i(10444),	-- Standard Issue Flare Gun
					},
				}),
				q(2238, {	-- Simple Subterfugin'
					["qg"] = 5165,	-- Hulfdan Blackbeard
					["sourceQuest"] = 2218,	-- Road to Salvation
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 10,
				}),
				q(2041, {	-- Speak with Shoni
					["qg"] = 6569,	-- Gnoarn
					["coord"] = { 69.4, 50.8, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 15,
				}),
				q(1715, {	-- The Slaughtered Lamb
					["qg"] = 6120,	-- Lago Blackwrench
					["coord"] = { 47.6, 9.6, IRONFORGE },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(3681, {	-- The Tome of Divinity
					["qg"] = 5149,	-- Brandur Ironhammer
					["coord"] = { 23.4, 6.2, IRONFORGE },
					["altQuests"] = {
						2998, 	-- The Tome of Divinity
						1787,	-- The Tome of Divinity (8)
					},
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1802, {	-- Tome of the Cabal (2/3 Alliance)
					["qg"] = 6294,	-- Krom Stoutarm
					["sourceQuest"] = 1758,	-- Tome of the Cabal (1/3 Alliance)
					["coord"] = { 74.4, 9.4, IRONFORGE },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6931, 1 },	-- Moldy Tome
						{ "i", 6997, 1 },	-- Tattered Manuscript
					},
					["lvl"] = 30,
				}),
				q(1804, {	-- Tome of the Cabal (3/3 Alliance)
					["qg"] = 6294,	-- Krom Stoutarm
					["sourceQuest"] = 1802,	-- Tome of the Cabal (2/3 Alliance)
					["coord"] = { 74.4, 9.4, IRONFORGE },
					["maps"] = { WETLANDS },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 7006, 1 },	-- Reconstructed Tome
						{ "i", 6930, 3 },	-- Rod of Channeling
					},
					["lvl"] = 30,
				}),
				q(1680, {	-- Tormus Deepforge
					["qg"] = 6114,	-- Muren Stormpike
					["sourceQuest"] = 1678,	-- Vejrek
					["coord"] = { 70.6, 90.4, IRONFORGE },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(1678, {	-- Vejrek
					["qg"] = 6114,	-- Muren Stormpike
					["sourceQuests"] = {
						1684,	-- Elanaria
						1638,	-- A Warrior's Training
						1679,	-- Muren Stormpike
					},
					["coord"] = { 70.6, 90.4, IRONFORGE },
					["maps"] = { DUN_MOROGH },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6799, 1 },	-- Vejrek's Head
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 6799,	-- Vejrek
							["cr"] = 6113,	-- Vejrek's Head
							["coord"] = { 27.8, 57.4, DUN_MOROGH },
						},
					},
				}),
			}),
		}),
	}),
};