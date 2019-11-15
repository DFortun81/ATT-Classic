---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(AZSHARA, {	-- Azshara
			n(-17, {	-- Quests
				q(3382, {	-- A Crew Under Fire
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(7486, {	-- A Hero's Reward
					["lvl"] = 55,
					["qg"] = 13278,	-- Duke Hydraxis
					["sourceQuest"] = 6824,	-- Hands of the Enemy
					["g"] = {
						i(18399),	-- Ocean's Breeze
						i(18398),	-- Tidal Loop
					},
				}),
				q(5536, {	-- A Land Filled with Hatred
					["lvl"] = 45,
					["qg"] = 11548, -- Loth'atu
					["coord"] = { 11.4, 78.2, AZSHARA },
				}),
				q(3381, {	-- A Meeting with the Master
					["lvl"] = 45,
					["repeatable"] = true,
					["u"] = 2,
				}),
				q(6823, {	-- Agent of Hydraxis
					["lvl"] = 55,
					["qg"] = 13278,	-- Duke Hydraxis
					["sourceQuest"] = 6822,	-- The Molten Core
				}),
				q(3564, {	-- Andron's Payment to Jediga
					["lvl"] = 45,
					["qg"] = 6522, -- Andron Gant
					["sourceQuest"] = 3542, -- Delivery to Andron Gant
					["races"] = HORDE_ONLY,
				}),
				q(3602, {	-- Azsharite
					["lvl"] = 45,
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 3511,	-- The Name of the Beast
					["g"] = {
						i(10839),	-- Crystallized Note
					},
				}),
				q(8575, {	-- Azuregos's Magical Ledger
					["lvl"] = 60,
					["races"] = ALLIANCE_ONLY,
					["u"] = 3, -- Not available yet.
				}),
				q(3508, {	-- Breaking the Ward
					["lvl"] = 45,
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 3141,	-- Loramus
				}),
				q(3542, {	-- Delivery to Andron Gant
					["lvl"] = 45,
					["qg"] = 8587, -- Jediga
					["sourceQuest"] = 3517, -- Stealing Knowledge
					["races"] = HORDE_ONLY,
				}),
				q(3561, {	-- Delivery to Archmage Xylem
					["lvl"] = 45,
					["races"] = HORDE_ONLY,
					["qg"] = 8587, -- Jediga
					["sourceQuest"] = 3517, -- Stealing Knowledge
				}),
				q(3541, {	-- Delivery to Jes'rimon
					["lvl"] = 45,
					["races"] = HORDE_ONLY,
				}),
				q(3518, {	-- Delivery to Magatha
					["lvl"] = 45,
					["races"] = HORDE_ONLY,
					["qg"] = 8587, -- Jediga
					["sourceQuest"] = 3517, -- Stealing Knowledge
				}),
				q(6821, {	-- Eye of the Emberseer
					["lvl"] = 55,
					["qg"] = 13278,	-- Duke Hydraxis
					["sourceQuests"] = {
						6804,	-- Poisoned Water
						6805,	-- Stormers and Rumblers
					},
				}),
				q(9364, {	-- Fragmented Magic
					["lvl"] = 60,
					["classes"] = {8},	-- Mage
					["qg"] = 8379,		-- Archmage Xylem
				}),
				q(6824, {	-- Hands of the Enemy
					["lvl"] = 55,
					["qg"] = 13278,	-- Duke Hydraxis
					["sourceQuest"] = 6823,	-- Agent of Hydraxis
				}),
				q(3563, {	-- Jes'rimon's Payment to Jediga
					["lvl"] = 45,
					["races"] = HORDE_ONLY,
					["qg"] = 8659,	-- Jes'rimon
				}),
				q(3601, {	-- Kim'jael Indeed!
					["lvl"] = 47,
					["qg"] = 8420,	-- Kim'jael
					["g"] = {
						i(10830),	-- M73 Frag Grenade
					},
				}),
				q(5534, {	-- Kim'jael's "Missing" Equipment
					["lvl"] = 47,
					["races"] = HORDE_ONLY,
				}),
				q(3141, {	-- Loramus
					["lvl"] = 45,
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 2744,	-- The Demon Hunter
				}),
				q(3562, {	-- Magatha's Payment to Jediga
					["lvl"] = 45,
					["races"] = HORDE_ONLY,
					["qg"] = 4046, -- Magatha Grimtotem
					["sourceQuest"] = 3518, -- Delivery to Magatha
				}),
				q(3503, {	-- Meeting with the Master
					["lvl"] = 45,
					["repeatable"] = true,
				}),
				q(6804, {	-- Poisoned Water
					["lvl"] = 55,
					["qg"] = 13278,	-- Duke Hydraxis
				}),
				q(3421, {	-- Return Trip
					["lvl"] = 45,
					["repeatable"] = true,
				}),
				q(5535, {	-- Spiritual Unrest
					["lvl"] = 45,
					["qg"] = 11548, -- Loth'atu
					["coord"] = { 11.4, 78.2, AZSHARA },
				}),
				q(3517, {	-- Stealing Knowledge
					["lvl"] = 45,
					["races"] = HORDE_ONLY,
					["qg"] = 8587, -- Jediga
				}),
				q(6805, {	-- Stormers and Rumblers
					["lvl"] = 55,
					["qg"] = 13278,	-- Duke Hydraxis
				}),
				q(3621, {	-- The Formation of Felbane
					["lvl"] = 45,
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 3602,	-- Azsharite
				}),
				q(6822, {	-- The Molten Core
					["lvl"] = 55,
					["qg"] = 13278,	-- Duke Hydraxis
					["sourceQuest"] = 6821,	-- Eye of the Emberseer
				}),
				q(3509, {	-- The Name of the Beast
					["lvl"] = 45,
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 3508,	-- Breaking the Ward
				}),
				q(3510, {	-- The Name of the Beast
					["lvl"] = 45,
					["qg"] = 6134,	-- Lord Arkkoroc
					["sourceQuest"] = 3509,	-- The Name of the Beast
				}),
				q(3511, {	-- The Name of the Beast
					["lvl"] = 45,
					["qg"] = 6134,	-- Lord Arkkoroc
					["sourceQuest"] = 3510,	-- The Name of the Beast
				}),
				q(8729, {	-- The Wrath of Neptulon
					["lvl"] = 60,
					["races"] = HORDE_ONLY,
					["qg"] = 11811,	-- Narain Soothfancy
					["g"] = {
						i(21526),	-- Band of Icy Depths
						i(21527),	-- Darkwater Robes
					},
				}),
				q(3565, {	-- Xylem's Payment to Jediga
					["lvl"] = 45,
					["races"] = HORDE_ONLY,
					["qg"] = 8379, -- Archmage Xylem
					["sourceQuest"] = 3561, -- Delivery to Archmage Xylem
				}),
				q(9362, {	-- Warlord Krellian
					["lvl"] = 60,
					["classes"] = {8},	-- Mage
					["qg"] = 8379,		-- Archmage Xylem
				}),
			}),
		}),
	}),
};