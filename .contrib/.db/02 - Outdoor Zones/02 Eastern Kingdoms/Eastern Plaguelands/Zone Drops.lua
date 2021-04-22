---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(EASTERN_PLAGUELANDS, {
			n(ZONEDROPS, {
				un(PHASE_SIX, i(22526)),	-- Bone Fragments
				i(12841, {	-- Invader's Scourgestone
					["description"] = "Can drop from any Undead mobs in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(12840, {	-- Minion's Scourgestone
					["description"] = "Can drop from weak Undead mobs in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(12938, {	-- Blood of Heroes
					["description"] = "This item can be found sporatically on the ground in the Plaguelands.",
					["cr"] = 10996,	-- Fallen Hero
					["coords"] = {
						-- Plaguewood
						{ 34.5, 25.8, EASTERN_PLAGUELANDS },
						{ 38.8, 26.7, EASTERN_PLAGUELANDS },
						{ 33.6, 32.6, EASTERN_PLAGUELANDS },
						{ 38.5, 31.1, EASTERN_PLAGUELANDS },
						{ 36.7, 38.1, EASTERN_PLAGUELANDS },
						{ 38.9, 36.1, EASTERN_PLAGUELANDS },
						{ 44.9, 32.9, EASTERN_PLAGUELANDS },
						{ 49.1, 35.5, EASTERN_PLAGUELANDS },
						
						-- Blackwood Lake
						{ 47.5, 40.8, EASTERN_PLAGUELANDS },
						{ 50.3, 45.5, EASTERN_PLAGUELANDS },
						{ 53.5, 50.7, EASTERN_PLAGUELANDS },
						
						-- Light's Hope
						{ 66.1, 53.1, EASTERN_PLAGUELANDS },
						{ 73.8, 51.1, EASTERN_PLAGUELANDS },
						{ 76.2, 50.7, EASTERN_PLAGUELANDS },
						{ 75.6, 55.3, EASTERN_PLAGUELANDS },
						{ 74.7, 58.7, EASTERN_PLAGUELANDS },
						{ 78.5, 57.5, EASTERN_PLAGUELANDS },
						{ 80.5, 59.6, EASTERN_PLAGUELANDS },
						{ 78.7, 67.3, EASTERN_PLAGUELANDS },
						
						-- Tirion's House
						{ 7.1, 50.7, EASTERN_PLAGUELANDS },
						{ 8.1, 54.4, EASTERN_PLAGUELANDS },
						{ 14.2, 64.7, EASTERN_PLAGUELANDS },
						{ 20.0, 60.9, EASTERN_PLAGUELANDS },
						{ 20.5, 66.9, EASTERN_PLAGUELANDS },
						
						-- Crypt
						{ 22.1, 85.0, EASTERN_PLAGUELANDS },
						{ 24.3, 88.2, EASTERN_PLAGUELANDS },
						{ 28.8, 85.9, EASTERN_PLAGUELANDS },
						
						-- Nathanos's House
						{ 31.5, 73.9, EASTERN_PLAGUELANDS },
						{ 27.3, 64.0, EASTERN_PLAGUELANDS },
						{ 30.9, 65.5, EASTERN_PLAGUELANDS },
						{ 26.7, 69.5, EASTERN_PLAGUELANDS },
						{ 26.3, 70.5, EASTERN_PLAGUELANDS },
						{ 26.0, 74.7, EASTERN_PLAGUELANDS },
						{ 27.1, 75.5, EASTERN_PLAGUELANDS },
						{ 32.0, 71.0, EASTERN_PLAGUELANDS },
						{ 34.3, 67.8, EASTERN_PLAGUELANDS },
						{ 29.2, 78.8, EASTERN_PLAGUELANDS },
						{ 37.1, 65.7, EASTERN_PLAGUELANDS },
						{ 37.6, 68.5, EASTERN_PLAGUELANDS },
						{ 36.9, 70.6, EASTERN_PLAGUELANDS },
						{ 35.9, 75.8, EASTERN_PLAGUELANDS },
						{ 24.5, 76.9, EASTERN_PLAGUELANDS },
						{ 34.0, 80.2, EASTERN_PLAGUELANDS },
						
						-- Mushroom Kingdom
						{ 40.0, 49.9, EASTERN_PLAGUELANDS },
						{ 38.5, 54.0, EASTERN_PLAGUELANDS },
						
						-- The Infectis Scar
						{ 41.5, 65.7, EASTERN_PLAGUELANDS },
						{ 46.3, 64.0, EASTERN_PLAGUELANDS },
						{ 55.5, 58.7, EASTERN_PLAGUELANDS },
						{ 41.5, 79.7, EASTERN_PLAGUELANDS },
						{ 42.5, 75.7, EASTERN_PLAGUELANDS },
						{ 48.9, 67.2, EASTERN_PLAGUELANDS },
						{ 46.2, 70.8, EASTERN_PLAGUELANDS },
						{ 46.5, 74.8, EASTERN_PLAGUELANDS },
						{ 47.9, 80.0, EASTERN_PLAGUELANDS },
						{ 50.5, 77.3, EASTERN_PLAGUELANDS },
						{ 51.8, 70.3, EASTERN_PLAGUELANDS },
						{ 56.2, 63.9, EASTERN_PLAGUELANDS },
						{ 59.3, 62.2, EASTERN_PLAGUELANDS },
						{ 58.5, 64.9, EASTERN_PLAGUELANDS },
						{ 59.9, 67.5, EASTERN_PLAGUELANDS },
						{ 57.5, 72.0, EASTERN_PLAGUELANDS },
						{ 61.8, 70.2, EASTERN_PLAGUELANDS },
						{ 63.6, 67.7, EASTERN_PLAGUELANDS },
						{ 67.6, 66.8, EASTERN_PLAGUELANDS },
						
						-- Lake Mereldar
						{ 56.5, 76.1, EASTERN_PLAGUELANDS },
						{ 57.8, 76.2, EASTERN_PLAGUELANDS },
						{ 59.5, 76.0, EASTERN_PLAGUELANDS },
						{ 59.2, 80.8, EASTERN_PLAGUELANDS },
						{ 57.1, 81.9, EASTERN_PLAGUELANDS },
						{ 59.2, 80.8, EASTERN_PLAGUELANDS },
						{ 64.7, 81.0, EASTERN_PLAGUELANDS },
						
						-- Tyr's Hand
						{ 68.2, 70.6, EASTERN_PLAGUELANDS },
						{ 70.7, 69.5, EASTERN_PLAGUELANDS },
						{ 73.4, 69.8, EASTERN_PLAGUELANDS },
						{ 76.6, 72.5, EASTERN_PLAGUELANDS },
						{ 69.0, 71.5, EASTERN_PLAGUELANDS },
						{ 68.3, 74.6, EASTERN_PLAGUELANDS },
						{ 68.6, 78.5, EASTERN_PLAGUELANDS },
						{ 68.8, 80.6, EASTERN_PLAGUELANDS },
						{ 69.0, 83.5, EASTERN_PLAGUELANDS },
						{ 70.6, 80.8, EASTERN_PLAGUELANDS },
						{ 71.1, 75.3, EASTERN_PLAGUELANDS },
						{ 73.6, 76.9, EASTERN_PLAGUELANDS },
						{ 72.3, 78.5, EASTERN_PLAGUELANDS },
						{ 76.1, 78.2, EASTERN_PLAGUELANDS },
						{ 73.3, 82.2, EASTERN_PLAGUELANDS },
						{ 74.1, 83.8, EASTERN_PLAGUELANDS },
						{ 74.8, 83.5, EASTERN_PLAGUELANDS },
					},
				}),
				un(PHASE_FIVE, i(22228, {	-- Brilliant Sword of Zealotry
					["cr"] = 9448,	-- Scarlet Praetorian
				})),
				i(17309, {	-- Discordant Bracers
					["questID"] = 6804,	-- Poisoned Water
					["crs"] = {
						8521,	-- Blighted Horror
						8519,	-- Blighted Surge
						8522,	-- Plague Monstrosity
						8520,	-- Plague Ravager
					},
				}),
				i(16242, {	-- Formula: Enchant Chest - Major Mana
					["cr"] = 9452,	-- Scarlet Enchanter
				}),
				i(16222, {	-- Formula: Enchant Chest - Superior Spirit
					["cr"] = 9447,	-- Scarlet Warder
				}),
				i(18512, {	-- Larval Acid
					["crs"] = {
						8605,	-- Carrion Devourer
						8603,	-- Carrion Grub
					},
				}),
				i(15447, {	-- Living Rot
					["questID"] = 6022,	-- To Kill With Purpose
					["description"] = "PROTIP: Do NOT loot these until you have a couple of mobs killed nearby. The timer starts the second you pick it up.",
					["races"] = HORDE_ONLY,
					["crs"] = {
						8526,	-- Dark Caster
						8531,	-- Gibbering Ghoul
						8541,	-- Hate Shrieker
						8525,	-- Scourge Warder
						8543,	-- Stitched Horror
						8538,	-- Unseen Servant
						12262,	-- Ziggurat Protector
					},
				}),
				i(20768, {	-- Oozing Bag
					["crs"] = {
						8606,	-- Living Decay
						8607,	-- Rotting Sludge
					},
					["groups"] = {
						i(20769),	-- Disgusting Oozeling
					},
				}),
				i(14477, {	-- Pattern: Ghostweave Gloves
					["cr"] = 8538,	-- Unseen Servant
				}),
				i(14480, {	-- Pattern: Ghostweave Vest
					["cr"] = 8538,	-- Unseen Servant
				}),
				i(14485, {	-- Pattern: Wizardweave Leggings
					["cr"] = 8551,	-- Dark Summoner
				}),
				i(14500, {	-- Pattern: Wizardweave Robe
					["cr"] = 8526,	-- Dark Caster
				}),
				i(14505, {	-- Pattern: Wizardweave Turban
					["cr"] = 8526,	-- Dark Caster
				}),
				i(13479, {	-- Recipe: Elixir of the Sages
					["crs"] = {
						9451,	-- Scarlet Archmage
						9449,	-- Scarlet Cleric
						9450,	-- Scarlet Curate
						9452,	-- Scarlet Enchanter
					},
				}),
				i(13499, {	-- Recipe: Greater Shadow Protection Potion
					["crs"] = {
						8546,	-- Dark Adept
						8550,	-- Shadowmage
					},
				}),
				i(12811, {	-- Righteous Orb
					["description"] = "Can drop from any Scarlet Crusade member in Stratholme in addition to the Scarlet Oracle and the Crimson Elite in the Plaguelands.",
					["cr"] = 12339,	-- Demetria <The Scarlet Oracle>
				}),
				i(16056, {	-- Schematic: Flawless Arcanite Rifle
					["cr"] = 8561,	-- Mossflayer Shadowhunter
				}),
				un(PHASE_FIVE, i(21935, {	-- Stable Ectoplasm
					["questID"] = 8924,	-- Hunting for Ectoplasm
					["crs"] = {
						8542,	-- Death Singer
						8539,	-- Eyeless Watcher
						8541,	-- Hate Shrieker
						8540,	-- Torn Screamer
						8538,	-- Unseen Servant
					},
					["cost"] = {
						{ "i", 21946, 1 },	-- Ectoplasmic Distiller
					},
				})),
				i(13853, {	-- Slab of Carrion Worm Meat
					["questID"] = 5544,	-- Carrion Grubbage
					["crs"] = {
						8605,	-- Carrion Devourer
						8603,	-- Carrion Grub
					},
				}),
			}),
		}),
	}),
};