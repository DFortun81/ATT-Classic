---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(UNDERCITY, {
			n(QUESTS, {
				q(4294, {	-- ... and a Batch of Ooze
					["qg"] = 10136,	-- Chemist Fuely
					["coord"] = { 47.6, 73.0, UNDERCITY },
					["maps"] = { UNGORO_CRATER },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12236, 5 },	-- Pure Un'Goro Sample
					},
					["lvl"] = 48,
				}),
				q(7817, {	-- A Donation of Mageweave
					["qg"] = 14729,	-- Ralston Farnsley
					["coord"] = { 71.8, 29, UNDERCITY },
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7818, {	-- A Donation of Runecloth
					["qg"] = 14729,	-- Ralston Farnsley
					["coord"] = { 71.8, 29, UNDERCITY },
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(7814, {	-- A Donation of Silk
					["qg"] = 14729,	-- Ralston Farnsley
					["coord"] = { 71.8, 29, UNDERCITY },
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(7813, {	-- A Donation of Wool
					["qg"] = 14729,	-- Ralston Farnsley
					["coord"] = { 71.8, 29, UNDERCITY },
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(4293, {	-- A Sample of Slime...
					["qg"] = 10136,	-- Chemist Fuely
					["coord"] = { 47.6, 73.0, UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12234, 5 },	-- Corrupted Felwood Sample
					},
					["lvl"] = 48,
				}),
				q(7819, {	-- Additional Runecloth
					["qg"] = 14729,	-- Ralston Farnsley
					["sourceQuest"] = 7818,	-- A Donation of Runecloth
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["coord"] = { 71.8, 29, UNDERCITY },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(3784, {	-- Assisting Arch Druid Runetotem (Undercity)
					["qg"] = 6741,	-- Innkeeper Norman
					["coord"] = { 67.6, 38.2, UNDERCITY },
					["altQuests"] = {
						936,	-- Assisting Arch Druid Runetotem (Orgrimmar)
						3762, 	-- Assisting Arch Druid Runetotem (Thunder Bluff)
					},
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
				}),
				q(1847, {	-- Brutal Legguards
					["qg"] = 6411,	-- Velora Nitely
					["sourceQuest"] = 1846,	-- Dragonmaw Shinbones
					["coord"] = { 62.4, 39.2, UNDERCITY },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(7132),	-- Brutal Legguards
					},
				}),
				q(1473, {	-- Creature of the Void
					["qg"] = 5675,	-- Carendin Halgar
					["sourceQuest"] = 1478,	-- Halgar's Summons
					["coord"] = { 85, 25.6, UNDERCITY },
					["maps"] = { TIRISFAL_GLADES },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["altQuests"] = {
						1501,	-- Creature of the Void
					},
					["cost"] = {
						{ "i", 6285, 1 },	-- Egalin's Grimoire
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 6285,	-- Egalin's Grimoire
							["questID"] = 1473,	-- Creature of the Void
							["coord"] = { 51.1, 67.6, TIRISFAL_GLADES },
						},
					},
				}),
				q(9189, {	-- Delivery to the Sepulcher
					["qg"] = 16287,	-- Ambassador Sunsorrow
					["sourceQuest"] = 9180,	-- Journey to Undercity [Blood Elf Only]
					["coord"] = { 57.8, 90.6, UNDERCITY },
					["timeline"] = { "added 3.3.0.10772", "removed 4.0.3.10000" },
					["cost"] = {
						{ "i", 22629, 1 },	-- Sealed Sin'dorei Orders
					},
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(15, 1, 15),
				}),
				q(1472, {	-- Devourer of Souls
					["qg"] = 5675,	-- Carendin Halgar
					["coord"] = { 85, 25.6, UNDERCITY },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["altQuests"] = {
						1507,	-- Devourer of Souls (Orgrimmar)
					},
					["lvl"] = 20,
				}),
				q(1846, {	-- Dragonmaw Shinbones
					["qg"] = 6411,	-- Velora Nitely
					["sourceQuest"] = 1841,	-- Velora Nitely and the Brutal Legguards
					["coord"] = { 62.4, 39.2, UNDERCITY },
					["maps"] = { WETLANDS },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 7134, 8 },	-- Sturdy Dragonmaw Shinbone
					},
					["lvl"] = 20,
				}),
				q(232, {	-- Errand for Apothecary Zinge (1/2)
					["qg"] = 5204,	-- Apothecary Zinge
					["coord"] = { 50, 68.4, UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8525, 1 },	-- Zinge's Purchase Order
					},
					["lvl"] = 38,
				}),
				q(238, {	-- Errand for Apothecary Zinge (2/2)
					["qg"] = 7683,	-- Alessandro Luca
					["sourceQuest"] = 232,	-- Errand for Apothecary Zinge (1/2)
					["coord"] = { 58.2, 55.2, UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8523, 1 },	-- Field Testing Kit
					},
					["lvl"] = 38,
				}),
				q(1998, {	-- Fenwick Thatros
					["qg"] = 6467,	-- Mennet Carkad
					["coord"] = { 83.6, 67.6, UNDERCITY },
					["maps"] = { SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 7306, 1 },	-- Fenwick's Head
					},
					["lvl"] = 16,
					["groups"] = {
						{
							["itemID"] = 7306,	-- Fenwick's Head
							["questID"] = 1998,	-- Fenwick Thatros
							["cr"] = 6570,	-- Fenwick Thatros
							["coord"] = { 59.6, 34.2, SILVERPINE_FOREST },
						},
					},
				}),
				q(2378, {	-- Find the Shattered Hand
					["qg"] = 6467,	-- Mennet Carkad
					["coord"] = { 83.2, 69, UNDERCITY },
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				q(1961, {	-- Gathering Materials
					["qg"] = 4568,	-- Anastasia Hartwell <Mage Trainer>
					["sourceQuest"] = 1960,	-- Investigate the Alchemist Shop
					["coord"] = { 85.0, 10.2, UNDERCITY },
					["maps"] = { SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 7293, 6 },	-- Dalaran Mana Gem
						{ "i", 2589, 10 },	-- Linen Cloth
					},
					["lvl"] = 15,
				}),
				q(1476, {	-- Hearts of the Pure
					["qg"] = 5693,	-- Godrick Farsan
					["sourceQuests"] = {
						1507,	-- Devourer of Souls (Orgrimmar)
						1472,	-- Devourer of Souls (Undercity)
					},
					["coord"] = { 85, 14.8, UNDERCITY },
					["maps"] = { SILVERPINE_FOREST, WETLANDS },
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["cost"] = {
						{ "i", 6312, 1 },	-- Dalin's Heart
						{ "i", 6313, 1 },	-- Comar's Heart
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 6312,	-- Dalin's Heart
							["questID"] = 1476,	-- Hearts of the Pure
							["cr"] = 5682,	-- Dalin Forgewright
							["coord"] = { 46.6, 84.2, SILVERPINE_FOREST },
						},
						{
							["itemID"] = 6313,	-- Comar's Heart
							["questID"] = 1476,	-- Hearts of the Pure
							["cr"] = 5683,	-- Comar Villard
							["coord"] = { 50.6, 12.6, WETLANDS },
						},
					},
				}),
				q(243, {	-- Into the Field
					["qg"] = 5204,	-- Apothecary Zinge
					["sourceQuest"] = 238,	-- Errand for Apothecary Zinge (2/2)
					["coord"] = { 50.13, 67.98, UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8523, 1 },	-- Field Testing Kit
					},
					["lvl"] = 38,
				}),
				q(1960, {	-- Investigate the Alchemist Shop
					["qg"] = 4568,	-- Anastasia Hartwell <Mage Trainer>
					["sourceQuest"] = 1959,	-- Report to Anastasia
					["coord"] = { 85.0, 10.2, UNDERCITY },
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 7308, 1 },	-- Cantation of Manifestation
						{ "i", 7247, 1 },	-- Chest of Containment Coffers
						{ "i", 7292, 3 },	-- Filled Containment Coffer
					},
					["lvl"] = 15,
				}),
				q(2995, {	-- Lines of Communication
					["qg"] = 7825,	-- Oran Snakewrithe
					["coord"] = { 73.3, 32.4, UNDERCITY },
					["maps"] = { THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						objective(1, {	-- Burn the Highvale Records
							["coord"] = { 32, 46.9, THE_HINTERLANDS },
						}),
						objective(2, {	-- Burn the Highvale Notes
							["coord"] = { 29.7, 48.5, THE_HINTERLANDS },
						}),
						objective(3, {	-- Burn the Highvale Report
							["coord"] = { 28.7, 46.1, THE_HINTERLANDS },
						}),
					},
				}),
				q(4642, {	-- Melding of Influences
					["qg"] = 10136,	-- Chemist Fuely
					["sourceQuests"] = {
						4294,	-- ... and a Batch of Ooze
						4293,	-- A Sample of Slime...
					},
					["coord"] = { 47.6, 73.0, UNDERCITY },
					["maps"] = { UNGORO_CRATER },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12291, 1 },	-- Merged Ooze Sample
					},
					["lvl"] = 48,
					["groups"] = {
						{
							["itemID"] = 12288,	-- Encased Corrupt Ooze
							["cr"] = 6557,	-- Primal Ooze
							["groups"] = {
								{
									["itemID"] = 12291,	-- Merged Ooze Sample
									["questID"] = 4642,	-- Melding of Influences
									["cr"] = 9621,	-- Gargantuan Ooze
								},
							},
						},
						i(15702),	-- Chemist's Ring
						i(15703),	-- Chemist's Smock
					},
				}),
				q(6322, {	-- Michael Garrett
					["qg"] = 4556,	-- Gordon Wendham
					["sourceQuest"] = 6323,	-- Ride to the Undercity
					["coord"] = { 61.6, 41.8, UNDERCITY },
					["maps"] = { SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["cost"] = {
						{ "i", 16210, 1 },	-- Gordon's Crate
					},
					["lvl"] = 10,
				}),
				q(8273, {	-- Oran's Gratitude
					["qg"] = 7825,	-- Oran Snakewrithe
					["sourceQuest"] = 2782,	-- Rin'ji's Secret
					["coord"] = { 73.4, 32.4, UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						i(20643),	-- Undercity Reservist's Cap
						i(20642),	-- Antiquated Nobleman's Tunic
					},
				}),
				q(6324, {	-- Return to Podrig
					["qg"] = 4551,	-- Michael Garrett
					["sourceQuest"] = 6322,	-- Michael Garrett
					["coord"] = { 63.4, 48.6, UNDERCITY },
					["maps"] = { SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["cost"] = {
						{ "i", 16210, 1 },	-- Gordon's Crate
					},
					["lvl"] = 10,
				}),
				q(1358, {	-- Sample for Helbrim
					["qg"] = 5204,	-- Apothecary Zinge
					["sourceQuest"] = 1359,	-- Zinge's Delivery
					["coord"] = { 49.8, 68.2, UNDERCITY },
					["maps"] = { THE_BARRENS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6016, 1 },	-- Wolf Heart Sample
					},
					["lvl"] = 10,
					["groups"] = {
						i(10637),	-- Brewer's Gloves
						i(10638),	-- Long Draping Cape
					},
				}),
				q(3568, {	-- Seeping Corruption (1/3)
					["qg"] = 10136,	-- Chemist Fuely
					["coord"] = { 47.6, 73.0, UNDERCITY },
					["maps"] = { AZSHARA },
					["cost"] = {
						{ "i", 10691, 1 },	-- Filled Vial Labeled #1
						{ "i", 10692, 1 },	-- Filled Vial Labeled #2
						{ "i", 10693, 1 },	-- Filled Vial Labeled #3
						{ "i", 10694, 1 },	-- Filled Vial Labeled #4
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
					["groups"] = {
						i(10695, {	-- Box of Empty Vials
							{
								["itemID"] = 10687,	-- Empty Vial Labeled #1
								["coord"] = { 48, 60, AZSHARA },
								["groups"] = {
									{
										["itemID"] = 10691,	-- Filled Vial Labeled #1
										["questID"] = 3568,	-- Seeping Corruption (1/3)
									},
								},
							},
							{
								["itemID"] = 10688,	-- Empty Vial Labeled #2
								["coord"] = { 47, 51, AZSHARA },
								["groups"] = {
									{
										["itemID"] = 10692,	-- Filled Vial Labeled #2
										["questID"] = 3568,	-- Seeping Corruption (1/3)
									},
								},
							},
							{
								["itemID"] = 10689,	-- Empty Vial Labeled #3
								["coord"] = { 48, 48, AZSHARA },
								["groups"] = {
									{
										["itemID"] = 10693,	-- Filled Vial Labeled #3
										["questID"] = 3568,	-- Seeping Corruption (1/3)
									},
								},
							},
							{
								["itemID"] = 10690,	-- Empty Vial Labeled #4
								["coord"] = { 47, 46, AZSHARA },
								["groups"] = {
									{
										["itemID"] = 10694,	-- Filled Vial Labeled #4
										["questID"] = 3568,	-- Seeping Corruption (1/3)
									},
								},
							},
						}),
					},
				}),
				q(3569, {	-- Seeping Corruption (2/3)
					["qg"] = 10136,	-- Chemist Fuely
					["sourceQuest"] = 3568,	-- Seeping Corruption (1/3)
					["coord"] = { 47.6, 73.0, UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10712, 1 },	-- Cuely's Elixir
					},
					["lvl"] = 45,
				}),
				q(3570, {	-- Seeping Corruption (3/3)
					["qg"] = 10136,	-- Chemist Fuely
					["sourceQuest"] = 3569,	-- Seeping Corruption (2/3)
					["coord"] = { 47.6, 73.0, UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(1962, {	-- Spellfire Robes
					["qg"] = 11049,	-- Rhiannon Davis <Expert Tailor>
					["sourceQuest"] = 1961,	-- Gathering Materials
					["coord"] = { 70.2, 30.2, UNDERCITY },
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["lvl"] = 15,
					["groups"] = {
						i(7510),	-- Lesser Spellfire Robes
					},
				}),
				q(4661, {	-- Testing for Corruption - Felwood
					["provider"] = { "o", 174848 },	-- Testing Equipment
					["description"] = "This quest is repeatable, but you must have the quest \"A Sample of Slime...\" (quest #4293) in your quest log to complete it.",
					["coord"] = { 47.8, 73.3, UNDERCITY },
					["maps"] = { FELWOOD },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12230, 1 },	-- Felwood Slime Sample
					},
					["crs"] = {
						7086,	-- Cursed Ooze
						7092,	-- Tainted Ooze
						14345,	-- The Ongar
					},
					["lvl"] = 48,
					["groups"] = {
						{
							["itemID"] = 15103,	-- Corrupt Tested Sample
							["description"] = "This can contain a whole lot of nothing. Bring ~30 slime samples with you.",
							["groups"] = {
								{
									["itemID"] = 12234,	-- Corrupted Felwood Sample
									["questID"] = 4293,	-- A Sample of Slime...
								},
							},
						},
					},
				}),
				q(4561, {	-- Testing for Impurities - Un'Goro Crater
					["provider"] = { "o", 174848 },	-- Testing Equipment
					["description"] = "This quest is repeatable, but you must have the quest \"... and a Batch of Ooze\" (quest #4294) in your quest log to complete it.",
					["coord"] = { 47.7, 73.3, UNDERCITY },
					["maps"] = { UNGORO_CRATER },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12235, 1 },	-- Un'Goro Slime Sample
					},
					["crs"] = {
						6559,	-- Glutinous Ooze
						6556,	-- Muculent Ooze
						6557,	-- Primal Ooze
					},
					["lvl"] = 48,
					["groups"] = {
						{
							["itemID"] = 15102,	-- Un'Goro Tested Sample
							["description"] = "This can contain a whole lot of nothing. Bring ~30 slime samples with you.",
							["groups"] = {
								{
									["itemID"] = 12236,	-- Pure Un'Goro Sample
									["questID"] = 4294,	-- ... and a Batch of Ooze
								},
							},
						},
					},
				}),
				q(1882, {	-- The Balnir Farmstead
					["qg"] = 4568,	-- Anastasia Hartwell <Mage Trainer>
					["sourceQuests"] = {
						1881,	-- Speak with Anastasia
						1883,	-- Speak with Un'thuwa
					},
					["coord"] = { 85.0, 10.2, UNDERCITY },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 7227, 1 },	-- Balnir Snapdragons
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 7227,	-- Balnir Snapdragons
							["questID"] = 1882,	-- The Balnir Farmstead
							["coord"] = { 77.4, 62.1, TIRISFAL_GLADES },
						},
						i(7507),	-- Arcane Orb
						i(9514),	-- Arcane Staff
					},
				}),
				q(1474, {	-- The Binding (Succubus)
					["qg"] = 5675,	-- Carendin Halgar
					["sourceQuest"] = 1476,	-- Hearts of the Pure
					["coord"] = { 85, 25.6, UNDERCITY },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["cr"] = 5677,	-- Summoned Succubus
					["cost"] = {
						{ "i", 6286, 1 },	-- Pure Hearts
					},
					["altQuests"] = {
						1513,	-- The Binding (Succubus) [Orgrimmar]
					},
					["lvl"] = 20,
					["groups"] = {
						recipe(712),	-- Summon Succubus
						i(22243),	-- Small Soul Pouch
					},
				}),
				q(1471, {	-- The Binding (Voidwalker)
					["qg"] = 5675,	-- Carendin Halgar
					["sourceQuest"] = 1473,	-- Creature of the Void
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["cr"] = 5676,	-- Summoned Voidwalker
					["altQuests"] = {
						1504,	-- The Binding (Voidwalker) [Orgrimmar]
					},
					["cost"] = {
						{ "i", 6284, 1 },	-- Runes of Summoning
					},
					["lvl"] = 10,
					["groups"] = {
						recipe(697),	-- Summon Voidwalker
					},
				}),
				q(5961, {	-- The Champion of the Banshee Queen
					["qg"] = 10181,	-- Lady Sylvanas Windrunner <Banshee Queen>
					["coord"] = { 57.8, 91.8, UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				q(1164, {	-- To Steal From Thieves
					["qg"] = 4486,	-- Genavie Callow
					["coord"] = { 64.8, 49.6, UNDERCITY },
					["maps"] = { ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5831, 1 },	-- Fardel's Head
						{ "i", 5830, 1 },	-- Kenata's Head
						{ "i", 5832, 1 },	-- Marcel's Head
					},
					["lvl"] = 27,
					["groups"] = {
						{
							["itemID"] = 5831,	-- Fardel's Head
							["questID"] = 1164,	-- To Steal From Thieves
							["cr"] = 4479,	-- Fardel Dabyrie
							["coord"] = { 55.0, 40.0, ARATHI_HIGHLANDS },
						},
						{
							["itemID"] = 5830,	-- Kenata's Head
							["questID"] = 1164,	-- To Steal From Thieves
							["cr"] = 4480,	-- Kenata Dabyrie
							["coord"] = { 56.2, 36.0, ARATHI_HIGHLANDS },
						},
						{
							["itemID"] = 5832,	-- Marcel's Head
							["questID"] = 1164,	-- To Steal From Thieves
							["cr"] = 4481,	-- Marcel Dabyrie
							["coord"] = { 54.5, 38.6, ARATHI_HIGHLANDS },
						},
						i(4443),	-- Grim Pauldrons
						i(2032),	-- Gallan Cuffs
					},
				}),
				q(1999, {	-- Tools of the Trade
					["qg"] = 6467,	-- Mennet Carkad
					["sourceQuest"] = 1998,	-- Fenwick Thatros
					["coord"] = { 83.2, 69, UNDERCITY },
					["maps"] = { SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 7309, 1 },	-- Dalaran Status Report
					},
					["lvl"] = 16,
					["groups"] = {
						{
							["itemID"] = 7309,	-- Dalaran Status Report
							["questID"] = 1999,	-- Tools of the Trade
							["coord"] = { 63.7, 65.3, SILVERPINE_FOREST },
						},
					},
				}),
				q(1803, {	-- Tome of the Cabal (2/3 Horde)
					["qg"] = 6293,	-- Jorah Annison
					["sourceQuest"] = 1801,	-- Tome of the Cabal (1/3 Horde)
					["coord"] = { 76.6, 36.8, UNDERCITY },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 6931, 1 },	-- Moldy Tome
						{ "i", 6997, 1 },	-- Tattered Manuscript
					},
					["lvl"] = 30,
				}),
				q(1805, {	-- Tome of the Cabal (3/3 Horde)
					["qg"] = 6293,	-- Jorah Annison
					["sourceQuest"] = 1803,	-- Tome of the Cabal (2/3 Horde)
					["coord"] = { 76.6, 36.8, UNDERCITY },
					["maps"] = { WETLANDS },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 7006, 1 },	-- Reconstructed Tome
						{ "i", 6930, 3 },	-- Rod of Channeling
					},
					["lvl"] = 30,
				}),
				q(5658, {	-- Touch of Weakness
					["qgs"] = {
						3706,	-- Tai'jin <Priest Trainer>
						4606,	-- Aelthalyste
						6018,	-- Ur'kyo <Priest Trainer>
					},
					["coords"] = {
						{ 54.2, 42.8, DUROTAR },
						{ 49.01, 18.32, UNDERCITY },
						{ 35.6, 87.6, ORGRIMMAR },
					},
					["maps"] = { DUROTAR, ORGRIMMAR },
					["altQuests"] = {
						5659,	-- Touch of Weakness (NYI)
						5660,	-- Touch of Weakness (Durotar)
						5661,	-- Touch of Weakness (Brill, unused)
						5662,	-- Touch of Weakness (Orgrimmar)
						5663,	-- Touch of Weakness (Undercity, unused)
					},
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = 10,
					["groups"] = {
						recipe(2652),	-- Touch of Weakness
					},
				}),
				q(1841, {	-- Velora Nitely and the Brutal Legguards
					["qg"] = 5878,	-- Thun'grim Firegaze
					["sourceQuest"] = 18382,	-- Brutal Armor
					["coord"] = { 257.2, 30.2, THE_BARRENS },
					["maps"] = { THE_BARRENS },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
			}),
		}),
	}),
};