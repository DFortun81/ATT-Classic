-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E  	--
-----------------------------------------------------
_.Instances = { tier(1, {	-- Classic
	map(GNOMEREGAN, {
		["description"] = "Located in Dun Morogh, the technological wonder known as Gnomeregan has been the gnomes' capital city for generations. Recently, a hostile race of mutant troggs infested several regions of Dun Morogh - including the great gnome city. In a desperate attempt to destroy the invading troggs, High Tinker Mekkatorque ordered the emergency venting of the city's radioactive waste tanks. Several gnomes sought shelter from the airborne pollutants as they waited for the troggs to die or flee. Unfortunately, though the troggs became irradiated from the toxic assault - their siege continued, unabated. Those gnomes who were not killed by noxious seepage were forced to flee, seeking refuge in the nearby dwarven city of Ironforge. There, High Tinker Mekkatorque set out to enlist brave souls to help his people reclaim their beloved city.\n\nIt is rumored that Mekkatorque's once-trusted advisor, Mekgineer Thermaplug, betrayed his people by allowing the invasion to happen. Now, his sanity shattered, Thermaplug remains in Gnomeregan - furthering his dark schemes and acting as the city's new techno-overlord.",
		["lvl"] = 19,
		["groups"] = {
			n(QUESTS, {
				q(2904, {	-- A Fine Mess
					["qg"] = 7850,	-- Kernobee
					["lvl"] = 20,
					["groups"] = {
						i(9536),	-- Fairywing Mantle
						i(9535),	-- Fire-welded Bracers
					},
				}),
				q(2931, {	-- Castpipe's Task
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["isBreadcrumb"] = true,
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["maps"] = { STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(2842, {	-- Chief Engineer Scooty
					["description"] = "You cannot get this quest until you accept the Rig Run quest. Accept Rig Run, then this guy gives you the quest to get to Gnomer safely...",
					["qg"] = 3413,	-- Sovik <Engineering Supplies>
					["coord"] = { 75.6, 25.2, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(2930, {	-- Data Rescue
					["sourceQuest"] = 2931,	-- Castpipe's Task
					["qg"] = 7950,	-- Master Mechanic Castpipe
					["coord"] = { 70.2, 48.4, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9316, 1 },	-- Prismatic Punch Card
					},
					["lvl"] = 25,
					["groups"] = {
						i(9604),	-- Mechanic's Pipehammer
						i(9605),	-- Repairman's Cape
					},
				}),
				q(2924, {	-- Essential Artificials
					["sourceQuest"] = 2925,	-- Klockmort's Essentials
					["qg"] = 6169,	-- Klockmort Spannerspan
					["coord"] = { 68.2, 46.2, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9278, 12 },	-- Essential Artificial
					},
					["lvl"] = 24,
				}),
				q(2926, { 	-- Gnogaine
					["sourceQuest"] = 2927,	-- The Day After
					["qg"] = 1268,	-- Ozzie Togglevolt
					["coord"] = { 45.8, 49.2, DUN_MOROGH },
					["maps"] = { DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9283, 1 },	-- Empty Leaden Collection Phial
						{ "i", 9284, 1 },	-- Full Leaden Collection Phial
					},
					["lvl"] = 20,
				}),
				q(2948, {	-- Gnome Improvement
					["sourceQuest"] = 2947,	-- Return of the Ring
					["qg"] = 6826, 	-- Talvash del Kissel
					["coord"] = { 36.2, 3.8, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9362, 1 },	-- Brilliant Gold Ring
						{ "i", 2842, 1 },	-- Silver Bar
						{ "i", 1206, 1 },	-- Moss Agate
						{ "g", 3000 },	-- 30s
					},
					["lvl"]	= 28,
					["groups"] = {
						i(9538),	-- Talvash's Gold Ring
					},
				}),
				q(2843, {	-- Gnomer-gooooone!
					["sourceQuest"] = 2842,	-- Chief Engineer Scooty
					["qg"] = 7853,	-- Scooty <Chief Engineer>
					["coord"] = { 27.6, 77.4, STRANGLETHORN_VALE },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(2945, {	-- Grime-Encrusted Ring
					["provider"] = { "i", 9326 },	-- Grime-Encrusted Ring
					["cr"] = 6212,	-- Dark Iron Agent
					["groups"] = {
						i(9362),	-- Brilliant Gold Ring
					},
				}),
				q(2928, { 	-- Gyrodrillmatic Excavationators
					["qg"] = 6579,	-- Shoni the Shilent
					["coord"] = { 55.6, 12.8, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9309, 24 },	-- Robo-mechanical Guts
					},
					["lvl"] = 20,
					["groups"] = {
						i(9608),	-- Shoni's Disarming Tool
						i(9609),	-- Shilly Mitts
					},
				}),
				q(2925, {	-- Klockmort's Essentials
					["qg"] = 6142,	-- Mathiel
					["coord"] = { 59.2, 45.2, DARNASSUS },
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 24,
				}),
				q(2950, {	-- Nogg's Ring Redo
					["sourceQuest"] = 2949,	-- Return of the Ring
					["qg"] = 3412, 	-- Nogg <Expert Engineer>
					["coord"] = { 75.8, 25.2, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"]	= 28,
					["cost"] = {
						{ "i", 9362, 1 },	-- Brilliant Gold Ring
						{ "i", 2842, 1 },	-- Silver Bar
						{ "i", 1206, 1 },	-- Moss Agate
						{ "g", 3000 },	-- 30s
					},
					["groups"] = {
						i(9588),	-- Nogg's Gold Ring
					},
				}),
				q(2947, {	-- Return of the Ring
					["hordeQuestID"] = 2949,
					["sourceQuest"] = 2945,	-- Grime-Encrusted Ring
					["lvl"]	= 28,
				}),
				q(2841, {	-- Rig Wars
					["qg"] = 3412, 	-- Nogg <Expert Engineer>
					["coord"] = { 75.8, 25.2, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9153, 1 },	-- Rig Blueprints
						{ "i", 9299, 1 },	-- Thermaplugg's Safe Combination
					},
					["lvl"]	= 25,
					["groups"] = {
						i(9623),	-- Civinad Robes
						i(9625),	-- Dual Reinforced Leggings
						i(9624),	-- Triprunner Dungarees
					},
				}),
				q(2922, {	-- Save Techbot's Brain!
					["qg"] = 7944,	-- Tinkmaster Overspark <Master Gnome Engineer>
					["sourceQuest"] = 2923,	-- Tinkmaster Overspark
					["coord"] = { 70.4, 49.4, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9277, 1 },	-- Techbot's Memory Core
					},
					["lvl"] = 20,
				}),
				q(2927, {	-- The Day After
					["qg"] = 6569,	-- Gnoarn
					["coord"] = { 69.6, 50.6, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(2929, {	-- The Grand Betrayal
					["qg"] = 7937,	-- High Tinker Mekkatorque <King of Gnomes>
					["coord"] = { 69.2, 49.2, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						i(9623),	-- Civinad Robes
						i(9624),	-- Triprunner Dungarees
						i(9625),	-- Dual Reinforced Leggings
					},
				}),
				q(2962, { 	-- The Only Cure is More Green Glow
					["sourceQuest"] = 2926,	-- Gnogaine
					["qg"] = 1268,	-- Ozzie Togglevolt
					["coord"] = { 45.8, 49.2, DUN_MOROGH },
					["maps"] = { DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9364, 1 },	-- Heavy Leaden Collection Phial
						{ "i", 9365, 1 },	-- High Potency Radioactive Fallout
					},
					["lvl"] = 20,
				}),
				o(142487, {	-- The Sparklematic 5200
					["description"] = "Bring any Grime-Encrusted items that you find here to be cleaned.\n\nGrime-Encrusted Objects become Sparklematic-Wrapped Boxes.",
					["model"] = "World\\Goober\\G_Gnomesparklematic.m2",
					["groups"] = {
						i(9363, {	-- Sparklematic-Wrapped Box
							["description"] = "Kill mobs for [Grime-Encrusted Object], clean them at the Sparklematic 5200.",
							["groups"] = {
								i(10299),	-- Gnomeregan Amulet
								i(10298),	-- Gnomeregan Band
							},
						}),
						i(9308, {	-- Grime-Encrusted Object
							{
								["questID"] = 2951,	-- The Sparklematic 5200!
								["groups"] = {
									i(9363),	-- Sparklematic-Wrapped Box
								},
							},
							{
								["questID"] = 2952,	-- The Sparklematic 5200!
								["sourceQuest"] = 2951,	-- The Sparklematic 5200!
								["groups"] = {
									i(9363),	-- Sparklematic-Wrapped Box
								},
							},
							{
								["questID"] = 2953,	-- More Sparklematic Action
								["sourceQuest"] = 2952,	-- The Sparklematic 5200!
								["repeatable"] = true,
								["groups"] = {
									i(9363),	-- Sparklematic-Wrapped Box
								},
							},
						}),
					},
				}),
				o(15084, {	-- The Sparklematic 5200
					["description"] = "Bring any Grime-Encrusted items that you find here to be cleaned.\n\nGrime-Encrusted Objects become Sparklematic-Wrapped Boxes.",
					["model"] = "World\\Goober\\G_Gnomesparklematic.m2",
					["groups"] = {
						i(9363, {	-- Sparklematic-Wrapped Box
							["description"] = "Kill mobs for [Grime-Encrusted Object], clean them at the Sparklematic 5200.",
							["groups"] = {
								i(10299),	-- Gnomeregan Amulet
								i(10298),	-- Gnomeregan Band
							},
						}),
						i(9308, {	-- Grime-Encrusted Object
							{
								["questID"] = 4601,	-- The Sparklematic 5200!
							},
							{
								["questID"] = 4605,	-- The Sparklematic 5200!
								["sourceQuest"] = 4601,	-- The Sparklematic 5200!
								["groups"] = {
									i(9363),	-- Sparklematic-Wrapped Box
								},
							},
							{
								["questID"] = 4603,	-- More Sparklematic Action
								["sourceQuest"] = 4605,	-- The Sparklematic 5200!
								["repeatable"] = true,
								["groups"] = {
									i(9363),	-- Sparklematic-Wrapped Box
								},
							},
						}),
					},
				}),
				o(15085, {	-- The Sparklematic 5200
					["description"] = "Bring any Grime-Encrusted items that you find here to be cleaned.\n\nGrime-Encrusted Objects become Sparklematic-Wrapped Boxes.",
					["model"] = "World\\Goober\\G_Gnomesparklematic.m2",
					["groups"] = {
						i(9363, {	-- Sparklematic-Wrapped Box
							["description"] = "Kill mobs for [Grime-Encrusted Object], clean them at the Sparklematic 5200.",
							["groups"] = {
								i(10299),	-- Gnomeregan Amulet
								i(10298),	-- Gnomeregan Band
							},
						}),
						i(9308, {	-- Grime-Encrusted Object
							{
								["questID"] = 4602,	-- The Sparklematic 5200!
							},
							{
								["questID"] = 4606,	-- The Sparklematic 5200!
								["sourceQuest"] = 4602,	-- The Sparklematic 5200!
								["groups"] = {
									i(9363),	-- Sparklematic-Wrapped Box
								},
							},
							{
								["questID"] = 4604,	-- More Sparklematic Action
								["sourceQuest"] = 4606,	-- The Sparklematic 5200!
								["repeatable"] = true,
								["groups"] = {
									i(9363),	-- Sparklematic-Wrapped Box
								},
							},
						}),
					},
				}),
				q(2923, {	-- Tinkmaster Overspark
					["qg"] = 7917,	-- Brother Sarno
					["coord"] = { 40.6, 30.0, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
			}),
			n(ZONEDROPS, {
				i(9282, {	-- Blue Punch Card
					["description"] = "Use this at the terminal closest to the dormitories.",
					["groups"] = {
						i(9281),	-- Red Punch Card
					},
				}),
				i(9278, {	-- Essential Artificial
					["questID"] = 2924,	-- Essential Artificials
					["description"] = "These are scattered throughout the instance. They are loud mechanical mailboxes.",
					["races"] = ALLIANCE_ONLY,
				}),
				i(9309, {	-- Robo-mechanical Guts
					["description"] = "These can drop from any mechanical unit in Gnomeregan.",
					["questID"] = 2928,	-- Gyrodrillmatic Excavationators
					["races"] = ALLIANCE_ONLY,
				}),
				i(9281, {	-- Red Punch Card
					["description"] = "Use this at the terminal in the room with the Crowd Pummeller. You can also learn a schematic if you are an Engineer AND you have the Security DELTA Data Access Card.",
					["groups"] = {
						{
							["itemID"] = 9327,	-- Security DELTA Data Access Card
							["requireSkill"] = ENGINEERING,
							["groups"] = {
								i(4413),  	-- Schematic: Discombobulator Ray
							},
						},
						{
							["itemID"] = 9316,	-- Prismatic Punch Card
							["questID"] = 2930,	-- Data Rescue
							["races"] = ALLIANCE_ONLY,
						},
					},
				}),
				i(9280, {	-- Yellow Punch Card
					["description"] = "Use this at the terminal closest to the dormitories. You can also learn a schematic if you are an Engineer.",
					["groups"] = {
						i(9282),	-- Blue Punch Card
						i(14639),  	-- Schematic: Minor Recombobulator
					},
				}),
				i(9279, {	-- White Punch Card
					["description"] = "Use this at the terminal outside of the instance to upgrade to a Yellow Punch Card.",
					["groups"] = {
						i(9280),	-- Yellow Punch Card
					},
				}),
				i(9277, {	-- Techbot's Memory Core
					["questID"] = 2922,	-- Save Techbot's Brain!
					["races"] = ALLIANCE_ONLY,
					["cr"] = 6231,	-- Techbot
				}),
				i(9308),	-- Grime-Encrusted Object
				i(9510, {	-- Caverndeep Trudgers
					["crs"] = {
						6228,	-- Dark Iron Ambassador
						6235,	-- Electrocutioner 6000
						7800,	-- Mekgineer Thermaplugg
						7079,	-- Viscous Fallout
					},
				}),
				i(9490, {	-- Gizmotron Megachopper
					["crs"] = {
						6232,	-- Arcane Nullifier X-21
						6207,	-- Caverndeep Ambusher
						6206,	-- Caverndeep Burrower
						6212,	-- Dark Iron Agent
						6220,	-- Irradiated Horror
						6329,	-- Irradiated Pillager
						7603,	-- Leprous Assistant
						6223,	-- Leprous Defender
						6222,	-- Leprous Technician
						6234,	-- Mechanized Guardian
						6233,	-- Mechanized Sentry
						6226,	-- Mechano-Flamewalker
						6227,	-- Mechano-Frostwalker
						6225,	-- Mechano-Tank
						6230,	-- Peacekeeper Security Suit
					},
				}),
				i(9489, {	-- Gyromatic Icemaker
					["crs"] = {
						6232,	-- Arcane Nullifier X-21
						6212,	-- Dark Iron Agent
						6220,	-- Irradiated Horror
						7603,	-- Leprous Assistant
						6234,	-- Mechanized Guardian
						6233,	-- Mechanized Sentry
						6227,	-- Mechano-Frostwalker
						6230,	-- Peacekeeper Security Suit
					},
				}),
				i(9487, {	-- Hi-Tech Supergun
					["crs"] = {
						6232,	-- Arcane Nullifier X-21
						6207,	-- Caverndeep Ambusher
						6206,	-- Caverndeep Burrower
						6211,	-- Caverndeep Reaver
						6212,	-- Dark Iron Agent
						6391,	-- Holdout Warrior
						6220,	-- Irradiated Horror
						6329,	-- Irradiated Pillager
						7603,	-- Leprous Assistant
						6223,	-- Leprous Defender
						6234,	-- Mechanized Guardian
						6233,	-- Mechanized Sentry
						6230,	-- Peacekeeper Security Suit
					},
				}),
				i(9491),	-- Hotshot Pilot's Gloves
				i(9508, {	-- Mechbuilder's Overalls
					["crs"] = {
						6232,	-- Arcane Nullifier X-21
						6212,	-- Dark Iron Agent
						6223,	-- Leprous Defender
						6234,	-- Mechanized Guardian
						6233,	-- Mechanized Sentry
						6230,	-- Peacekeeper Security Suit
					},
				}),
				i(9488, {	-- Oscillating Power Hammer
					["crs"] = {
						6232,	-- Arcane Nullifier X-21
						6207,	-- Caverndeep Ambusher
						6206,	-- Caverndeep Burrower
						6211,	-- Caverndeep Reaver
						6212,	-- Dark Iron Agent
						6329,	-- Irradiated Pillager
						7603,	-- Leprous Assistant
						6223,	-- Leprous Defender
						6234,	-- Mechanized Guardian
						6233,	-- Mechanized Sentry
						6226,	-- Mechano-Flamewalker
						6227,	-- Mechano-Frostwalker
						6225,	-- Mechano-Tank
						6230,	-- Peacekeeper Security Suit
					},
				}),
				i(7360, {	-- Pattern: Dark Leather Gloves
					["crs"] = {
						7603,	-- Leprous Assistant
						6230,	-- Peacekeeper Security Suit
					},
				}),
				i(9509, {	-- Petrolspill Leggings
					["crs"] = {
						6232,	-- Arcane Nullifier X-21
						6207,	-- Caverndeep Ambusher
						6206,	-- Caverndeep Burrower
						6212,	-- Dark Iron Agent
						6391,	-- Holdout Warrior
						6220,	-- Irradiated Horror
						6329,	-- Irradiated Pillager
						6218,	-- Irradiated Slime
						7603,	-- Leprous Assistant
						6223,	-- Leprous Defender
						6234,	-- Mechanized Guardian
						6233,	-- Mechanized Sentry
						6227,	-- Mechano-Frostwalker
						6230,	-- Peacekeeper Security Suit
					},
				}),
				i(9486, {	-- Supercharger Battle Axe
					["crs"] = {
						6232,	-- Arcane Nullifier X-21
						6207,	-- Caverndeep Ambusher
						6206,	-- Caverndeep Burrower
						6211,	-- Caverndeep Reaver
						6212,	-- Dark Iron Agent
						6392,	-- Holdout Medic
						6220,	-- Irradiated Horror
						6329,	-- Irradiated Pillager
						6223,	-- Leprous Defender
						6224,	-- Leprous Machinesmith
						6234,	-- Mechanized Guardian
						6233,	-- Mechanized Sentry
						6227,	-- Mechano-Frostwalker
						6225,	-- Mechano-Tank
						6230,	-- Peacekeeper Security Suit
					},
				}),
				i(9485, {	-- Vibroblade
					["crs"] = {
						6232,	-- Arcane Nullifier X-21
						6207,	-- Caverndeep Ambusher
						6206,	-- Caverndeep Burrower
						6212,	-- Dark Iron Agent
						6220,	-- Irradiated Horror
						6329,	-- Irradiated Pillager
						7603,	-- Leprous Assistant
						6223,	-- Leprous Defender
						6234,	-- Mechanized Guardian
						6233,	-- Mechanized Sentry
						6226,	-- Mechano-Flamewalker
						6227,	-- Mechano-Frostwalker
						6230,	-- Peacekeeper Security Suit
					},
				}),
			}),
			n(7361, {	-- Grubbis
				i(9445),	-- Grubbis Paws
			}),
			n(7079, {	-- Viscous Fallout
				i(9452),	-- Hydrocane
				i(9453),	-- Toxic Revenger
				i(9454),	-- Acidic Walkers
			}),
			n(6235, {	-- Electrocutioner 6000
				{
					["itemID"] = 6893,	-- Workshop Key
					["description"] = "This key allows you to get into the back door of Gnomeregan.",
				},
				i(9446),	-- Electrocutioner Leg
				i(9448),	-- Spidertank Oilrag
				i(9447),	-- Electrocutioner Lagnut
			}),
			n(6229, {	-- Crowd Pummeler 9-60
				i(9449),	-- Manual Crowd Pummeler
				i(9450),	-- Gnomebot Operating Boots
			}),
			n(6228, {	-- Dark Iron Ambassador
				["description"] = "This is a rare that is not always present.",
				["groups"] = {
					i(9456),	-- Glass Shooter
					i(9457),	-- Royal Diplomatic Scepter
					i(9455),	-- Emissary Cuffs
				},
			}),
			n(7800, {	-- Mekgineer Thermaplugg
				{
					["itemID"] = 9153,	-- Rig Blueprints
					["questID"] = 2841,	-- Rig Wars
					["description"] = "In a small chest behind the 3rd pillar from the right after defeating Thermaplugg.",
					["races"] = HORDE_ONLY,
				},
				{
					["itemID"] = 9299,	-- Thermaplugg's Safe Combination
					["questID"] = 2841,	-- Rig Wars
					["races"] = HORDE_ONLY,
				},
				i(9459),	-- Thermaplugg's Left Arm
				i(9458),	-- Thermaplugg's Central Core
				i(9492),	-- Electromagnetic Gigaflux Reactivator
				i(9461),	-- Charged Gear
				i(4415), 	-- Schematic: Craftsman's Monocle
				i(4413),	-- Schematic: Discombobulator Ray
				i(6716),	-- Schematic: EZ-Thro Dynamite
				i(4411), 	-- Schematic: Flame Deflector
				i(6672),  	-- Schematic: Flash Bomb
				i(7742),	-- Schematic: Gnomish Cloaking Device
				i(7560),	-- Schematic: Gnomish Universal Remote
				i(7561),	-- Schematic: Goblin Jumper Cables
				i(4416),	-- Schematic: Goblin Land Mine
				i(4417),	-- Schematic: Large Seaforium Charge
				i(4408),	-- Schematic: Mechanical Squirrel Box
				i(4412),	-- Schematic: Moonsight Rifle
				i(4414),	-- Schematic: Portable Bronze Mortar
				i(4410),	-- Schematic: Shadow Goggles
				i(4409),	-- Schematic: Small Seaforium Charge
			}),
		},
	}),
})};