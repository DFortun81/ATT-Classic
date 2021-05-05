---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(WINTERSPRING, {
			n(ZONEDROPS, {
				i(12524, {	-- Blue-feathered Amulet
					["questID"] = 4864,	-- Enraged Wildkin (4/4)
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						7454,	-- Berserk Owlbeast
						7452,	-- Crazed Owlbeast
						7453,	-- Moontouched Owlbeast
					},
				}),
				i(12623, {	-- Chillwind Meat
					["crs"] = {
						7448,	-- Chillwind Chimaera
						7449,	-- Chillwind Ravager
						7447,	-- Fledgling Chillwind
					},
				}),
				i(16223, {	-- Formula: Enchant Weapon - Icy Chill
					["cr"] = 7524,	-- Anguished Highborne
				}),
				un(PHASE_FIVE, i(21936, {	-- Frozen Ectoplasm
					["questID"] = 8924,	-- Hunting for Ectoplasm
					["crs"] = {
						7524,	-- Anguished Highborne
						7523,	-- Suffering Highborne
					},
					["cost"] = {
						{ "i", 21946, 1 },	-- Ectoplasmic Distiller
					},
				})),
				i(18704, {	-- Mature Blue Dragon Sinew
					["questID"] = 7634,	-- Ancient Sinew Wrapped Lamina
					["classes"] = { HUNTER },
					["crs"] = {
						7435,	-- Cobalt Wyrmkin
						7436,	-- Cobalt Scalebane
						7437,	-- Cobalt Mageweaver
						10196,	-- General Colbatann
						10663,	-- Manaclaw
						10664,	-- Scryer
					},
				}),
				i(12383, {	-- Moontouched Feather
					["questID"] = 978,	-- Moontouched Wildkin
					["description"] = "Scattered on the ground around Winterspring.",
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 52,
				}),
				i(15761, {	-- Pattern: Frostsaber Gloves
					["cr"] = 7441,	-- Winterfall Totemic
				}),
				i(15747, {	-- Pattern: Frostsaber Leggings
					["cr"] = 7440,	-- Winterfall Den Watcher
				}),
				i(15779, {	-- Pattern: Frostsaber Tunic
					["cr"] = 7438,	-- Winterfall Ursa
				}),
				i(14493, {	-- Pattern: Robe of Winter Night
					["cr"] = 7437,	-- Cobalt Mageweaver
				}),
				i(13497, {	-- Recipe: Greater Arcane Protection Potion
					["cr"] = 7437,	-- Cobalt Mageweaver
				}),
				i(13495, {	-- Recipe: Greater Frost Protection Potion
					["cr"] = 7428,	-- Frostmaul Giant
				}),
				i(16054, {	-- Schematic: Arcanite Dragonling
					["cr"] = 7437,	-- Cobalt Mageweaver
				}),
				i(12622, {	-- Shardtooth Meat
					["crs"] = {
						7445,	-- Elder Shardtooth
						7446,	-- Rabid Shardtooth
						7444,	-- Shardtooth Bear
						7443,	-- Shardtooth Mauler
					},
				}),
				un(PHASE_FIVE, i(22227, {	-- Starbreeze Village Relic
					["crs"] = {
						7428,	-- Frostmaul Giant
						7429,	-- Frostmaul Preserver
					},
				})),
				i(18604, {	-- Tears of the Hederine
					["questID"] = 7582,	-- The Prison's Casing
					["classes"] = { WARLOCK },
					["crs"] = {
						7461,	-- Hederine Initiate
						7463,	-- Hederine Slayer
						7462,	-- Hederine Manastalker
					},
				}),
				i(18665, {	-- The Eye of Shadow
					["classes"] = { PRIEST },
					["crs"] = {
						7461,	-- Hederine Initiate
						7463,	-- Hederine Slayer
					},
				}),
				i(12431, {	-- Winterfall E'ko
					["crs"] = {
						10738,	-- High Chief Winterfall
						7440,	-- Winterfall Den Watcher
						7442,	-- Winterfall Pathfinder
						10916,	-- Winterfall Runner
						7439,	-- Winterfall Shaman
						7441,	-- Winterfall Totemic
						7438,	-- Winterfall Ursa
					},
				}),
				i(12820, {	-- Winterfall Firewater
					["crs"] = {
						10199,	-- Grizzle Snowpaw
						10738,	-- High Chief Winterfall
						7440,	-- Winterfall Den Watcher
						7442,	-- Winterfall Pathfinder
						10916,	-- Winterfall Runner
						7439,	-- Winterfall Shaman
						7441,	-- Winterfall Totemic
						7438,	-- Winterfall Ursa
					},
				}),
				i(21383, {	-- Winterfall Spirit Beads
					["crs"] = {
						10738,	-- High Chief Winterfall
						7440,	-- Winterfall Den Watcher
						7442,	-- Winterfall Pathfinder
						10916,	-- Winterfall Runner
						7439,	-- Winterfall Shaman
						7441,	-- Winterfall Totemic
						7438,	-- Winterfall Ursa
					},
				}),
				i(21928, {	-- Winterspring Blood Sample
					["crs"] = {
						7445,	-- Elder Shardtooth
						7431,	-- Frostsaber
						7430,	-- Frostsaber Cub
						7433,	-- Frostsaber Huntress
						7434,	-- Frostsaber Pride Watcher
						7432,	-- Frostsaber Stalker
						7446,	-- Rabid Shardtooth
						7444,	-- Shardtooth Bear
						7443,	-- Shardtooth Mauler
					},
				}),
			}),
		}),
	}),
};