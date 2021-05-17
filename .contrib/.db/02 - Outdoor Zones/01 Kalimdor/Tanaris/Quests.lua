---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(TANARIS, {
			n(QUESTS, {
				q(2750, {	-- A Bad Egg
					["qg"] = 7763,	-- Curgle Cranklehop
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["coord"] = { 52.2, 26.8, TANARIS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8646, 1 },	-- Bad Egg
					},
					["lvl"] = 42,
				}),
				q(2748, {	-- A Fine Egg
					["qg"] = 7763,	-- Curgle Cranklehop
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["coord"] = { 52.2, 26.8, TANARIS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8644, 1 },	-- Fine Egg
					},
					["lvl"] = 42,
					["g"] = {
						i(9540),	-- Box of Spells
					},
				}),
				q(2747, {	-- An Extraordinary Egg
					["qg"] = 7763,	-- Curgle Cranklehop
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["coord"] = { 52.2, 26.8, TANARIS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8643, 1 },	-- Extraordinary Egg
					},
					["lvl"] = 42,
					["g"] = {
						i(9541),	-- Box of Goodies
					},
				}),
				q(2749, {	-- An Ordinary Egg
					["qg"] = 7763,	-- Curgle Cranklehop
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["coord"] = { 52.2, 26.8, TANARIS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8645, 1 },	-- Ordinary Egg
					},
					["lvl"] = 42,
					["g"] = {
						i(9539),	-- Box of Rations
					},
				}),
				q(841, {	-- Another Power Source?
					["lvl"] = 38,
					["races"] = HORDE_ONLY,
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle
					["repeatable"] = true,
					["g"] = {
						i(8524),	-- Model 4711-FTZ Power Source
					},
				}),
				q(4496, {	-- Bungle in the Jungle
					["lvl"] = 50,
				}),
				{
					["allianceQuestID"] = 4508,	-- Calm Before the Storm (1/2)
					["hordeQuestID"] = 4509,	-- Calm Before the Storm (1/2)
					["sourceQuest"] = 4507,	-- Pawn Captures Queen
					["qg"] = 5594,	-- Alchemist Pestlezugg <Alchemy Supplies>
					["coord"] = { 50.8, 27.0, TANARIS },
					["maps"] = { DARNASSUS, ORGRIMMAR },
					["cost"] = {
						{ "i", 11844, 1 },	-- Pestlezugg's Un'Goro Report
					},
					["lvl"] = 50,
				},
				q(4508, {	-- Calm Before the Storm (1/2) [ALLIANCE]
					["qg"] = 5594,	-- Alchemist Pestlezugg <Alchemy Supplies>
					["sourceQuest"] = 4507,	-- Pawn Captures Queen
					["coord"] = { 50.8, 27.0, TANARIS },
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11844, 1 },	-- Pestlezugg's Un'Goro Report
					},
					["lvl"] = 50,
				}),
				q(4509, {	-- Calm Before the Storm (1/2) [HORDE]
					["qg"] = 5594,	-- Alchemist Pestlezugg <Alchemy Supplies>
					["sourceQuest"] = 4507,	-- Pawn Captures Queen
					["coord"] = { 50.8, 27.0, TANARIS },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11844, 1 },	-- Pestlezugg's Un'Goro Report
					},
					["lvl"] = 50,
				}),
				q(2882, {	-- Cuergo's Gold
					["coord"] = { 55.4, 92.2, TANARIS },
					["provider"] = { "i", 9254 },	-- Cuergo's Treasure Map
					["repeatable"] = true,
					["cost"] = {
						{ "i", 9275, 1 },	-- Cuergo's Key
						{ "i", 9251, 1 },	-- Upper Map Fragment
						{ "i", 9253, 1 },	-- Middle Map Fragment
						{ "i", 9252, 1 },	-- Lower Map Fragment
					},
					["lvl"] = 40,
					["groups"] = {
						i(9265, {	-- Cuergo's Hidden Treasure
							i(9360),	-- Cuergo's Gold
							i(9361),	-- Cuergo's Gold with Worm
							i(9359),	-- Wirt's Third Leg
						}),
					},
				}),
				q(2874, {	-- Deliver to MacKinley
					["lvl"] = 40,
					["sourceQuest"] = 2873,	-- Stoley's Shipment
					["g"] = {
						i(9636),	-- Swashbuckler Sash
						i(9637),	-- Shinkicker Boots
					},
				}),
				q(2661, {	-- Delivery for Marin
					["lvl"] = 44,
				}),
				q(351, {	-- Find OOX-17/TN!
					["lvl"] = 43,
					["provider"] = { "i", 8623 },	-- OOX-17/TN Distress Beacon
				}),
				q(992, {	-- Gadgetzan Water Survey
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["coord"] = { 50.2, 27.5, TANARIS },
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
					["qg"] = 7763,	-- Curgle Cranklehop
					["coord"] = { 52.2, 26.8, TANARIS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9507, 1 },	-- A Carefully-packed Crate
					},
					["lvl"] = 42,
				}),
				q(2606, {	-- In Good Taste
					["lvl"] = 44,
					["qg"] = 7564,	-- Marin Noggenfogger
					["coord"] = { 51.8, 28.6, TANARIS },
				}),
				q(110, {	-- Insect Part Analysis (1/2)
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["sourceQuest"] = 10,	-- The Scrimshank Redemption
					["coord"] = { 50.2, 27.5, TANARIS },
					["lvl"] = 39,
				}),
				q(113, {	-- Insect Part Analysis (2/2)
					["qg"] = 5594,	-- Alchemist Pestlezugg <Alchemy Supplies>
					["sourceQuest"] = 110,	-- Insect Part Analysis (1/2)
					["coord"] = { 50.9, 27.0, TANARIS },
					["cost"] = {
						{ "i", 8594, 1 },	-- Insect Analysis Report
					},
					["lvl"] = 39,
				}),
				q(3914, {	-- Linken's Sword
					["provider"] = { "o", 148504 },	-- A Conspicuous Gravestone
					["sourceQuest"] = 3913,	-- A Grave Situation
					["coord"] = { 53.9, 29.0, TANARIS },
					["cost"] = {
						{ "i", 11162, 1 },	-- Linken's Superior Sword
					},
					["lvl"] = 47,
				}),
				q(1691, {	-- More Wastewander Justice
					["lvl"] = 40,
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle
					["sourceQuest"] = 1690,	-- Wastewander Justice
					["coord"] = { 52.5, 28.5, TANARIS },
				}),
				q(2662, {	-- Noggenfogger Elixir
					["lvl"] = 44,
					["g"] = {
						i(8529),	-- Noggenfogger Elixir
					},
				}),
				q(82, {	-- Noxious Lair Investigation
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["sourceQuest"] = 992,	-- Gadgetzan Water Survey
					["coord"] = { 50.2, 27.5, TANARIS },
					["lvl"] = 39,
				}),
				q(4507, {	-- Pawn Captures Queen
					["qg"] = 5594,	-- Alchemist Pestlezugg <Alchemy Supplies>
					["coord"] = { 50.9, 27.0, TANARIS },
					["maps"] = { UNGORO_CRATER },
					["cost"] = {
						{ "i", 11835, 1 },	-- Gorishi Queen Brain
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] =  11833,	-- Gorishi Queen Lure
							["coord"] = { 44.6, 81.6, UNGORO_CRATER },
							["cr"] = 10041,	-- Gorishi Hive Queen
							["groups"] = {
								{
									["itemID"] = 11835,	-- Gorishi Queen Brain
									["questID"] = 4507,	-- Pawn Captures Queen
								},
							},
						},
					},
				}),
				q(8365, {	-- Pirate Hats Ahoy!
					["qg"] = 15165,	-- Haughty Modiste
					["coord"] = { 66.6, 22.3, TANARIS },
					["cost"] = {
						{ "i", 20519, 20 },	-- Southsea Pirate Hat
					},
					["lvl"] = 40,
				}),
				q(648, {	-- Rescue OOX-17/TN!
					["lvl"] = 43,
					["qg"] = 7784,	-- Homing Robot OOX-17/TN
					["sourceQuest"] = 351,	-- Find OOX-17/TN!
					["g"] = {
						i(9643),	-- Optomatic Deflector
						i(9644),	-- Thermotastic Egg Timer
					},
				}),
				q(864, {	-- Return to Apothecary Zinge
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>
					["sourceQuest"] = 654,	-- Tanaris Field Sampling
					["coord"] = { 52.4, 28.4, TANARIS },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8527, 1 },	-- Sealed Field Testing Kit
					},
					["lvl"] = 38,
					["g"] = {
						i(9634),	-- Skilled Handling Gloves
						i(9635),	-- Master Apothecary Cape
						i(11502),	-- Loreskin Shoulders
					},
				}),
				q(2977, {	-- Return to Ironforge
					["provider"] = { "o", 142343 },	-- Uldum Pedestal
					["sourceQuest"] = 2954,	-- The Stone Watcher
					["coord"] = { 37.7, 81.5, TANARIS },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6064, 1 },	-- Miniature Platinum Discs
					},
					["lvl"] = 45,
				}),
				q(2967, {	-- Return to Thunder Bluff
					["provider"] = { "o", 142343 },	-- Uldum Pedestal
					["sourceQuest"] = 2954,	-- The Stone Watcher
					["coord"] = { 37.7, 81.5, TANARIS },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6064, 1 },	-- Miniature Platinum Discs
					},
					["lvl"] = 45,
				}),
				{
					["allianceQuestID"] = 162,	-- Rise of the Silithid
					["hordeQuestID"] = 32,	-- Rise of the Silithid
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["sourceQuest"] = 113,	-- Insect Part Analysis (2/2)
					["coord"] = { 50.2, 27.5, TANARIS },
					["maps"] = { ORGRIMMAR, DARNASSUS },
					["cost"] = {
						{ "i", 8594, 1 },	-- Insect Analysis Report
					},
					["lvl"] = 39,
				},
				q(3520, {	-- Screecher Spirits
					["lvl"] = 40,
				}),
				q(2876, {	-- Ship Schedules
					["provider"] = { "i", 9250 },	-- Ship Schedule
					["lvl"] = 40,
				}),
				q(379, {	-- Slake That Thirst
					["sourceQuest"] = 243,	-- Into the Field
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8483, 5 },	-- Wastewander Water Pouch
					},
					["lvl"] = 38,
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
					["coord"] = { 67.1, 23.9, TANARIS },
				}),
				q(2641, {	-- Sprinkle's Secret Ingredient
					["qg"] = 7583,	-- Sprinkle
					["coord"] = { 51.1, 26.9, TANARIS },
					["lvl"] = 44,
				}),
				q(2872, {	-- Stoley's Debt
					["qg"] = 2501,	-- \"Sea Wolf\" MacKinley
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(2873, {	-- Stoley's Shipment
					["lvl"] = 40,
					["qg"] = 7881,	-- Stoley
					["sourceQuest"] = 2872,	-- Stoley's Debt
					["coord"] = { 67.1, 24.0, TANARIS },
				}),
				q(4504, {	-- Super Sticky
					["lvl"] = 48,
					["qg"] = 7876,	-- Tran'rek
					["coord"] = { 51.6, 26.8, TANARIS },
				}),
				q(654, {	-- Tanaris Field Sampling
					["provider"] = { "i", 8524 },	-- Model 4711-FTZ Power Source
					["sourceQuests"] = {
						379,	-- Slake That Thirst
						841,	-- Another Power Source?
					},
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8523, 1 },	-- Field Testing Kit
						{ "i", 9440, 8 },	-- Acceptable Basilisk Sample
						{ "i", 9441, 8 },	-- Acceptable Hyena Sample
						{ "i", 9438, 8 },	-- Acceptable Scorpid Sample
					},
					["lvl"] = 38,
					["g"] = {
						i(9437),	-- Untested Basilisk Sample
						i(9439),	-- Untested Hyena Sample
					},
				}),
				q(5863, {	-- The Dunemaul Compound
					["lvl"] = 44,
					["qg"] = 11758,	-- Andi Lynn
					["g"] = {
						i(16738),	-- Witherseed Gloves
						i(16739),	-- Rugwood Mantle
					},
				}),
				q(10, {	-- The Scrimshank Redemption
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["sourceQuest"] = 82,	-- Noxious Lair Investigation
					["coord"] = { 50.2, 27.5, TANARIS },
					["cost"] = {
						{ "i", 8593, 1 },	-- Scrimshank's Surveying Gear
					},
					["lvl"] = 39,
					["groups"] = {
						{
							["itemID"] = 8593,	-- Scrimshank's Surveying Gear
							["questID"] = 10,	-- The Scrimshank Redemption
							["coord"] = { 56, 71, TANARIS },
						},
					},
				}),
				q(2954, {	-- The Stone Watcher
					["provider"] = { "o", 142343 },	-- Uldum Pedestal
					["sourceQuests"] = {
						2946,	-- Seeing What Happens [Ironforge]
						2966,	-- Seeing What Happens [Thunder Bluff]
					},
					["coord"] = { 37.7, 81.5, TANARIS },
					["lvl"] = 45,
				}),
				q(8893, {	-- The Super Egg-O-Matic
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["repeatable"] = true,
					["maps"] = { FERALAS },
					["cost"] = {
						{ "i", 8564, 1 },	-- Hippogryph Egg
					},
					["lvl"] = 42,
					["g"] = {
						i(8647),	-- Egg Crate
					},
				}),
				q(2741, {	-- The Super Egg-O-Matic
					["maps"] = { FERALAS },
					["cost"] = {
						{ "i", 8564, 1 },	-- Hippogryph Egg
					},
					["lvl"] = 42,
					["g"] = {
						i(8647),	-- Egg Crate
					},
				}),
				q(2944, {	-- The Super Snapper FX
					["qg"] = 7763,	-- Curgle Cranklehop
					["sourceQuest"] = 2941,	-- The Borrower
					["coord"] = { 52.2, 26.8, TANARIS },
					["maps"] = { THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						{
							["itemID"] = 9328,	-- Super Snapper FX
							["coord"] = { 79.0, 62.0, THE_HINTERLANDS },
							["groups"] = {
								{
									["itemID"] = 9330,	-- Snapshot of Gammerita
									["questID"] = 2944,	-- The Super Snapper FX
									["cr"] = 7977,	-- Gammerita
								},
							},
						},
					},
				}),
				q(2605, {	-- The Thirsty Goblin
					["lvl"] = 44,
					["qg"] = 7564,	-- Marin Noggenfogger
					["coord"] = { 51.8, 28.6, TANARIS },
				}),
				q(3362, {	-- Thistleshrub Valley
					["lvl"] = 45,
					["qg"] = 7876,	-- Tran'rek
					["coord"] = { 51.6, 26.8, TANARIS },
				}),
				q(1560, {	-- Tooga's Quest
					["lvl"] = 40,
					["qg"] = 5955,	-- Tooga
					["g"] = {
						i(9638),	-- Chelonian Cuffs
						i(9642),	-- Band of the Great Tortoise
					},
				}),
				q(2875, {	-- WANTED: Andre Firebeard
					["lvl"] = 40,
					["providers"] = {
						{ "o", 142122 },	-- Wanted Poster
						{ "o", 150075 },	-- Wanted Poster
					},
				}),
				q(2781, {	-- WANTED: Caliph Scorpidsting
					["lvl"] = 39,
					["provider"] = { "o", 142122 },	-- Wanted Poster
				}),
				q(9268, {	-- War at Sea
					["qg"] = 16417,	-- Rumsen Fizzlebrack
					["coord"] = { 50.4, 26.2, TANARIS },
					["maxReputation"] = { 369, NEUTRAL },	-- Gadgetzan, must be less than Neutral
					["cost"] = {
						{ "i", 4338, 40 },	-- Mageweave Cloth
						{ "i", 3466, 4 },	-- Strong Flux
					},
					["repeatable"] = true,
					["lvl"] = 40,
				}),
				q(1690, {	-- Wastewander Justice
					["lvl"] = 40,
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle
					["coord"] = { 52.5, 28.5, TANARIS },
				}),
				q(1707, {	-- Water Pouch Bounty
					["lvl"] = 40,
					["qg"] = 7408,	-- Spigot Operator Luglunket
					["g"] = {
						i(8484),	-- Gadgetzan Water Co. Care Package
					},
				}),
				q(1878, {	-- Water Pouch Bounty
					["lvl"] = 40,
					["qg"] = 7408,	-- Spigot Operator Luglunket
					["sourceQuest"] = 1707,	-- Water Pouch Bounty
					["repeatable"] = true,
					["g"] = {
						i(8484),	-- Gadgetzan Water Co. Care Package
					},
				}),
			}),
		}),
	}),
};