---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(AZSHARA, {
			n(QUESTS, {
				q(3382, {	-- A Crew Under Fire
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(7486, {	-- A Hero's Reward
					["qg"] = 13278,	-- Duke Hydraxis
					["sourceQuest"] = 6824,	-- Hands of the Enemy
					["lvl"] = 55,
					["g"] = {
						i(18399),	-- Ocean's Breeze
						i(18398),	-- Tidal Loop
					},
				}),
				q(5536, {	-- A Land Filled with Hatred
					["qg"] = 11548, -- Loth'atu
					["coord"] = { 11.4, 78.2, AZSHARA },
					["lvl"] = 45,
				}),
				q(3381, {	-- A Meeting with the Master
					["qg"] = 8399,	-- Nyrill <Xylem's Apprentice>
					["coord"] = { 26.4, 46.2, AZSHARA },
					["repeatable"] = true,
					["lvl"] = 45,
					["u"] = 2,
				}),
				q(6823, {	-- Agent of Hydraxis
					["qg"] = 13278,	-- Duke Hydraxis
					["sourceQuest"] = 6822,	-- The Molten Core
					["lvl"] = 55,
				}),
				q(3564, {	-- Andron's Payment to Jediga
					["qg"] = 6522, -- Andron Gant
					["sourceQuest"] = 3542, -- Delivery to Andron Gant
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(3602, {	-- Azsharite
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 3511,	-- The Name of the Beast
					["coord"] = { 60.8, 66.4, AZSHARA },
					["cost"] = {
						{ "i", 10714, 20 },	-- Crystallized Azsharite
					},
					["lvl"] = 45,
					["g"] = {
						i(10839),	-- Crystallized Note
					},
				}),
				q(8575, {	-- Azuregos's Magical Ledger
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
					["u"] = 3, -- Not available yet.
				}),
				q(3508, {	-- Breaking the Ward
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 3141,	-- Loramus
					["coord"] = { 60.8, 66.4, AZSHARA },
					["lvl"] = 45,
				}),
				q(8153, {	-- Courser Antlers
					["qg"] = 8405,	-- Ogtinc
					["sourceQuest"] = 8151,	-- The Hunter's Charm
					["coord"] = { 42.2, 42.6, AZSHARA },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 20017, 2 },	-- Perfect Courser Antler
					},
					["lvl"] = 50,
				}),
				q(3542, {	-- Delivery to Andron Gant
					["qg"] = 8587, -- Jediga
					["sourceQuest"] = 3517, -- Stealing Knowledge
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(3561, {	-- Delivery to Archmage Xylem
					["qg"] = 8587, -- Jediga
					["sourceQuest"] = 3517, -- Stealing Knowledge
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(3541, {	-- Delivery to Jes'rimon
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(3518, {	-- Delivery to Magatha
					["qg"] = 8587, -- Jediga
					["sourceQuest"] = 3517, -- Stealing Knowledge
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(8235, {	-- Encoded Fragments
					["qg"] = 8379,	-- Archmage Xylem
					["sourceQuest"] = 8234, -- Sealed Azure Bag
					["coord"] = { 29.6, 40.6, AZSHARA },
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 20023, 10 },	-- Encoded Fragment
					},
					["lvl"] = 50,
				}),
				q(6821, {	-- Eye of the Emberseer
					["qg"] = 13278,	-- Duke Hydraxis
					["sourceQuests"] = {
						6804,	-- Poisoned Water
						6805,	-- Stormers and Rumblers
					},
					["lvl"] = 55,
				}),
				q(9364, {	-- Fragmented Magic
					["qg"] = 8379,		-- Archmage Xylem
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 23250, 1 },	-- Prismatic Shell
					},
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 4142,	-- Tome of Polymorph: Pig
							["recipeID"] = 28272,	-- Polymorph (Pig)
							["classes"] = { MAGE },
						},
					},
				}),
				q(6824, {	-- Hands of the Enemy
					["qg"] = 13278,	-- Duke Hydraxis
					["sourceQuest"] = 6823,	-- Agent of Hydraxis
					["lvl"] = 55,
				}),
				q(3563, {	-- Jes'rimon's Payment to Jediga
					["qg"] = 8659,	-- Jes'rimon
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(3601, {	-- Kim'jael Indeed!
					["qg"] = 8420,	-- Kim'jael
					["lvl"] = 47,
					["g"] = {
						i(10830),	-- M73 Frag Grenade
					},
				}),
				q(5534, {	-- Kim'jael's "Missing" Equipment
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
				}),
				q(3141, {	-- Loramus
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 2744,	-- The Demon Hunter
					["coord"] = { 60.8, 66.4, AZSHARA },
					["lvl"] = 45,
				}),
				q(3562, {	-- Magatha's Payment to Jediga
					["qg"] = 4046, -- Magatha Grimtotem
					["sourceQuest"] = 3518, -- Delivery to Magatha
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(8251, {	-- Magic Dust
					["qg"] = 8379,	-- Archmage Xylem
					["sourceQuest"] = 8250,	-- Magecraft
					["coord"] = { 29.6, 40.6, AZSHARA },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 20028, 10 },	-- Glittering Dust
					},
					["lvl"] = 50,
				}),
				q(3503, {	-- Meeting with the Master
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(8255, {	-- Of Coursers We Know
					["qg"] = 8405,	-- Ogtinc
					["sourceQuest"] = 8254,	-- Cenarion Aid
					["coord"] = { 42.2, 42.6, AZSHARA },
					["classes"] = { PRIEST },
					["cost"] = {
						{ "i", 20027, 4 },	-- Healthy Courser Gland
					},
					["lvl"] = 50,
				}),
				q(6804, {	-- Poisoned Water
					["qg"] = 13278,	-- Duke Hydraxis
					["cost"] = {
						{ "i", 17310, 1 },	-- Aspect of Neptulon
						{ "i", 17309, 12 },	-- Discordant Bracers
					},
					["lvl"] = 55,
				}),
				q(3421, {	-- Return Trip
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(5535, {	-- Spiritual Unrest
					["qg"] = 11548, -- Loth'atu
					["coord"] = { 11.4, 78.2, AZSHARA },
					["lvl"] = 45,
				}),
				q(3517, {	-- Stealing Knowledge
					["qg"] = 8587, -- Jediga
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(6805, {	-- Stormers and Rumblers
					["qg"] = 13278,	-- Duke Hydraxis
					["lvl"] = 55,
				}),
				q(3621, {	-- The Formation of Felbane
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 3602,	-- Azsharite
					["cost"] = {
						{ "i", 10738, 1 },	-- Shipment to Galvan
					},
					["lvl"] = 45,
				}),
				q(8256, {	-- The Ichor of Undeath
					["qg"] = 8405,	-- Ogtinc
					["sourceQuest"] = 8255,	-- Of Coursers We Know
					["coord"] = { 42.2, 42.6, AZSHARA },
					["classes"] = { PRIEST },
					["cost"] = {
						{ "i", 7972, 1 },	-- Ichor of Undeath
					},
					["lvl"] = 50,
				}),
				q(6822, {	-- The Molten Core
					["qg"] = 13278,	-- Duke Hydraxis
					["sourceQuest"] = 6821,	-- Eye of the Emberseer
					["lvl"] = 55,
				}),
				q(3509, {	-- The Name of the Beast
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 3508,	-- Breaking the Ward
					["coord"] = { 60.8, 66.4, AZSHARA },
					["lvl"] = 45,
				}),
				q(3510, {	-- The Name of the Beast
					["qg"] = 6134,	-- Lord Arkkoroc
					["sourceQuest"] = 3509,	-- The Name of the Beast
					["coord"] = { 77.2, 42.8, AZSHARA },
					["cost"] = {
						{ "i", 10599, 1 },	-- Hetaera's Beaten Head
						{ "i", 10598, 1 },	-- Hetaera's Bloodied Head
						{ "i", 10600, 1 },	-- Hetaera's Bruised Head
					},
					["lvl"] = 45,
					["groups"] = {
						n(6140, {	-- Hetaera
							["coords"] = {
								{ 56.6, 44.6, AZSHARA },
								{ 59.4, 40.6, AZSHARA },
							},
							["groups"] = {
								{
									["itemID"] = 10599,	-- Hetaera's Beaten Head
									["questID"] = 3510,	-- The Name of the Beast
								},
								{
									["itemID"] = 10598,	-- Hetaera's Bloodied Head
									["questID"] = 3510,	-- The Name of the Beast
								},
								{
									["itemID"] = 10600,	-- Hetaera's Bruised Head
									["questID"] = 3510,	-- The Name of the Beast
								},
							},
						}),
					},
				}),
				q(3511, {	-- The Name of the Beast
					["qg"] = 6134,	-- Lord Arkkoroc
					["sourceQuest"] = 3510,	-- The Name of the Beast
					["coord"] = { 77.2, 42.8, AZSHARA },
					["cost"] = {
						{ "i", 10610, 1 },	-- Hetaera's Blood
					},
					["lvl"] = 45,
				}),
				q(8252, {	-- The Siren's Coral
					["qg"] = 8379,	-- Archmage Xylem
					["sourceQuest"] = 8251,	-- Magic Dust
					["coord"] = { 29.6, 40.6, AZSHARA },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 20029, 6 },	-- Enchanted Coral
					},
					["lvl"] = 50,
				}),
				q(8729, {	-- The Wrath of Neptulon
					["qg"] = 11811,	-- Narain Soothfancy
					["races"] = HORDE_ONLY,
					["lvl"] = 60,
					["u"] = 3, -- Added in a later phase
					["g"] = {
						i(21526),	-- Band of Icy Depths
						i(21527),	-- Darkwater Robes
					},
				}),
				q(3565, {	-- Xylem's Payment to Jediga
					["qg"] = 8379, -- Archmage Xylem
					["sourceQuest"] = 3561, -- Delivery to Archmage Xylem
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(9362, {	-- Warlord Krellian
					["qg"] = 8379,		-- Archmage Xylem
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 23250, 1 },	-- Prismatic Shell
					},
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 23250,	-- Prismatic Shell
							["questID"] = 9362,	-- Warlord Krellian
							["cr"] = 8408,	-- Warlord Krellian
							["coord"] = { 41.6, 52.8, AZSHARA },
						},
					},
				}),
				q(8231, {	-- Wavethrashing
					["qg"] = 8405,	-- Ogtinc
					["sourceQuest"] = 8153,	-- Courser Antlers
					["coord"] = { 42.2, 42.6, AZSHARA },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 20087, 2 },	-- Wavethrasher Scales
					},
					["lvl"] = 50,
				}),
			}),
		}),
	}),
};