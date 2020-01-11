---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(STORMWIND_CITY, {	-- Stormwind City
			n(-17, {	-- Quests
				q(5066, { -- A Call to Arms: The Plaguelands!
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2198, -- Crier Goodman
					["isBreadcrumb"] = true,
				}),
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
				q(8233, {	-- A Simple Request
					["qgs"] = {
						13283,	-- Lord Tony Romano <Rogue Trainer>
						918,	-- Osborne the Night Man <Rogue Trainer>
					},
					["races"] = ALLIANCE_ONLY,
					["classes"] = {4},	-- Rogue
					["lvl"] = 50,
				}),
				q(3789, {	-- Assisting Arch Druid Staghelm
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 6740,	-- Innkeeper Allison
				}),
				q(8417, {	-- A Troubled Spirit
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
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 1 }, -- Warrior
					["qg"] = 1416, -- Grimand Elmore
					["sourceQuest"] = 1700, -- Grimand Elmore
					["cost"] = { 
						{ "i", 6844, 20 }, -- Burning Blood
						{ "i", 6845, 1 }, -- Burning Rock
					},
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
					["lvl"] = 56,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 6183,	-- Honor the Dead
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
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10782, -- Royal Factor Bathrilor
					["sourceQuest"] = 5022, -- Better Late Than Never
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
				q(6183, {	-- Honor the Dead
					["lvl"] = 56,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 6182,	-- The First and the Last
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
					["lvl"] = 38,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					["coord"] = { 70.0, 55.0, SWAMP_OF_SORROWS },
					["maps"] = { SWAMP_OF_SORROWS },
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
				q(6187, {	-- Order Must Be Restored
					["lvl"] = 56,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["sourceQuest"] = 6186,	-- The Blightcaller Cometh
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
				q(1688, { -- Surena Caledon
					["lvl"] = 10,
					["races"] = { 1, 7 }, -- Human and Gnome only
					["classes"] = { 9 },	-- Warlock
					["qg"] = 6122, -- Gakin the Darkbinder
					["sourceQuest"] = 1685, -- Gakin's Summons
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
				}),
				q(141, {	-- The Defias Brotherhood (4/7)
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 332,	-- Master Mathias Shaw
					["sourceQuest"] = 135,	-- The Defias Brotherhood (3/7)
				}),
				q(6182, {	-- The First and the Last
					["lvl"] = 56,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
				}),
				q(394, { -- The Head of the Beast
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 434, -- The Attack!
					["qg"] = 482, -- Elling Trias <Master of Cheese>
				}),
				q(8151, {	-- The Hunter's Charm
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
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2285,	-- Count Remington Ridgewell
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
					["lvl"] = 38,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					["coord"] = { 64.3, 20.7, STORMWIND_CITY },
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