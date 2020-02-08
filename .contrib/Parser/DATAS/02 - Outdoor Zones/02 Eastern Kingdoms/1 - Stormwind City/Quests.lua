---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(STORMWIND_CITY, {	-- Stormwind City
			n(-17, {	-- Quests
				q(7794, {	-- A Donation of Mageweave
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					["cost"] = {
						{ "i", 4338, 60 }, -- Mageweave Cloth
					},
				}),
				q(7795, {	-- A Donation of Runecloth
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					["cost"] = {
						{ "i", 14047, 60 }, -- Runecloth
					},
				}),
				q(7793, {	-- A Donation of Silk
					["lvl"] = 26,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					["cost"] = {
						{ "i", 4306, 60 },	-- Silk Cloth
					},
				}),
				q(7791, {	-- A Donation of Wool
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					["cost"] = {
						{ "i", 2592, 60 },	-- Wool Cloth
					},
				}),
				q(212, { -- A Meal Served Cold
					["qg"] = 1141, -- Angus Stern
					["coord"] = { 41.4, 89.2, STORMWIND_CITY },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2476, 1 },	-- Chilled Basilisk Haunch
					},
					["lvl"] = 35,
					["groups"] = {
						{
							["itemID"] = 2476,	-- Chilled Basilisk Haunch
							["questID"] = 212,	-- A Meal Served Cold
							["cr"] = 690,	-- Cold Eye Basilisk
						},
					},
				}),
				q(335, { -- A Noble Brew (1)
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1435, -- Zardeth of the Black Claw
				}),
				q(336, { -- A Noble Brew (2)
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1435, -- Zardeth of the Black Claw
				}),
				q(1638, { -- A Warrior Training
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 
						1, -- Warrior 
					},
					["qgs"] = {
						913, -- Lyria Du Lac <Warrior Trainer>
						5480, -- Ilsa Corbin <Warrior Trainer>
					},
					["altQuests"] = {
						1684, -- Elanaria
						1679, -- Muren Stormpike
					},
					["description"] = "Doing this quest prevents you from completing \"Elanaria\" and \"Muren Stormpike\".",
				}),
				q(396, { -- An Audience with the King
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 395, -- Brotherhood's End
					["qg"] = 1646, -- Baros Alexston <City Architect>
					["g"] = {
						i(2933), -- Seal of Wrynn
					},
				}),
				q(7796, {	-- Additional Runecloth
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					["cost"] = {
						{ "i", 14047, 60 },	-- Runecloth
					},
					["repeatable"] = true,
				}),
				q(8419, {	-- An Imp's Request
					["u"] = 3,	-- Added in later phase
					["qg"] = 461,	-- Demisette Cloyce <Warlock Trainer>
					["coord"] = { 28.4, 78.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 9 },	-- Warlock
					["lvl"] = 50,
					["altQuests"] = {
						8420,	-- Hot and Itchy
					},
					["cost"] = {
						{ "i", 14256, 1 },	-- Felcloth
					},
				}),
				q(8233, {	-- A Simple Request
					["u"] = 3,	-- Added in later phase
					["qgs"] = {
						13283,	-- Lord Tony Romano <Rogue Trainer>
						918,	-- Osborne the Night Man <Rogue Trainer>
					},
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
					["lvl"] = 50,
				}),
				q(3789, {	-- Assisting Arch Druid Staghelm
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 6740,	-- Innkeeper Allison
				}),
				q(8417, {	-- A Troubled Spirit
					["u"] = 3,	-- Added in later phase
					["qg"] = 5479,	-- Wu Shen <Warrior Trainer>
					["coord"] = { 78.8, 45.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 1 },	-- Warrior
					["lvl"] = 50,
				}),
				q(1639, { -- Bartleby the Drunk
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 1 }, -- Warrior
					["qg"] = 6089, -- Harry Burlguard
				}),
				q(1665, { -- Bartleby's Mug
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 1 }, -- Warrior
					["qg"] = 6090, -- Bartleby
					["sourceQuest"] = 1640, -- Beat Bartleby
					["cost"] = { 
						{ "i", 6781, 1 }, -- 	Bartleby's Mug
					},
				}),
				q(389, { -- Bazil Thredd
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1646, -- Baros Alexston
					["sourceQuest"] = 373, -- The Unsent Letter
				}),
				q(1640, { -- Beat Bartleby
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 1 }, -- Warrior
					["qg"] = 6090, -- Bartleby
					["sourceQuest"] = 1639, -- Bartleby the Drunk
				}),
				q(344, {	-- Brother Paxton
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1440,	-- Milton Sheaf
					["sourceQuest"] = 343,	-- Speaking of Fortitude
					["coord"] = { 74.2, 7.5, STORMWIND_CITY },
				}),
				q(395, { -- Brotherhood's End
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 394, -- The Head of the Beast
					["qg"] = 332, -- Master Mathias Shaw <Leader of SI:7>
				}),
				q(1705, { -- Burning Blood
					["qg"] = 1416, -- Grimand Elmore
					["sourceQuest"] = 1700, -- Grimand Elmore
					["maps"] = { DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["cost"] = { 
						{ "i", 6844, 20 }, -- Burning Blood
						{ "i", 6845, 1 }, -- Burning Rock
					},
					["lvl"] = 20,
				}),
				q(8254, {	-- Cenarion Aid
					["u"] = 3,	-- Added in later phase
					["qg"] = 5489,	-- Brother Joshua <Priest Trainer>
					["coord"] = { 38.8, 26.4, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 5 },	-- Priest
					["lvl"] = 50,
				}),
				q(8415, {	-- Chillwind Camp
					["qg"] = 928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
					["coord"] = { 37.6, 32.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 2 },	-- Paladin
					["lvl"] = 50,
				}),
				q(6261, {	-- Dungar Longdrink
					["lvl"] = 10,
					["races"] = {
						1,	-- Human
					},
					["qg"] = 1323,	-- Osric Strang
					["sourceQuest"] = 6281,	-- Continue to Stormwind
					["coord"] = { 74.2, 47.5, STORMWIND_CITY },
				}),
				q(1701, { -- Fire hardened Mail
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 1 }, -- Warrior
					["qg"] = 5413, -- Furen Longbeard
					["sourceQuest"] = 1702, -- The Shieldsmith
				}),
				q(6184, {	-- Flint Shadowmore
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					["sourceQuest"] = 6183,	-- Honor the Dead
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				q(1782, { -- Furen's Armor
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 1 }, -- Warrior
					["sourceQuest"] = 1701, -- Fire Hardened Mail
					["qg"] = 5413, -- Furen Longbeard
					["g"] = {
						i(6972), -- Fire Hardened Hauberk
					},
				}),
				q(5048, { -- Good Natured Emma
					["qg"] = 10782, -- Royal Factor Bathrilor <Stormwind Census>
					["sourceQuest"] = 5022, -- Better Late Than Never
					["coord"] = { 48.6, 30.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12724, 1 },	-- Janice's Parcel
					},
					["lvl"] = 50,
				}),
				q(1700, { -- Grimand Elmore
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 1 }, -- Warrior
					["sourceQuest"] = 1701, -- Fire Hardened Mail
					["qg"] = 5413, -- Furen Longbeard
				}),
				q(1706, { -- Grimand's Armor
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 1 }, -- Warrior
					["sourceQuest"] = 1705, -- Burning Blood
					["qg"] = 1416, -- Grimand Elmore
					["g"] = {
						i(6971), -- Fire Hardened Coif
					},
				}),
				q(333, {	-- Harlan Needs a Resupply
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1427, -- Harlan Bagley
					["coord"] = { 55.1, 56.0, STORMWIND_CITY },
				}),
				q(5924, { -- Heeding the Call
					["qg"] = 5505,  -- Theridran <Druid Trainer>
					["races"] = { 4 },  -- Night Elf Only
					["classes"] = { 11 },  -- Druid
					["altQuests"] = {
						5923,	-- Heeding the Call
						5925,   -- Heeding the Call
					},
				}),
				q(1939, { -- High Sorcerer Andromath
					["qg"] = 5497, -- Jennea Cannon <Mage Trainer>
					["coord"] = { 38.6, 79.6, STORMWIND_CITY },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["lvl"] = 26,
				}),
				q(6183, {	-- Honor the Dead
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 6182,	-- The First and the Last
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				q(399, { -- Humble Beginnings
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1646,	-- Baros Alexston <City Architect>
					["coord"] = { 49.1, 30.3, STORMWIND_CITY },
					["description"] = "Daros Alexston is located in City Hall at 47.6, 31.4.",
				});
				q(4738, { -- In Search of Menara Voidrender
					["lvl"] = 31,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 9 },	-- Warlock
					["qg"] = 461, -- Demisette Cloyce
				}),
				q(1448, {	-- In Search of The Temple
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					["coord"] = { 70.0, 55.0, SWAMP_OF_SORROWS },
					["maps"] = { SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(2745, { -- Infiltrating the Castle
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 482, -- Elling Trias <Master of Cheese>
					["sourceQuest"] = 350, -- Look to an Old Friend
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
				}),
				q(2746, { -- Items of Some Consequence
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7766, -- Tyrion
					["sourceQuest"] = 2745, -- Infiltrating the Castle
					["cost"] = {
						{ "i", 4306, 3 }, -- Silk Cloth
						{ "i", 8683, 2 }, -- Clara's Fresh Apple
					},
				}),
				q(1301, {	-- James Hyal
					["qg"] = 5081,	-- Connor Rivers
					["maps"] = { DUSTWALLOW_MARSH },
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(3787, {	-- Jonespyre's Request
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5566, -- Tannysa
					["altQuests"] = {
						3788, -- Jonespyre's Request
					},
					["isBreadcrumb"] = true,
				}),
				q(4968, { -- Knowledge of the Orb of Orahil
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 9 },	-- Warlock
					["qg"] = 461, -- Demisette Cloyce
				}),
				q(350, { -- Look to an Old Friend
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 393, -- Shadow of the Past
					["qg"] = 332, -- Master Mathias Shaw
					["coord"] = { 76.0, 60.1, STORMWIND_CITY },
				}),
				q(8250, {	-- Magecraft
					["u"] = 3,	-- Added in later phase
					["qg"] = 331,	-- Maginor Dumas <Master Mage>
					["coord"] = { 38.2, 81.4, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 8 },	-- Mage
					["lvl"] = 50,
				}),
				q(1666, { -- Marshal Haggard
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 1 },	-- Warrior
					["qg"] = 6089, -- Harry Burlguard
					["sourceQuest"] = 1665, -- Bartleby's Mug
				}),
				q(2360, {	-- Mathias and the Defias
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
					["qg"] = 332,	-- Master Mathias Shaw
					["coord"] = { 76.0, 60.1, STORMWIND_CITY },
				}),
				q(1861, { -- Mirror Lake
					["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = {8},	-- Mage
					["altQuests"] = {
						1880,	-- Mage-tastic Gizmonitor
					},
					["groups"] = {
						i(7508),	-- Ley Orb
						i(9513),	-- Ley Staff
					},
				}),
				q(7562, { -- Mor'zul Bloodbringer
					["qg"] = 5520,	-- Spackle Thornberry <Demon Trainer>
					["coord"] = { 25.8, 77.6, STORMWIND_CITY },
					["classes"] = { WARLOCK },
					["lvl"] = 60,
				}),
				q(6187, {	-- Order Must Be Restored
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["sourceQuest"] = 6186,	-- The Blightcaller Cometh
					["coord"] = { 78, 18, STORMWIND },
					["maps"] = { EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cr"] = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
					["lvl"] = 56,
					["g"] = {
						i(16996),	-- Gorewood Bow
						i(16997),	-- Stormrager
						i(16998),	-- Sacred Protector
					},
				}),
				q(334, {	-- Package for Thurman
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1428,	-- Rema Schneider
					["sourceQuest"] = 333,	-- Harlan Needs a Resupply
					["coord"] = { 49.5, 55.3, STORMWIND_CITY },
				}),
				q(1940, { -- Pristine Spider Silk
					["qg"] = 5694, -- High Sorcerer Andromath
					["sourceQuest"] = 1938, -- Ur's Treatise on Shadow Magic
					["coord"] = { 37.6, 81.6, STORMWIND_CITY },
					["maps"] = { DUSKWOOD },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 7267, 8 }, -- Pristine Spider Silk
					},
					["lvl"] = 26,
				}),
				q(2281, {	-- Redridge Rendezvous
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
					["qg"] = 6946,	-- Renzik "The Shiv"
					["sourceQuests"] = {
						2260,	-- Erion's Behest(Darnassus)
						2298,	-- Kingly Shakedown(Ironforge)
						2300,	-- SI:7(Elwynn Forest)
					},
					["coord"] = { 75.9, 60.3, STORMWIND_CITY },
				}),
				q(6285, {	-- Return to Lewis
					["lvl"] = 10,
					["races"] = {
						1,	-- Human
					},
					["qg"] = 352,	-- Dungar Longdrink
					["sourceQuest"] = 6261,	-- Dungar Longdrink
				}),
				q(393, { -- Shadow of the Past
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1646, -- Baros Alexston
					["sourceQuest"] = 392, -- The Curious Visitor
					["cost"] = {
						{ "i", 8687, 1}, -- Sealed Description of Thredd's Visitor
					},
				}),
				q(2206, {	-- Snatch and Grab
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
					["qg"] = 332,	-- Master Mathias Shaw
					["sourceQuest"] = 2205,	-- Seek out SI:7
					["g"] = {
						i(7298),	-- Blade of Cunning
					},
				}),
				q(343, {	-- Speaking of Fortitude
					["qg"] = 1444,	-- Brother Kristoff
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 45.7, 38.3, STORMWIND_CITY },
				}),
				q(353, {	-- Stormpike's Delivery
					["qg"] = 1416,	-- Grimand Elmore
					["sourceQuest"] = 1097,	-- Elmore's Task
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 51.8, 12.1, STORMWIND_CITY },
				}),
				q(579, {	-- Stormwind Library
					["qg"] = 2504,	-- Donyal Tovald <Librarian>
					["coord"] = { 71.6, 7.6, STORMWIND_CITY },
					["repeatable"] = true,
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3898, 1 }, -- Library Scrip
					},
					["groups"] = {
						i(3899),	-- Legends of the Gurubashi, Volume 3
						i(2154),	-- The Story of Morgan Ladimore
					},
				}),
				q(1688, { -- Surena Caledon
					["qg"] = 6122, -- Gakin the Darkbinder
					["sourceQuest"] = 1685, -- Gakin's Summons
					["races"] = { 1, 7 }, -- Human and Gnome only
					["classes"] = { 9 },	-- Warlock
					["maps"] = { ELWYNN_FOREST },
					["cost"] = {
						{ "i", 6810, 1 },	 -- Surena's Choker
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 6810,	-- Surena's Choker
							["questID"] = 1688,	-- Surena Caledon
							["cr"] = 881,	-- Surena Caledon
							["coord"] = { 71.0, 80.6, ELWYNN_FOREST },
						},
					},
				}),
				q(4488, { -- Summon Felsteed
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 9 },	-- Warlock
					["qg"] = 461, -- Demisette Cloyce
				}),
				q(434, { -- The Attack!
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7766, -- Tyrion
					["sourceQuest"] = 2746, -- Items of Some Consequence
				}),
				q(1689, { -- The Binding
					["lvl"] = 10,
					["races"] = { 1, 7 }, -- Human and Gnome only
					["classes"] = { 9 },	-- Warlock
					["qg"] = 6122, -- Gakin the Darkbinder
					["sourceQuest"] = 1688, -- Surena Caledon
				}),
				q(392, { -- The Curious Visitor
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1719, -- Warden Thelwater
					["sourceQuest"] = 391, -- The Stockage Riots
					["cost"] = {
						{ "i", 8687, 1}, -- Sealed Description of Thredd's Visitor
					},
				}),
				q(3765, {  -- The Corruption Abroad
					["qg"] = 4984,  -- Argos Nightwhisper
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["isBreadcrumb"] = true,
				}),
				q(141, {	-- The Defias Brotherhood (4/7)
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 332,	-- Master Mathias Shaw
					["sourceQuest"] = 135,	-- The Defias Brotherhood (3/7)
				}),
				q(6182, {	-- The First and the Last
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["coord"] = { 78, 18, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				q(394, { -- The Head of the Beast
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 434, -- The Attack!
					["qg"] = 482, -- Elling Trias <Master of Cheese>
				}),
				q(8151, {	-- The Hunter's Charm
					["u"] = 3,	-- Added in later phase
					["qg"] = 5516,	-- Ulfir Ironbeard <Hunter Trainer>
					["coord"] = { 62.0, 15.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 3 },	-- Hunter Only
					["lvl"] = 50,
				}),
				q(6076, {	-- The Hunter's Path
					["qg"] = 5515,	-- Einris Brightspear <Hunter Trainer>
					["coord"] = { 61.6, 15.4, STORMWIND_CITY },
					["races"] = { 3 },	-- Dwarf Only
					["classes"] = { 3 },	-- Hunter Only
					["isBreadcrumb"] = true,
					["altQuests"] = {
						6074,	-- The Hunter's Path
						6075,	-- The Hunter's Path
					},
					["lvl"] = 10,
				}),
				q(1274, { -- The Missing Diplomat (1/17)
					["lvl"] = 28,
					["qg"] = 4982, -- Thomas <Altar Boy>
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 39.8, 28.3, STORMWIND_CITY },
				}),
				q(1241, { -- The Missing Diplomat (2/17)
					["lvl"] = 28,
					["qg"] = 4960, -- Bishop DeLavey
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 78.4, 25.4, STORMWIND_CITY },
					["sourceQuest"] = 1274,
				}),
				q(1242, { -- The Missing Diplomat (3/17)
					["lvl"] = 28,
					["qg"] = 4959, -- Jorgen
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 73.2, 78.6, STORMWIND_CITY },
					["sourceQuest"] = 1241,
				}),
				q(1243, { -- The Missing Diplomat (4/17)
					["lvl"] = 28,
					["qg"] = 482, -- Elling Trias <Master of Cheese>
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					["description"] = "Elling Trias is located on the 2nd floor of Trias' Cheese.",
					["sourceQuest"] = 1242,
				}),
				q(1246, { -- The Missing Diplomat (7/17)
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 482, -- Elling Trias <Master of Cheese>
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					["description"] = "Elling Trias is located on the 2nd floor of Trias' Cheese.",
					["sourceQuest"] = 1245,
				}),
				q(1447, { -- The Missing Diplomat (8/17)
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4961, -- Dashel Stonefist
					["coord"] = { 70.5, 44.9, STORMWIND_CITY },
					["description"] = "Dashel Stonefist will spawn 2 level 26 adds to fight alongside him.",
					["sourceQuest"] = 1246,
				}),
				q(1247, { -- The Missing Diplomat (9/17)
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4961, -- Dashel Stonefist
					["coord"] = { 70.5, 44.9, STORMWIND_CITY },
					["sourceQuest"] = 1447,
				}),
				q(1248, { -- The Missing Diplomat (10/17)
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 482, -- Elling Trias <Master of Cheese>
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					["description"] = "Elling Trias is located on the 2nd floor of Trias' Cheese.",
					["sourceQuest"] = 1247,
				}),
				q(1015, {	-- The New Frontier
					["lvl"] = 54,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2198, -- Crier Goodman
				}),
				q(543, {	-- The Perenolde Tiara
					["qg"] = 2285,	-- Count Remington Ridgewell
					["coord"] = { 74, 30, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY, ALTERAC_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3684, 1 },	-- Perenolde Tiara
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 3684,	-- Perenolde Tiara
							["questID"] = 543,	-- The Perenolde Tiara
							["cr"] = 2417,	-- Grel'borg the Miser
							["coord"] = { 39.6, 52.8, ALTERAC_MOUNTAINS },	
						},
					},
				}),
				q(1790, { -- The Symbol of Life
					["lvl"] = 12,
					["races"] = { 1 }, -- Human
					["classes"] = { 2 }, -- Paladin
					["qg"] = 6171, -- Duthorian Rall
					["repeatable"] = true,
					["description"] = "This quest is repeatable, but can only be completed while you have the quest \"The Tome of Divinity\" (Quest #1786) in your quest log.",
				}),
				q(1641, { -- The Tome of Divinity (1)
					["lvl"] = 12,
					["races"] = { 1 }, -- Human
					["classes"] = { 2 }, -- Paladin
					["qg"] = 6171, -- Duthorian Rall
				}),
				q(1642, { -- The Tome of Divinity (2)
					["lvl"] = 12,
					["races"] = { 1 }, -- Human
					["classes"] = { 2 }, -- Paladin
					["provider"] = { "i", 6775 }, -- Tome of Divinity
					["sourceQuest"] = 1641, -- The Tome of Divinity (1)
				}),
				q(1643, { -- The Tome of Divinity (3)
					["lvl"] = 12,
					["races"] = { 1 }, -- Human
					["classes"] = { 2 }, -- Paladin
					["qg"] = 6171, -- Duthorian Rall
					["sourceQuest"] = 1642, -- The Tome of Divinity (2)
				}),
				q(1644, { -- The Tome of Divinity (4)
					["lvl"] = 12,
					["races"] = { 1 }, -- Human
					["classes"] = { 2 }, -- Paladin
					["qg"] = 6174, -- Stephanie Turner
					["sourceQuest"] = 1643, -- The Tome of Divinity (3)
				}),
				q(1780, { -- The Tome of Divinity (5)
					["lvl"] = 12,
					["races"] = { 1 }, -- Human
					["classes"] = { 2 }, -- Paladin
					["qg"] = 6174, -- Stephanie Turner
					["sourceQuest"] = 1644, -- The Tome of Divinity (4)
				}),
				q(1781, { -- The Tome of Divinity (6)
					["lvl"] = 12,
					["races"] = { 1 }, -- Human
					["classes"] = { 2 }, -- Paladin
					["qg"] = 6171, -- Duthorian Rall
					["sourceQuest"] = 1644, -- The Tome of Divinity (5)
				}),
				q(1786, { -- The Tome of Divinity (7)
					["lvl"] = 12,
					["races"] = { 1 }, -- Human
					["classes"] = { 2 }, -- Paladin
					["qg"] = 6173, -- Gazin Tenorm
					["sourceQuest"] = 1781, -- The Tome of Divinity (6)
				}),
				q(1788, { -- The Tome of Divinity (9)
					["lvl"] = 12,
					["races"] = { 1 }, -- Human
					["classes"] = { 2 }, -- Paladin
					["qg"] = 6173, -- Gazin Tenorm
					["sourceQuest"] = 1787, -- The Tome of Divinity (8)
				}),
				q(2607, {	-- The Touch of Zanzil
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
					["qg"] = 332,	-- Master Mathias Shaw
					["sourceQuest"] = 2359, -- Klaven's Tower
				}),
				q(2608, {	-- The Touch of Zanzil
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
					["qg"] = 7207,	-- Doc Mixilpixil
					["sourceQuest"] = 2607, -- The Touch of Zanzil
					["coord"] = { 78.0, 59.0, STORMWIND_CITY },
					["description"] = "Doc Mixilpixil is located in the basement of the SI:7 building.",
				}),
				q(2609, {	-- The Touch of Zanzil
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
					["qg"] = 7207,	-- Doc Mixilpixil
					["sourceQuest"] = 2608, -- The Touch of Zanzil
					["description"] = "Simple Wildflowers are sold by Florist Gump on the Trade District side of the Canal near Old Town (64.4, 60.8).\nLeaded Vial can by purchased from any Trade Goods Vendor.\nBronze Tube can be purchased in limited supply from Engineering Vendors, or you can get an Engineer to craft you one.\nA Spool of Chartruese Thread is on the floor of the Finest Thread, which is on the Cathedral Square side of the Canal near The Park (39.9, 46.3).",
					["coord"] = { 78.0, 59.0, STORMWIND_CITY },
					["g"] = {
						i(8432),	-- Eau de Mixilpixil
					},
				}),
				q(1449, {	-- To The Hinterlands
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					["sourceQuest"] = 1448,	-- In Search of The Temple
					["coord"] = { 64.3, 20.7, STORMWIND_CITY },
					["maps"] = { THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(1938, { -- Ur's Treatise on Shadow Magic
					["qg"] = 5694, -- High Sorcerer Andromath
					["sourceQuest"] = 1939, -- High Sorcerer Andromath
					["coord"] = { 37.6, 81.6, STORMWIND_CITY },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 7266, 1 }, -- Ur's Treatise on Shadow Magic
					},
					["lvl"] = 26,
					["groups"] = {
						{
							["itemID"] = 7266,	-- Ur's Treatise on Shadow Magic
							["coord"] = { 79.0, 37.6, REDRIDGE_MOUNTAINS },
							["description"] = "Located in one of the bookshelves at the top of the tower.",
						},
					},
				}),
				q(1477,	{ -- Vital Supplies
					["qg"] = 5694, -- High Sorcerer Andromath
					["isBreadcrumb"] = true,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(332, {	-- Wine Shop Advert
					["sourceQuest"] = 61,	-- Shipment to Stormwind
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1432, -- Renato Gallina
					["coord"] = { 57.0, 63.4, STORMWIND_CITY },
					["g"] = {
						i(2723),	-- Bottle of Dalaran Noir
					},
				}),
				q(397, { -- You Have Served Us Well
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 9 }, -- Warlock
					["qg"] = 1435, -- Zardeth of the Black Claw
					["sourceQuest"] = 336, -- A Noble Brew
				}),
			}),
		}),
	}),
};