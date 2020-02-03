---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(EASTERN_PLAGUELANDS, {
			n(0, {	-- Zone Drops
				i(12843, {	-- Corruptor's Scourgestone
					["description"] = "Can drop from any Undead rare mob or boss in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(12841, {	-- Invader's Scourgestone
					["description"] = "Can drop from any Undead mobs in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(12840, {	-- Minion's Scourgestone
					["description"] = "Can drop from weak Undead mobs in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(12938, {	-- Blood of Heroes
					["description"] = "This item can be found sporatically on the ground and drop from certain mobs in the Plaguelands",
					["crs"] = {
						10996,	-- Fallen Hero
						16132,	-- Huntsman Leopold <The Scarlet Crusade>
						11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
					},
				}),
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
				i(13853, {	-- Slab of Carrion Worm Meat
					["questID"] = 5544,	-- Carrion Grubbage
					["crs"] = {
						8605,	-- Carrion Devourer
						8603,	-- Carrion Grub
					},
				}),
				i(16039, {	-- Ta'Kierthan Songblade
					["cr"] = 10826,	-- Lord Darkscythe
				}),
			}),
		}),
	}),
};