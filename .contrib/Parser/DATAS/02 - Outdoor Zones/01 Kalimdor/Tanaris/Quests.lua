---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(TANARIS, {	-- Tanaris
			n(-17, {	-- Quests
				q(2750, {	-- A Bad Egg
					["lvl"] = 42,
				}),
				q(2748, {	-- A Fine Egg
					["lvl"] = 42,
					["g"] = {
						i(9540),	-- Box of Spells
					},
				}),
				q(8925, {	-- A Portable Power Source
					["u"] = 3,	-- Added in later phase
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
				}),
				q(8928, {	-- A Shifty Merchant
					["u"] = 3,	-- Added in later phase
					["lvl"] = 58,
				}),
				q(8923, {	-- A Supernatural Device
					["u"] = 3,	-- Added in later phase
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
				}),
				q(8922, {	-- A Supernatural Device
					["u"] = 3,	-- Added in later phase
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
				}),
				q(2747, {	-- An Extraordinary Egg
					["lvl"] = 42,
					["g"] = {
						i(9541),	-- Box of Goodies
					},
				}),
				q(2749, {	-- An Ordinary Egg
					["lvl"] = 42,
					["g"] = {
						i(9539),	-- Box of Rations
					},
				}),
				q(841, {	-- Another Power Source?
					["lvl"] = 38,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(8524),	-- Model 4711-FTZ Power Source
					},
				}),
				q(4496, {	-- Bungle in the Jungle
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
				}),
				q(4509, {	-- Calm Before the Storm
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
				}),
				q(4508, {	-- Calm Before the Storm
					["lvl"] = 50,
				}),
				q(8181, {	-- Confront Yeh'kinya
					["u"] = 3,	-- Added in later phase
					["lvl"] = 40,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(20218),	-- Faded Hakkari Cloak
						i(20219),	-- Tattered Hakkari Cape
					},
				}),
				q(8606, {	-- Decoy!
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
				}),
				q(2874, {	-- Deliver to MacKinley
					["lvl"] = 40,
					["g"] = {
						i(9636),	-- Swashbuckler Sash
						i(9637),	-- Shinkicker Boots
					},
				}),
				q(2661, {	-- Delivery for Marin
					["lvl"] = 44,
				}),
				q(8586, {	-- Dirge's Kickin' Chimaerok Chops
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["g"] = {
						i(21025),	-- Recipe: Dirge's Kickin' Chimaerok Chops
						i(21023),	-- Dirge's Kickin' Chimaerok Chops
					},
				}),
				q(8597, {	-- Draconic for Dummies
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["races"] = ALLIANCE_ONLY,
				}),
				q(351, {	-- Find OOX-17/TN!
					["lvl"] = 43,
				}),
				q(5801, {	-- Fire Plume Forged (A)
					["lvl"] = 55,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5411,	-- Krinkle Goodsteel
					["sourceQuest"] = 5538,	-- Mold Rhymes With...
				}),
				q(5802, {	-- Fire Plume Forged (H)
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
					["qg"] = 5411,	-- Krinkle Goodsteel
					["sourceQuest"] = 5514,	-- Mold Rhymes With...
				}),
				q(992, {	-- Gadgetzan Water Survey
					["lvl"] = 38,
				}),
				q(3161, {	-- Gahz'ridian
					["lvl"] = 43,
					["g"] = {
						i(10827),	-- Surveyor's Tunic
						i(10826),	-- Staff of Lore
					},
				}),
				q(3022, {	-- Handle With Care
					["lvl"] = 42,
					["races"] = ALLIANCE_ONLY,
				}),
				q(8924, {	-- Hunting for Ectoplasm
					["u"] = 3,	-- Added in later phase
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16014,	-- Mux Manascrambler
				}),
				q(2606, {	-- In Good Taste
					["lvl"] = 44,
					["qg"] = 7564,	-- Marin Noggenfogger
				}),
				q(110, {	-- Insect Part Analysis
					["lvl"] = 39,
					["races"] = HORDE_ONLY,
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
				}),
				q(113, {	-- Insect Part Analysis
					["lvl"] = 39,
					["races"] = HORDE_ONLY,
				}),
				q(243, {	-- Into the Field
					["lvl"] = 38,
					["races"] = HORDE_ONLY,
				}),
				q(3914, {	-- Linken's Sword
					["lvl"] = 47,
				}),
				q(8599, {	-- Love Song for Narain
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
				}),
				q(1691, {	-- More Wastewander Justice
					["lvl"] = 40,
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle
				}),
				q(8584, {	-- Never Ask Me About My Business
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11811,	-- Narain Soothfancy
				}),
				q(2662, {	-- Noggenfogger Elixir
					["lvl"] = 44,
					["g"] = {
						i(8529),	-- Noggenfogger Elixir
					},
				}),
				q(82, {	-- Noxious Lair Investigation
					["lvl"] = 39,
				}),
				q(4507, {	-- Pawn Captures Queen
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
					["qg"] = 5594,	-- Alchemist Pestlezugg
				}),
				q(8365, {	-- Pirate Hats Ahoy!
					["lvl"] = 40,
					["qg"] = 15165,	-- Haughty Modiste
				}),
				q(8598, {	-- rAnS0m
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 180652,	-- Freshly Dug Dirt
				}),
				q(8587, {	-- Return to Narain
					["u"] = 3,	-- Added in later phase
					["lvl"] = 60,
					["qg"] = 8125,	-- Dirge Quikcleave
				}),
				q(32, {	-- Rise of the Silithid
					["lvl"] = 39,
					["races"] = HORDE_ONLY,
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
				}),
				q(162, {	-- Rise of the Silithid
					["lvl"] = 39,
					["races"] = ALLIANCE_ONLY,
				}),
				q(3520, {	-- Screecher Spirits
					["lvl"] = 40,
				}),
				q(2876, {	-- Ship Schedules
					["lvl"] = 40,
				}),
				q(379, {	-- Slake That Thirst
					["lvl"] = 38,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(8524),	-- Model 4711-FTZ Power Source
					},
				}),
				q(8366, {	-- Southsea Shakedown
					["lvl"] = 40,
					["qg"] = 7882,	-- Security Chief Bilgewhizzle
					["g"] = {
						i(20640),	-- Southsea Head Bucket
						i(20641),	-- Southsea Mojo Boots
					},
				}),
				q(2641, {	-- Sprinkle's Secret Ingredient
					["lvl"] = 44,
					["races"] = HORDE_ONLY,
					["qg"] = 7583,	-- Sprinkle
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
				}),
				q(2873, {	-- Stoley's Shipment
					["lvl"] = 40,
					["qg"] = 7881,	-- Stoley
				}),
				q(4504, {	-- Super Sticky
					["lvl"] = 48,
					["qg"] = 7876,	-- Tran'rek
				}),
				q(654, {	-- Tanaris Field Sampling
					["lvl"] = 38,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(9437),	-- Untested Basilisk Sample
						i(9439),	-- Untested Hyena Sample
					},
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
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
				}),
				q(5863, {	-- The Dunemaul Compound
					["lvl"] = 44,
					["qg"] = 11758,	-- Andi Lynn
					["g"] = {
						i(16738),	-- Witherseed Gloves
						i(16739),	-- Rugwood Mantle
					},
				}),
				q(8921, {	-- The Ectoplasmic Distiller
					["lvl"] = 58,
					["g"] = {
						i(22320),	-- Mux's Quality Goods
					},
				}),
				q(8728, {	-- The Good News and The Bad News
					["lvl"] = 60,
					["races"] = HORDE_ONLY,
				}),
				q(8761, {	-- The Grand Invoker
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21210),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8182, {	-- The Hand of Rastakhan
					["lvl"] = 40,
					["races"] = HORDE_ONLY,
					["qg"] = 10460,	-- Prospector Ironboot
				}),
				q(8585, {	-- The Isle of Dread!
					["lvl"] = 60,
					["races"] = ALLIANCE_ONLY,
				}),
				q(5065, {	-- The Lost Tablets of Mosh'aru
					["lvl"] = 40,
					["qg"] = 10460,	-- Prospector Ironboot
				}),
				q(8742, {	-- The Might of Kalimdor
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21175),	-- The Scepter of the Shifting Sands
					},
				}),
				q(8620, {	-- The Only Prescription
					["lvl"] = 60,
					["g"] = {
						i(21517),	-- Gnomish Turban of Psychic Might
					},
				}),
				q(8753, {	-- The Path of the Conqueror
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21202),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8754, {	-- The Path of the Conqueror
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21203),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8755, {	-- The Path of the Conqueror
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21204),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8752, {	-- The Path of the Conqueror
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21201),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8759, {	-- The Path of the Invoker
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21208),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8760, {	-- The Path of the Invoker
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21209),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8758, {	-- The Path of the Invoker
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21207),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8757, {	-- The Path of the Invoker
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21206),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8749, {	-- The Path of the Protector
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21198),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8748, {	-- The Path of the Protector
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21197),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8750, {	-- The Path of the Protector
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21199),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8747, {	-- The Path of the Protector
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21196),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8751, {	-- The Protector of Kalimdor
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21200),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(8756, {	-- The Qiraji Conqueror
					["lvl"] = 60,
					["qg"] = 15192,	-- Anachronos
					["g"] = {
						i(21205),	-- Signet Ring of the Bronze Dragonflight
					},
				}),
				q(10, {	-- The Scrimshank Redemption
					["lvl"] = 39,
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
				}),
				q(2954, {	-- The Stone Watcher
					["lvl"] = 45,
					["races"] = HORDE_ONLY,
					--["objectID"] = 142343,	-- Uldum Pedestal
				}),
				q(8893, {	-- The Super Egg-O-Matic
					["lvl"] = 42,
					["g"] = {
						i(8647),	-- Egg Crate
					},
				}),
				q(2741, {	-- The Super Egg-O-Matic
					["lvl"] = 42,
					["g"] = {
						i(8647),	-- Egg Crate
					},
				}),
				q(2944, {	-- The Super Snapper FX
					["lvl"] = 42,
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 79.0, 62.0, THE_HINTERLANDS },
					["maps"] = { THE_HINTERLANDS },
				}),
				q(2605, {	-- The Thirsty Goblin
					["lvl"] = 44,
					["qg"] = 7564,	-- Marin Noggenfogger
					["g"] = {
						i(8429),	-- Punctured Dew Gland
					},
				}),
				q(3362, {	-- Thistleshrub Valley
					["lvl"] = 45,
					["qg"] = 7876,	-- Tran'rek
				}),
				q(1560, {	-- Tooga's Quest
					["lvl"] = 40,
					["qg"] = 5955,	-- Tooga
					["g"] = {
						i(9638),	-- Chelonian Cuffs
						i(9642),	-- Band of the Great Tortoise
					},
				}),
				q(8576, {	-- Translating the Ledger
					["lvl"] = 60,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11811,	-- Narain Soothfancy
				}),
				q(2875, {	-- WANTED: Andre Firebeard
					["lvl"] = 40,
					["qgs"] = {
					--["objectID"] = 142122,	-- Wanted Poster
					--["objectID"] = 150075,	-- Wanted Poster
					},
				}),
				q(2781, {	-- WANTED: Caliph Scorpidsting
					["lvl"] = 39,
					--["objectID"] = 142122,	-- Wanted Poster
				}),
				q(9268, {	-- War at Sea
					["lvl"] = 40,
					["qg"] = 16417,	-- Rumsen Fizzlebrack
				}),
				q(1690, {	-- Wastewander Justice
					["lvl"] = 40,
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle
				}),
				q(1878, {	-- Water Pouch Bounty
					["lvl"] = 40,
					["qg"] = 7408,	-- Spigot Operator Luglunket
					["g"] = {
						i(8484),	-- Gadgetzan Water Co. Care Package
					},
				}),
				q(1707, {	-- Water Pouch Bounty
					["lvl"] = 40,
					["qg"] = 7408,	-- Spigot Operator Luglunket
					["g"] = {
						i(8484),	-- Gadgetzan Water Co. Care Package
					},
				}),
			}),
		}),
	}),
};