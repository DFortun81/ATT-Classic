---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(THUNDER_BLUFF, {	-- Thunder Bluff
			n(-17, {	-- Quests
				q(7822, {	-- A Donation of Mageweave
					["lvl"] = 40,
					["qg"] = 14728,	-- Rumstag Proudstrider
				}),
				q(7823, {	-- A Donation of Runecloth
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
					["qg"] = 14728,	-- Rumstag Proudstrider
				}),
				q(7821, {	-- A Donation of Silk
					["lvl"] = 26,
					["qg"] = 14728,	-- Rumstag Proudstrider
				}),
				q(7820, {	-- A Donation of Wool
					["lvl"] = 12,
					["qg"] = 14728,	-- Rumstag Proudstrider
				}),
				q(2968, {	-- A Future Task
					["lvl"] = 45,
				}),
				q(7825, {	-- Additional Runecloth
					["qg"] = 14728,	-- Rumstag Proudstrider
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(3762, {	-- Assisting Arch Druid Runetotem
					["lvl"] = 47,
					["qg"] = 6746,	-- Innkeeper Pala
				}),
				q(1066, {	-- Blood of Innocents
					["lvl"] = 13,
					["races"] = HORDE_ONLY,
					["qg"] = 2216,	-- Apothecary Lydon
				}),
				q(1064, {	-- Forsaken Aid
					["lvl"] = 13,
					["races"] = HORDE_ONLY,
					["qg"] = 4046,	-- Magatha Grimtotem
				}),
				q(1136, {	-- Frostmaw
					["lvl"] = 26,
					["races"] = HORDE_ONLY,
					["qg"] = 3441,	-- Melor Stonehoof
					["g"] = {
						i(6720),	-- Spirit Hunter Headdress
						i(5810),	-- Fresh Carcass
					},
				}),
				q(1065, {	-- Journey to Tarren Mill
					["lvl"] = 13,
					["races"] = HORDE_ONLY,
					["qg"] = 3419,	-- Apothecary Zamah
				}),
				q(769, {	-- Kodo Hide Bag
					["lvl"] = 4,
					["qg"] = 3050,	-- Veren Tallstrider
					["g"] = {
						i(5083),	-- Pattern: Kodo Hide Bag
					},
				}),
				q(1130, {	-- Melor Sends Word
					["lvl"] = 20,
					["races"] = HORDE_ONLY,
					["qg"] = 3387,	-- Jorn Skyseer
				}),
				q(3786, {	-- Morrowgrain Research
					["lvl"] = 47,
					["races"] = HORDE_ONLY,
					["qg"] = 9087,	-- Bashana Runetotem
					["g"] = {
						i(11887),	-- Cenarion Circle Cache
					},
				}),
				q(3782, {	-- Morrowgrain Research
					["lvl"] = 47,
					["races"] = HORDE_ONLY,
					["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
					["g"] = {
						i(11022),	-- Packet of Tharlendris Seeds
					},
				}),
				q(3804, {	-- Morrowgrain to Thunder Bluff
					["lvl"] = 47,
					["races"] = HORDE_ONLY,
					["qg"] = 9087,	-- Bashana Runetotem
					["g"] = {
						i(11887),	-- Cenarion Circle Cache
					},
				}),
				q(2965, {	-- Portents of Uldum
					["lvl"] = 45,
					["races"] = HORDE_ONLY,
					["qg"] = 3978,	-- Sage Truthseeker
				}),
				q(744, {	-- Preparation for Ceremony
					["lvl"] = 7,
					["races"] = HORDE_ONLY,
					["qg"] = 2987,	-- Eyahn Eagletalon
					["g"] = {
						i(4968),	-- Bound Harness
						i(4967),	-- Tribal Warrior's Shield
					},
				}),
				q(1123, {	-- Rabine Saturna
					["lvl"] = 54,
					["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
				}),
				q(2967, {	-- Return to Thunder Bluff
					["lvl"] = 45,
					["races"] = HORDE_ONLY,
					--["objectID"] = 142343,	-- Uldum Pedestal
				}),
				q(1067, {	-- Return to Thunder Bluff
					["lvl"] = 13,
					["races"] = HORDE_ONLY,
					["qg"] = 2216,	-- Apothecary Lydon
				}),
				q(2966, {	-- Seeing What Happens
					["lvl"] = 45,
					["races"] = HORDE_ONLY,
				}),
				q(1131, {	-- Steelsnap
					["lvl"] = 20,
					["races"] = HORDE_ONLY,
					["qg"] = 3441,	-- Melor Stonehoof
				}),
				q(742, {	-- The Ashenvale Hunt
					["lvl"] = 20,
					["races"] = HORDE_ONLY,
					["qg"] = 10881,	-- Bluff Runner Windstrider
				}),
				q(1086, {	-- The Flying Machine Airport
					["lvl"] = 13,
					["races"] = HORDE_ONLY,
					["qg"] = 3419,	-- Apothecary Zamah
				}),
				q(1000, {	-- The New Frontier
					["lvl"] = 54,
					["qg"] = 10881,	-- Bluff Runner Windstrider
				}),
				q(2440, {	-- The Platinum Discs
					["lvl"] = 40,
					["g"] = {
						i(3928),	-- Superior Healing Potion
						i(6149),	-- Greater Mana Potion
						i(9587),	-- Thawpelt Sack
					},
				}),
				q(1196, {	-- The Sacred Flame
					["lvl"] = 20,
					["races"] = HORDE_ONLY,
					["qg"] = 4721,	-- Zangen Stonehoof
				}),
				q(1195, {	-- The Sacred Flame
					["lvl"] = 20,
					["races"] = HORDE_ONLY,
					["qg"] = 4721,	-- Zangen Stonehoof
					["g"] = {
						i(5867),	-- Etched Phial
					},
				}),
				q(1197, {	-- The Sacred Flame
					["lvl"] = 20,
					["races"] = HORDE_ONLY,
					["qg"] = 4722,	-- Rau Cliffrunner
					["g"] = {
						i(6739),	-- Cliffrunner's Aim
						i(6740),	-- Azure Sash
					},
				}),
				q(3761, {	-- Un'Goro Soil
					["lvl"] = 47,
					["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
				}),
				q(264, {	-- Until Death Do Us Part
					["lvl"] = 12,
					["races"] = HORDE_ONLY,
					["qg"] = 5543,	-- Clarice Foster
				}),
			}),
		}),
	}),
};