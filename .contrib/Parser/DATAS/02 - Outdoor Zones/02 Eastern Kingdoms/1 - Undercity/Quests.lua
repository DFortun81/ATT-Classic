---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(UNDERCITY, {	-- Undercity
			n(-17, {	-- Quests
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
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(12230),	-- Felwood Slime Sample
					},
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
					["lvl"] = 47,
					["races"] = HORDE_ONLY,
					["qg"] = 6741,	-- Innkeeper Norman
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
				q(4739, { -- In Search of Menara Voidrender
					["lvl"] = 31,
					["races"] = HORDE_ONLY,
					["classes"] = { 9 },	-- Warlock
					["qg"] = 4563, -- Kaal Soulreaper
				}),
				q(243, {	-- Into the Field
					["qg"] = 5204,	-- Apothecary Zinge
					["sourceQuest"] = 238,	-- Errand for Apothecary Zinge
					["coord"] = { 50.13, 67.98, UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(4969, { -- Knowledge of the Orb of Orahil
					["lvl"] = 35,
					["races"] = HORDE_ONLY,
					["classes"] = { 9 },	-- Warlock
					["qg"] = 4563, -- Kaal Soulreaper
				}),
				q(2995, {	-- Lines of Communication
					["lvl"] = 42,
					["races"] = HORDE_ONLY,
					["qg"] = 7825,	-- Oran Snakewrithe
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
					["races"] = {
						5,	-- Undead
					},
					["lvl"] = 10,
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
					["races"] = {
						5,	-- Undead
					},
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
				q(4489, { -- Summon Felsteed
					["lvl"] = 40,
					["races"] = HORDE_ONLY,
					["classes"] = { 9 },	-- Warlock
					["qg"] = 4563, -- Kaal Soulreaper
				}),
				q(4661, {	-- Testing for Corruption - Felwood
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(15103),	-- Corrupt Tested Sample
					},
				}),
				q(4561, {	-- Testing for Impurities - Un'Goro Crater
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(15102),	-- Un'Goro Tested Sample
					},
				}),
				q(5961, {	-- The Champion of the Banshee Queen
					["lvl"] = 54,
					["races"] = HORDE_ONLY,
				}),
				q(6145, {	-- The Crimson Courier
					["lvl"] = 56,
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 6144,	-- The Call to Command
				}),
				q(495, {	-- The Crown of Will
					["qg"] = 2227,	-- Sharlindra
					["coord"] = { 57.60, 93.84, UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 34,
				}),
				q(5049, {	-- The Jeremiah Blues
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
				}),
				q(357, {	-- The Lich's Identity
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 1498,	-- Bethor Iceshard
				}),
				q(1004, {	-- The New Frontier
					["lvl"] = 54,
					["races"] = HORDE_ONLY,
					["qg"] = 10879,	-- Harbinger Balthazad
				}),
				q(736, {	-- The Star, the Hand and the Heart
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
				}),
				q(1164, {	-- To Steal From Thieves
					["lvl"] = 27,
					["races"] = HORDE_ONLY,
					["qg"] = 4486,	-- Genavie Callow
					["g"] = {
						i(4443),	-- Grim Pauldrons
						i(2032),	-- Gallan Cuffs
					},
				}),
				q(5658, {	-- Touch of Weakness
					["qg"] = 4606,	-- Aelthalyste
					["coord"] = { 49.01, 18.32, UNDERCITY },
					["altQuests"] = {
						5659,
						5660,
						5661,
						5662,
						5663,
					},
					["class"] = PRIEST,
					["races"] = { UNDEAD },
					["lvl"] = 10
				}),
			}),
		}),
	}),
};