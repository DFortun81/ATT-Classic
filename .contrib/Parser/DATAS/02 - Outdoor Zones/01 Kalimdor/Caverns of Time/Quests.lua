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
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2501,	-- \"Sea Wolf\" MacKinley
					["isBreadcrumb"] = true,
				}),
				q(8766, {	-- The Changing of Paths - Conqueror No More
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["repeatable"] = true,
					["g"] = {
						i(21200),	-- Signet Ring of the Bronze Dragonflight
						i(21210),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8765, {	-- The Changing of Paths - Invoker No More
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["repeatable"] = true,
					["g"] = {
						i(21200),	-- Signet Ring of the Bronze Dragonflight
						i(21205),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8764, {	-- The Changing of Paths - Protector No More
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["repeatable"] = true,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21210),	-- Signet Ring of the Bronze Dragonflight
						i(21205),	-- Signet Ring of the Bronze Dragonflight
					},
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
				q(8761, {	-- The Grand Invoker
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21210),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8585, {	-- The Isle of Dread!
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["races"] = ALLIANCE_ONLY,
				}),
				q(8742, {	-- The Might of Kalimdor
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
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
				q(8753, {	-- The Path of the Conqueror
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21202),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8754, {	-- The Path of the Conqueror
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21203),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8755, {	-- The Path of the Conqueror
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21204),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8752, {	-- The Path of the Conqueror
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21201),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8759, {	-- The Path of the Invoker
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21208),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8760, {	-- The Path of the Invoker
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21209),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8758, {	-- The Path of the Invoker
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21207),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8757, {	-- The Path of the Invoker
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21206),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8749, {	-- The Path of the Protector
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21198),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8748, {	-- The Path of the Protector
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21197),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8750, {	-- The Path of the Protector
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21199),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8747, {	-- The Path of the Protector
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21196),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8751, {	-- The Protector of Kalimdor
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21200),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8756, {	-- The Qiraji Conqueror
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21205),	-- Signet Ring of the Bronze Dragonflight
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