---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(STORMWIND_CITY, {
			n(QUESTS, {
				q(7794, {	-- A Donation of Mageweave
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4338, 60 },	-- Mageweave Cloth
					},
					["lvl"] = 40,
				}),
				q(7795, {	-- A Donation of Runecloth
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 14047, 60 },	-- Runecloth
					},
					["lvl"] = 50,
				}),
				q(7793, {	-- A Donation of Silk
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4306, 60 },	-- Silk Cloth
					},
					["lvl"] = 26,
				}),
				q(7791, {	-- A Donation of Wool
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2592, 60 },	-- Wool Cloth
					},
					["lvl"] = 12,
				}),
				q(212, {	-- A Meal Served Cold
					["qg"] = 1141,	-- Angus Stern
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
				q(335, {	-- A Noble Brew (1)
					["qg"] = 1435,	-- Zardeth of the Black Claw
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2784, 1 },	-- Musquash Root
						{ "i", 2779, 1 },	-- Tear of Tilloa
					},
					["lvl"] = 25,
				}),
				q(336, {	-- A Noble Brew (2)
					["qg"] = 1435,	-- Zardeth of the Black Claw
					["sourceQuest"] = 335,	-- A Noble Brew (1)
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2788, 1 },	-- Black Claw Stout
					},
					["lvl"] = 25,
				}),
				q(1638, {	-- A Warrior's Training
					["qgs"] = {
						913,	-- Lyria Du Lac <Warrior Trainer>
						5480,	-- Ilsa Corbin <Warrior Trainer>
					},
					["altQuests"] = {
						1684,	-- Elanaria
						1679,	-- Muren Stormpike
					},
					["coords"] = {
						{ 78.6, 45.6, STORMWIND_CITY },
						{ 41, 65.8, ELWYNN_FOREST },
					},
					["maps"] = { ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(11451, {	-- Alicia's Poem
					["qg"] = 24729,	-- Alicia
					["coord"] = { 66.9, 13.8, STORMWIND_CITY },
					["maps"] = { SHATTRATH_CITY },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["cost"] = {
						{ "i", 34089, 1 },	-- Alicia's Poem
					},
					["lvl"] = 60,
				}),
				q(396, {	-- An Audience with the King
					["qg"] = 1646,	-- Baros Alexston <City Architect>
					["sourceQuest"] = 395,	-- Brotherhood's End
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2956, 1 },	-- Report on the Defias Brotherhood
					},
					["lvl"] = 16,
					["g"] = {
						i(2933),	-- Seal of Wrynn
					},
				}),
				q(7796, {	-- Additional Runecloth
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 14047, 60 },	-- Runecloth
					},
					["lvl"] = 50,
				}),
				q(5676, {	-- Arcane Feedback
					["qgs"] = {
						11406,	-- High Priest Rohan <Priest Trainer>
						376,	-- High Priestess Laurena <Priest Trainer>
					},
					["coords"] = {
						{ 26.4, 7.6, IRONFORGE },
						{ 38.8, 26.6, STORMWIND_CITY },
					},
					["altQuests"] = {
						5678,	-- Arcane Feedback (NYI?)
						5677,	-- Arcane Feedback (Ironforge)
					},
					["races"] = { HUMAN },
					["classes"] = { PRIEST },
					["lvl"] = 20,
					["groups"] = {
						{
							["recipeID"] = 13896,	-- Feedback (Rank 1)
							["rank"] = 1,
						},
					},
				}),
				q(3789, {	-- Assisting Arch Druid Staghelm
					["qg"] = 6740,	-- Innkeeper Allison
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["altQuests"] = {
						3790,	-- Assisting Arch Druid Staghelm (Ironforge)
						3763,	-- Assisting Arch Druid Staghelm (Darnassus)
					},
					["lvl"] = 47,
				}),
				q(1942, {	-- Astral Knot Garment
					["qg"] = 1309,	-- Wynne Larson <Robe Merchant>
					["sourceQuest"] = 1940,	-- Pristine Spider Silk
					["coord"] = { 41.8, 76.4, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["lvl"] = 26,
					["groups"] = {
						i(9516),	-- Astral Knot Blouse
						i(7511),	-- Astral Knot Robe
					},
				}),
				q(1639, {	-- Bartleby the Drunk
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["qg"] = 6089,	-- Harry Burlguard
				}),
				q(1665, {	-- Bartleby's Mug
					["qg"] = 6090,	-- Bartleby
					["sourceQuest"] = 1640,	-- Beat Bartleby
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 6781, 1 },	-- Bartleby's Mug
					},
					["lvl"] = 10,
				}),
				q(389, {	-- Bazil Thredd
					["qg"] = 1646,	-- Baros Alexston
					["sourceQuest"] = 373,	-- The Unsent Letter
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(1640, {	-- Beat Bartleby
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["qg"] = 6090,	-- Bartleby
					["sourceQuest"] = 1639,	-- Bartleby the Drunk
				}),
				q(344, {	-- Brother Paxton
					["qg"] = 1440,	-- Milton Sheaf
					["sourceQuest"] = 343,	-- Speaking of Fortitude
					["coord"] = { 74.2, 7.5, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(395, {	-- Brotherhood's End
					["sourceQuest"] = 394,	-- The Head of the Beast
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(1705, {	-- Burning Blood
					["qg"] = 1416,	-- Grimand Elmore
					["sourceQuest"] = 1700,	-- Grimand Elmore
					["maps"] = { DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 6844, 20 },	-- Burning Blood
						{ "i", 6845, 1 },	-- Burning Rock
					},
					["lvl"] = 20,
				}),
				q(8254, {	-- Cenarion Aid
					["qg"] = 5489,	-- Brother Joshua <Priest Trainer>
					["coord"] = { 38.8, 26.4, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PRIEST },
					["lvl"] = 50,
				}),
				q(5634, {	-- Desperate Prayer
					["qgs"] = {
						11401,	-- Priestess Alathea <Priest Trainer>
						1226,	-- Maxan Anvol <Priest Trainer>
						377,	-- Priestess Josetta <Priest Trainer>
						11406,	-- High Priest Rohan <Priest Trainer>
						11397,	-- Nara Meideros <Priest Trainer>
						376,	-- High Priestess Laurena <Priest Trainer>
						3600,	-- Laurna Morninglight <Priest Trainer>
					},
					["coords"] = {
						{ 39.6, 80.8, DARNASSUS },
						{ 47.2, 52.2, DUN_MOROGH },
						{ 43.4, 65.6, ELWYNN_FOREST },
						{ 26.4, 7.6, IRONFORGE },
						{ 20.8, 50.2, STORMWIND_CITY },
						{ 38.8, 26.6, STORMWIND_CITY },
						{ 55.6, 56.8, TELDRASSIL },
					},
					["maps"] = {
						DARNASSUS,
						DUN_MOROGH,
						ELWYNN_FOREST,
						IRONFORGE,
						STORMWIND_CITY,
						TELDRASSIL,
					},
					["altQuests"] = {
						5635,	-- Desperate Prayer (Elwynn Forest)
						5636,	-- Desperate Prayer (Teldrassil)
						5637,	-- Desperate Prayer (Dun Morogh)
						5638,	-- Desperate Prayer (Stormwind City #2)
						5639,	-- Desperate Prayer (Ironforge)
						5640,	-- Desperate Prayer (Darnassus)
					},
					["races"] = { HUMAN, DWARF },
					["classes"] = { PRIEST },
					["lvl"] = 10,
					["groups"] = {
						{
							["recipeID"] = 13908,	-- Desperate Prayer (Rank 1)
							["rank"] = 1,
						},
					},
				}),
				q(1716, {	-- Devourer of Souls
					["qg"] = 6122,	-- Gakin the Darkbinder
					["sourceQuest"] = 1717,	-- Gakin's Summons
					["coord"] = { 25.4, 78.6, STORMWIND_CITY },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(6261, {	-- Dungar Longdrink
					["qg"] = 1323,	-- Osric Strang
					["sourceQuest"] = 6281,	-- Continue to Stormwind
					["coord"] = { 74.2, 47.5, STORMWIND_CITY },
					["races"] = { HUMAN },
					["cost"] = {
						{ "i", 16115, 1 },	-- Osric's Crate
					},
					["lvl"] = 10,
				}),
				q(1701, {	-- Fire Hardened Mail
					["qg"] = 5413,	-- Furen Longbeard
					["sourceQuest"] = 1702,	-- The Shieldsmith
					["coord"] = { 58.0, 16.8, STORMWIND_CITY },
					["maps"] = { RAZORFEN_KRAUL, WETLANDS, STONETALON_MOUNTAINS },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6842, 1 },	-- Furen's Instructions
						{ "i", 6838, 50 },	-- Scorched Spider Fang
						{ "i", 6839, 12 },	-- Charred Horn
						{ "i", 6840, 1 },	-- Galvanized Horn
						{ "i", 6841, 1 },	-- Vial of Phlogiston
					},
					["lvl"] = 20,
				}),
				q(6184, {	-- Flint Shadowmore
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					["sourceQuest"] = 6183,	-- Honor the Dead
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				q(1782, {	-- Furen's Armor
					["qg"] = 5413,	-- Furen Longbeard
					["sourceQuest"] = 1701,	-- Fire Hardened Mail
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["g"] = {
						i(6972),	-- Fire Hardened Hauberk
					},
				}),
				q(1921, {	-- Gathering Materials
					["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
					["sourceQuest"] = 1920,	-- Investigate the Blue Recluse
					["coord"] = { 38.6, 79.6, STORMWIND_CITY },
					["maps"] = { LOCH_MODAN },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 2589, 10 },	-- Linen Cloth
						{ "i", 7249, 6 },	-- Charged Rift Gem
					},
					["lvl"] = 15,
					["groups"] = {
						{
							["itemID"] = 7249,	-- Charged Rift Gem
							["questID"] = 1921,	-- Gathering Materials
							["coord"] = { 35, 27, LOCH_MODAN },
						},
					},
				}),
				q(5048, {	-- Good Natured Emma
					["qg"] = 10782,	-- Royal Factor Bathrilor <Stormwind Census>
					["sourceQuest"] = 5022,	-- Better Late Than Never
					["coord"] = { 48.6, 30.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12724, 1 },	-- Janice's Parcel
					},
					["lvl"] = 50,
				}),
				q(1700, {	-- Grimand Elmore
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["isBreadcrumb"] = true,
					["sourceQuest"] = 1701,	-- Fire Hardened Mail
					["qg"] = 5413,	-- Furen Longbeard
				}),
				q(1706, {	-- Grimand's Armor
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["sourceQuest"] = 1705,	-- Burning Blood
					["qg"] = 1416,	-- Grimand Elmore
					["g"] = {
						i(6971),	-- Fire Hardened Coif
					},
				}),
				q(333, {	-- Harlan Needs a Resupply
					["qg"] = 1427,	-- Harlan Bagley
					["coord"] = { 55.1, 56.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2724, 1 },	-- Cloth Request
					},
				}),
				q(1939, {	-- High Sorcerer Andromath
					["qgs"] = {
						5144,	-- Bink <Mage Trainer>
						5497,	-- Jennea Cannon <Mage Trainer>
					},
					["coords"] = {
						{ 27.0, 8.2, IRONFORGE },
						{ 38.6, 79.6, STORMWIND_CITY },
					},
					["maps"] = {
						IRONFORGE,
						STORMWIND_CITY,
					},
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
				q(399, {	-- Humble Beginnings
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1646,	-- Baros Alexston <City Architect>
					["coord"] = { 49.1, 30.3, STORMWIND_CITY },
				});
				q(1448, {	-- In Search of The Temple
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					["coord"] = { 70.0, 55.0, SWAMP_OF_SORROWS },
					["maps"] = { SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(2745, {	-- Infiltrating the Castle
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["sourceQuest"] = 350,	-- Look to an Old Friend
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
				}),
				q(2746, {	-- Items of Some Consequence
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7766,	-- Tyrion
					["sourceQuest"] = 2745,	-- Infiltrating the Castle
					["cost"] = {
						{ "i", 4306, 3 },	-- Silk Cloth
						{ "i", 8683, 2 },	-- Clara's Fresh Apple
					},
				}),
				q(1920, {	-- Investigate the Blue Recluse
					["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
					["sourceQuest"] = 1919,	-- Report to Jennea
					["coord"] = { 38.6, 79.6, STORMWIND_CITY },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 7308, 1 },	-- Cantation of Manifestation
						{ "i", 7292, 3 },	-- Filled Containment Coffer
					},
					["lvl"] = 15,
					["groups"] = {
						{
							["itemID"] = 7247,	-- Chest of Containment Coffers
							["coord"] = { 39.4, 83.3, STORMWIND_CITY },
							["groups"] = {
								{
									["itemID"] = 7292,	-- Filled Containment Coffer
									["questID"] = 1920,	-- Investigate the Blue Recluse
								},
							},
						},
					},
				}),
				q(1704, {	-- Klockmort Spannerspan
					["qg"] = 5413,	-- Furen Longbeard
					["sourceQuest"] = 1701,	-- Fire Hardened Mail
					["coord"] = { 58.0, 16.8, STORMWIND_CITY },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["cost"] = {
						{ "i", 6926, 1 },	-- Furen's Notes
					},
					["lvl"] = 20,
				}),
				q(350, {	-- Look to an Old Friend
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 393,	-- Shadow of the Past
					["qg"] = 332,	-- Master Mathias Shaw
					["coord"] = { 76.0, 60.1, STORMWIND_CITY },
				}),
				q(1941, {	-- Manaweave Robe
					["qg"] = 1309,	-- Wynne Larson <Robe Merchant>
					["sourceQuest"] = 1921,	-- Gathering Materials
					["coord"] = { 41.8, 76.4, STORMWIND_CITY },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["lvl"] = 15,
					["groups"] = {
						i(7509),	-- Manaweave Robe
					},
				}),
				q(1666, {	-- Marshal Haggard
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["qg"] = 6089,	-- Harry Burlguard
					["sourceQuest"] = 1665,	-- Bartleby's Mug
				}),
				q(2360, {	-- Mathias and the Defias
					["qg"] = 332,	-- Master Mathias Shaw
					["coord"] = { 76.0, 60.1, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 20,
				}),
				q(1861, {	-- Mirror Lake
					["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
					["sourceQuest"] = 1860,	-- Speak with Jennea
					["coord"] = { 38.6, 79.4, STORMWIND_CITY },
					["maps"] = { ELWYNN_FOREST },
					["classes"] = { MAGE },
					["races"] = ALLIANCE_ONLY,
					["altQuests"] = {
						1880,	-- Mage-tastic Gizmonitor
					},
					["cost"] = {
						{ "i", 7207, 1 },	-- Jennea's Flask
						{ "i", 7206, 1 },	-- Mirror Lake Water Sample
					},
					["lvl"] = 10,
					["groups"] = {
						i(7508),	-- Ley Orb
						i(9513),	-- Ley Staff
					},
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
					["qg"] = 1428,	-- Rema Schneider
					["sourceQuest"] = 333,	-- Harlan Needs a Resupply
					["coord"] = { 49.5, 55.3, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2760, 1 },	-- Thurman's Sewing Kit
					},
				}),
				q(1940, {	-- Pristine Spider Silk
					["qg"] = 5694,	-- High Sorcerer Andromath
					["sourceQuest"] = 1938,	-- Ur's Treatise on Shadow Magic
					["coord"] = { 37.6, 81.6, STORMWIND_CITY },
					["maps"] = { DUSKWOOD },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 7267, 8 },	-- Pristine Spider Silk
					},
					["lvl"] = 26,
				}),
				q(2281, {	-- Redridge Rendezvous
					["qg"] = 6946,	-- Renzik "The Shiv"
					["coord"] = { 75.9, 60.3, STORMWIND_CITY },
					["sourceQuests"] = {
						2260,	-- Erion's Behest(Darnassus)
						2298,	-- Kingly Shakedown(Ironforge)
						2300,	-- SI:7(Elwynn Forest)
					},
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 16,
				}),
				q(1919, {	-- Report to Jennea
					["qg"] = 7312,	-- Dink <Mage Trainer>
					["coord"] = { 26.8, 8.6, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 15,
				}),
				q(6285, {	-- Return to Lewis
					["qg"] = 352,	-- Dungar Longdrink
					["sourceQuest"] = 6261,	-- Dungar Longdrink
					["races"] = { HUMAN },
					["cost"] = {
						{ "i", 16115, 1 },	-- Osric's Crate
					},
					["lvl"] = 10,
				}),
				q(393, {	-- Shadow of the Past
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1646,	-- Baros Alexston
					["sourceQuest"] = 392,	-- The Curious Visitor
					["cost"] = {
						{ "i", 8687, 1},	-- Sealed Description of Thredd's Visitor
					},
				}),
				q(2206, {	-- Snatch and Grab
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["qg"] = 332,	-- Master Mathias Shaw
					["sourceQuest"] = 2205,	-- Seek out SI:7
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
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
					["coord"] = { 51.8, 12.1, STORMWIND_CITY },
					["cost"] = {
						{ "i", 2806, 1 },	-- Package for Stormpike
					},
					["races"] = ALLIANCE_ONLY,
				}),
				q(579, {	-- Stormwind Library
					["qg"] = 2504,	-- Donyal Tovald <Librarian>
					["coord"] = { 71.6, 7.6, STORMWIND_CITY },
					["repeatable"] = true,
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3898, 1 },	-- Library Scrip
					},
					["groups"] = {
						i(3899),	-- Legends of the Gurubashi, Volume 3
						i(2154),	-- The Story of Morgan Ladimore
					},
				}),
				q(1688, {	-- Surena Caledon
					["qg"] = 6122,	-- Gakin the Darkbinder
					["sourceQuest"] = 1685,	-- Gakin's Summons
					["coord"] = { 25.4, 78.4, STORMWIND_CITY },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
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
				q(434, {	-- The Attack!
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7766,	-- Tyrion
					["sourceQuest"] = 2746,	-- Items of Some Consequence
				}),
				q(1739, {	-- The Binding (Succubus)
					["qg"] = 6122,	-- Gakin the Darkbinder
					["sourceQuest"] = 1738,	-- Heartswood
					["coord"] = { 25.4, 78.4, STORMWIND_CITY },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["cr"] = 5677,	-- Summoned Succubus
					["cost"] = {
						{ "i", 6913, 1 },	-- Heartswood Core
					},
					["lvl"] = 20,
					["groups"] = {
						recipe(712),	-- Summon Succubus
						i(22243),	-- Small Soul Pouch
					},
				}),
				q(1689, {	-- The Binding (Voidwalker)
					["qg"] = 6122,	-- Gakin the Darkbinder
					["sourceQuest"] = 1688,	-- Surena Caledon
					["coord"] = { 25.4, 78.4, STORMWIND_CITY },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["cr"] = 5676,	-- Summoned Voidwalker
					["cost"] = {
						{ "i", 6928, 1 },	-- Bloodstone Choker
					},
					["lvl"] = 10,
					["groups"] = {
						recipe(697),	-- Summon Voidwalker
					},
				}),
				q(392, {	-- The Curious Visitor
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1719,	-- Warden Thelwater
					["sourceQuest"] = 391,	-- The Stockage Riots
					["cost"] = {
						{ "i", 8687, 1},	-- Sealed Description of Thredd's Visitor
					},
				}),
				q(3765, {  -- The Corruption Abroad
					["qg"] = 4984,  -- Argos Nightwhisper
					["coord"] = { 21.6, 55.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(141, {	-- The Defias Brotherhood (4/7)
					["qg"] = 332,	-- Master Mathias Shaw
					["sourceQuest"] = 135,	-- The Defias Brotherhood (3/7)
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1353, 1 },	-- Shaw's Report
					},
					["lvl"] = 14,
				}),
				q(6182, {	-- The First and the Last
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["coord"] = { 78, 18, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				q(394, {	-- The Head of the Beast
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 434,	-- The Attack!
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
				}),
				q(1274, {	-- The Missing Diplomat (1/17)
					["lvl"] = 28,
					["qg"] = 4982,	-- Thomas <Altar Boy>
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 39.8, 28.3, STORMWIND_CITY },
				}),
				q(1241, {	-- The Missing Diplomat (2/17)
					["lvl"] = 28,
					["qg"] = 4960,	-- Bishop DeLavey
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 78.4, 25.4, STORMWIND_CITY },
					["sourceQuest"] = 1274,
					["cost"] = {
						{ "i", 5948, 1 },	-- Letter to Jorgen
					},
				}),
				q(1242, {	-- The Missing Diplomat (3/17)
					["lvl"] = 28,
					["qg"] = 4959,	-- Jorgen
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 73.2, 78.6, STORMWIND_CITY },
					["sourceQuest"] = 1241,
					["cost"] = {
						{ "i", 5946, 1 },	-- Sealed Note to Elling
					},
				}),
				q(1243, {	-- The Missing Diplomat (4/17)
					["lvl"] = 28,
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					["description"] = "Elling Trias is located on the 2nd floor of Trias' Cheese.",
					["sourceQuest"] = 1242,
					["cost"] = {
						{ "i", 5960, 1 },	-- Sealed Note to Watcher Backus
					},
				}),
				q(1246, {	-- The Missing Diplomat (7/17)
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					["description"] = "Elling Trias is located on the 2nd floor of Trias' Cheese.",
					["sourceQuest"] = 1245,
				}),
				q(1447, {	-- The Missing Diplomat (8/17)
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4961,	-- Dashel Stonefist
					["coord"] = { 70.5, 44.9, STORMWIND_CITY },
					["description"] = "Dashel Stonefist will spawn 2 level 26 adds to fight alongside him.",
					["sourceQuest"] = 1246,
				}),
				q(1247, {	-- The Missing Diplomat (9/17)
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4961,	-- Dashel Stonefist
					["coord"] = { 70.5, 44.9, STORMWIND_CITY },
					["sourceQuest"] = 1447,
				}),
				q(1248, {	-- The Missing Diplomat (10/17)
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					["description"] = "Elling Trias is located on the 2nd floor of Trias' Cheese.",
					["sourceQuest"] = 1247,
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
				q(1790, {	-- The Symbol of Life
					["qg"] = 6171,	-- Duthorian Rall
					["description"] = "This quest is repeatable, but can only be completed while you have the quest \"The Tome of Divinity\" (Quest #1786) in your quest log.",
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["repeatable"] = true,
					["lvl"] = 12,
				}),
				q(1641, {	-- The Tome of Divinity (1)
					["qg"] = 6171,	-- Duthorian Rall
					["altQuests"] = {
						2998,	-- The Tome of Divinity
						3681,	-- The Tome of Divinity
						1787,	-- The Tome of Divinity (8)
					},
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1642, {	-- The Tome of Divinity (2)
					["provider"] = { "i", 6775 },	-- Tome of Divinity
					["sourceQuest"] = 1641,	-- The Tome of Divinity (1)
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1643, {	-- The Tome of Divinity (3)
					["qg"] = 6171,	-- Duthorian Rall
					["sourceQuest"] = 1642,	-- The Tome of Divinity (2)
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1644, {	-- The Tome of Divinity (4)
					["qg"] = 6174,	-- Stephanie Turner
					["sourceQuest"] = 1643,	-- The Tome of Divinity (3)
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1780, {	-- The Tome of Divinity (5)
					["qg"] = 6174,	-- Stephanie Turner
					["sourceQuest"] = 1644,	-- The Tome of Divinity (4)
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1781, {	-- The Tome of Divinity (6)
					["qg"] = 6171,	-- Duthorian Rall
					["sourceQuest"] = 1644,	-- The Tome of Divinity (5)
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1786, {	-- The Tome of Divinity (7)
					["qg"] = 6173,	-- Gazin Tenorm
					["sourceQuest"] = 1781,	-- The Tome of Divinity (6)
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1788, {	-- The Tome of Divinity (9)
					["qg"] = 6173,	-- Gazin Tenorm
					["sourceQuest"] = 1787,	-- The Tome of Divinity (8)
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(4485, {	-- The Tome of Nobility
					["qg"] = 5491,	-- Arthur the Faithful <Paladin Trainer>
					["coord"] = { 38.7, 32.9, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(4486, {	-- The Tome of Nobility
					["qg"] = 5149,	-- Brandur Ironhammer <Paladin Trainer>
					["coord"] = { 23.6, 6.6, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(1661, {	-- The Tome of Nobility
					["qg"] = 6171,	-- Duthorian Rall
					["sourceQuests"] = {
						4485,	-- The Tome of Nobility
						4486,	-- The Tome of Nobility
					},
					["coord"] = { 40, 29.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 40,
					["groups"] = {
						recipe(13819),	-- Summon Warhorse
					},
				}),
				q(2607, {	-- The Touch of Zanzil
					["qg"] = 332,	-- Master Mathias Shaw
					["sourceQuest"] = 2359,	-- Klaven's Tower
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 20,
				}),
				q(2608, {	-- The Touch of Zanzil
					["qg"] = 7207,	-- Doc Mixilpixil
					["sourceQuest"] = 2607,	-- The Touch of Zanzil
					["coord"] = { 78.0, 59.0, STORMWIND_CITY },
					["description"] = "Doc Mixilpixil is located in the basement of the SI:7 building.\n\nType /lay to lie down for the operation.",
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 20,
				}),
				q(2609, {	-- The Touch of Zanzil
					["qg"] = 7207,	-- Doc Mixilpixil
					["sourceQuest"] = 2608,	-- The Touch of Zanzil
					["description"] = "Simple Wildflowers are sold by Florist Gump on the Trade District side of the Canal near Old Town (64.4, 60.8).\nLeaded Vial can by purchased from any Trade Goods Vendor.\nBronze Tube can be purchased in limited supply from Engineering Vendors, or you can get an Engineer to craft you one.\nA Spool of Chartruese Thread is on the floor of the Finest Thread, which is on the Cathedral Square side of the Canal near The Park (39.9, 46.3).",
					["coord"] = { 78.0, 59.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 3421, 1 },	-- Simple Wildflowers
						{ "i", 3372, 1 },	-- Leaded Vial
						{ "i", 4371, 1 },	-- Bronze Tube
						{ "i", 8431, 1 },	-- Spool of Light Chartreuse Silk Thread
					},
					["lvl"] = 20,
					["g"] = {
						{
							["itemID"] = 8431,	-- Spool of Light Chartreuse Silk Thread
							["questID"] = 2609,	-- The Touch of Zanzil
							["coord"] = { 39.9, 46.3, STORMWIND_CITY },
						},
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
				q(1938, {	-- Ur's Treatise on Shadow Magic
					["qg"] = 5694,	-- High Sorcerer Andromath
					["sourceQuest"] = 1939,	-- High Sorcerer Andromath
					["coord"] = { 37.6, 81.6, STORMWIND_CITY },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 7266, 1 },	-- Ur's Treatise on Shadow Magic
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
				q(1477,	{	-- Vital Supplies
					["qg"] = 5694,	-- High Sorcerer Andromath
					["isBreadcrumb"] = true,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(332, {	-- Wine Shop Advert
					["qg"] = 1432,	-- Renato Gallina
					["sourceQuest"] = 61,	-- Shipment to Stormwind
					["coord"] = { 57.0, 63.4, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2722, 1 },	-- Wine Ticket
					},
					["g"] = {
						i(2723),	-- Bottle of Dalaran Noir
					},
				}),
				q(397, {	-- You Have Served Us Well
					["qg"] = 1435,	-- Zardeth of the Black Claw
					["sourceQuest"] = 336,	-- A Noble Brew
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
					["lvl"] = 25,
					["groups"] = {
						i(3556),	-- Dread Mage Hat
					},
				}),
			}),
		}),
	}),
};