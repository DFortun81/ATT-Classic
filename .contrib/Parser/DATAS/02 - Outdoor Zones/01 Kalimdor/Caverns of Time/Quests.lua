---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(CAVERNS_OF_TIME, {
			n(QUESTS, {
				q(8606, {	-- Decoy!
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
				}),
				q(8597, {	-- Draconic for Dummies
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["races"] = ALLIANCE_ONLY,
				}),
				q(8599, {	-- Love Song for Narain
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
				}),
				q(8730, {	-- Nefarius's Corruption
					["sourceQuest"] = 8555,	-- The Charge of the Dragonflights
					["cost"] = {
						{ "i", 21138, 1 },	-- Red Scepter Shard
					},
					["u"] = 3,	-- Added in later phase
					["groups"] = {
						i(21529),	-- Amulet of Shadow Shielding
						i(21530),	-- Onyx Embedded Leggings
					},
				}),
				q(8584, {	-- Never Ask Me About My Business
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11811,	-- Narain Soothfancy
				}),
				q(8598, {	-- rAnS0m
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 180652 },	-- Freshly Dug Dirt
					["lvl"] = 60,
					["u"] = 3,	-- Added in later phase
				}),
				q(8587, {	-- Return to Narain
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 8125,	-- Dirge Quikcleave
					["coord"] = { 52.63, 28.12, TANARIS },
				}),
				q(8577, {	-- Stewvul, Ex-B.F.F.
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11811,	-- Narain Soothfancy
				}),
				q(2872, {	-- Stoley's Debt
					["lvl"] = 40,
					["qg"] = 2501,	-- \"Sea Wolf\" MacKinley
					["isBreadcrumb"] = true,
				}),
				
				q(8555, {	-- The Charge of the Dragonflights
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
				}),
				q(8728, {	-- The Good News and The Bad News
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["races"] = HORDE_ONLY,
				}),
				q(8585, {	-- The Isle of Dread!
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["races"] = ALLIANCE_ONLY,
				}),
				q(8742, {	-- The Might of Kalimdor
					["qg"] = 15192,	-- Anachronos
					["sourceQuests"] = {
						8729,	-- The Wrath of Neptulon
						8730,	-- Nefarius's Corruption
						8741,	-- The Champion Returns
					},
					["lvl"] = 60,
					["u"] = 3,	-- Added in later phase
					["g"] = {
						i(21175),	-- The Scepter of the Shifting Sands
					},
				}),
				q(8620, {	-- The Only Prescription
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["g"] = {
						i(21517),	-- Gnomish Turban of Psychic Might
					},
				}),
				q(8576, {	-- Translating the Ledger
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11811,	-- Narain Soothfancy
				}),
			}),
		}),
	}),
};