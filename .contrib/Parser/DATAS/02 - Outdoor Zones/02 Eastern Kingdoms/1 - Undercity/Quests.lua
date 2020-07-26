---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(UNDERCITY, {
			n(QUESTS, {
				q(4294, {	-- ... and a Batch of Ooze
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(12235),	-- Un'Goro Slime Sample
					},
				}),
				q(7817, {	-- A Donation of Mageweave
					["qg"] = 14729,	-- Ralston Farnsley
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7818, {	-- A Donation of Runecloth
					["qg"] = 14729,	-- Ralston Farnsley
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(7814, {	-- A Donation of Silk
					["qg"] = 14729,	-- Ralston Farnsley
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(7813, {	-- A Donation of Wool
					["qg"] = 14729,	-- Ralston Farnsley
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
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(3784, {	-- Assisting Arch Druid Runetotem
					["qg"] = 6741,	-- Innkeeper Norman
					["altQuests"] = {
						936,	-- Assisting Arch Druid Runetotem
						3762, 	-- Assisting Arch Druid Runetotem
					},
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
				}),
				q(1847, {	-- Brutal Legguards
					["qg"] = 6411,	-- Velora Nitely
					["sourceQuest"] = 1846,	-- Dragonmaw Shinbones
					["coord"] = { 62.4, 39.2, UNDERCITY },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["groups"] = {
						i(7132),	-- Brutal Legguards
					},
				}),
				q(1473, {	-- Creature of the Void
					["lvl"] = 10,
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["qg"] = 5675,	-- Carendin Halgar
				}),
				q(1472, {	-- Devourer of Souls
					["qg"] = 5675,	-- Carendin Halgar
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["description"] = "Completing this quest (1472) prevents you from completing the quest in Orgrimmar also named Devourer of Souls (1507).",
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1846, {	-- Dragonmaw Shinbones
					["qg"] = 6411,	-- Velora Nitely
					["sourceQuest"] = 1841,	-- Velora Nitely and the Brutal Legguards
					["coord"] = { 62.4, 39.2, UNDERCITY },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 7134, 8 },	-- Sturdy Dragonmaw Shinbone
					},
					["lvl"] = 20,
				}),
				q(232, {	-- Errand for Apothecary Zinge
					["qg"] = 5204,	-- Apothecary Zinge
					["coord"] = { 50.13, 67.98, UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(238, {	-- Errand for Apothecary Zinge
					["qg"] = 7683,	-- Alessandro Luca
					["sourceQuest"] = 232,	-- Errand for Apothecary Zinge
					["coord"] = { 58.64, 54.73, UNDERCITY },
					["races"] = HORDE_ONLY,
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
					["lvl"] = 20,
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["qg"] = 5693,	-- Godrick Farsan
					["cost"] = {
						{ "i", 6312 },	-- Dalin's Heart
						{ "i", 6313 },	-- Comar's Heart
					},
				}),
				q(4739, {	-- In Search of Menara Voidrender
					["lvl"] = 31,
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
					["qg"] = 4563,	-- Kaal Soulreaper
				}),
				q(243, {	-- Into the Field
					["qg"] = 5204,	-- Apothecary Zinge
					["sourceQuest"] = 238,	-- Errand for Apothecary Zinge
					["coord"] = { 50.13, 67.98, UNDERCITY },
					["races"] = HORDE_ONLY,
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
					["lvl"] = 42,
					["races"] = HORDE_ONLY,
					["qg"] = 7825,	-- Oran Snakewrithe
				}),
				q(8250, {	-- Magecraft
					["qg"] = 4567,	-- Pierce Shackleton <Mage Trainer>
					["coord"] = { 85.6, 14.0, UNDERCITY },
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["lvl"] = 50,
				}),
				q(4642, {	-- Melding of Influences
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["g"] = {
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
					["lvl"] = 10,
				}),
				q(7562, {	-- Mor'zul Bloodbringer
					["qg"] = 5753,	-- Martha Strain <Demon Trainer>
					["coord"] = { 85.8, 15.8, UNDERCITY },
					["classes"] = { WARLOCK },
					["lvl"] = 60,
				}),
				q(8273, {	-- Oran's Gratitude
					["qg"] = 7825,	-- Oran Snakewrithe
					["sourceQuest"] = 2782,	-- Rin'ji's Secret
					["coord"] = { 73.4, 32.4, UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
					["g"] = {
						i(20643),	-- Undercity Reservist's Cap
						i(20642),	-- Antiquated Nobleman's Tunic
					},
				}),
				q(864, {	-- Return to Apothecary Zinge
					["lvl"] = 38,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(9634),	-- Skilled Handling Gloves
						i(9635),	-- Master Apothecary Cape
						i(11502),	-- Loreskin Shoulders
					},
				}),
				q(6324, {	-- Return to Podrig
					["qg"] = 4551,	-- Michael Garrett
					["sourceQuest"] = 6322,	-- Michael Garrett
					["coord"] = { 63.4, 48.6, UNDERCITY },
					["maps"] = { SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["lvl"] = 10,
				}),
				q(1358, {	-- Sample for Helbrim
					["qg"] = 5204,	-- Apothecary Zinge
					["sourceQuest"] = 1358,	-- Sample for Helbrim
					["coord"] = { 49.8, 68.2, UNDERCITY },
					["maps"] = { SILVERPINE_FOREST, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["g"] = {
						i(10637),	-- Brewer's Gloves
						i(10638),	-- Long Draping Cape
					},
				}),
				q(3001, {	-- Seeking Strahad
					["qg"] = 5675,	-- Carendin Halgar
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(3570, {	-- Seeping Corruption
					["lvl"] = 45,
					["races"] = HORDE_ONLY,
				}),
				q(3569, {	-- Seeping Corruption
					["lvl"] = 45,
					["races"] = HORDE_ONLY,
				}),
				q(3568, {	-- Seeping Corruption
					["lvl"] = 45,
					["races"] = HORDE_ONLY,
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
				q(4489, {	-- Summon Felsteed
					["lvl"] = 40,
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
					["qg"] = 4563,	-- Kaal Soulreaper
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
					["g"] = {
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
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["description"] = "This quest is repeatable, but you must have the quest \"... and a Batch of Ooze\" (quest #4294) in your quest log to complete it.",
					["g"] = {
						i(15102),	-- Un'Goro Tested Sample
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
					["lvl"] = 10,
					["cost"] = {
						{ "i", 7227, 1 },	-- Balnir Snapdragons
					},
				}),
				q(1471, {	-- The Binding (Voidwalker)
					["lvl"] = 10,
					["races"] = { UNDEAD },
					["classes"] = { WARLOCK },
					["qg"] = 5675,	-- Carendin Halgar
				}),
				q(1474, {	-- The Binding (Succubus)
					["lvl"] = 20,
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
					["qg"] = 5675,	-- Carendin Halgar
					["sourceQuest"] = 1476,	-- Hearts of the Pure
				}),
				q(5961, {	-- The Champion of the Banshee Queen
					["lvl"] = 54,
					["races"] = HORDE_ONLY,
				}),
				q(6145, {	-- The Crimson Courier
					["sourceQuest"] = 6144,	-- The Call to Command
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15868, 1 },	-- The Grand Crusader's Command
					},
					["lvl"] = 56,
					["groups"] = {
						{
							["itemID"] = 15868,	-- The Grand Crusader's Command
							["questID"] = 6145,	-- The Crimson Courier
							["cr"] = 12337,	-- Crimson Courier
						},
					},
				}),
				q(5049, {	-- The Jeremiah Blues
					["qg"] = 10781,	-- Royal Overseer Bauhaus <Undercity Census>
					["sourceQuest"] = 5023,	-- Better Late Than Never
					["coord"] = { 69.6, 43.6, UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12724, 1 },	-- Janice's Parcel
					},
					["lvl"] = 50,
				}),
				q(357, {	-- The Lich's Identity
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 1498,	-- Bethor Iceshard
				}),
				q(736, {	-- The Star, the Hand and the Heart
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
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
					["g"] = {
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
					["lvl"] = 16,
					["qg"] = 6467,	-- Mennet Carkad
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["sourceQuest"] = 1998,	-- Fenwick Thatros
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
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
			}),
		}),
	}),
};