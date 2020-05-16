-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = {
	map(RUINS_OF_AHNQIRAJ, {
		["description"] = "Deep within the deserts of Silithus lies an ancient and powerful race of beings known as the Qiraji. One thousand years ago, the Night Elves and Bronze Dragonflight combined their considerable powers to seal the Qiraji behind the scarab wall with the help of the children of some of the aspects. This is remembered as the \"War of the Shifting Sands\".\n\nRecently it was discovered that some of the Qiraji were finding ways past the wall. Anachronos, the bronze dragon, helped the adventurers of Azeroth open the Scarab Wall to prevent more incursions. The mortal races have now banded together to confront the evil Qiraji in their own land. A champion has opened the gate and the Horde and Alliance have driven the armies of the Qiraji back into the ruins in retreat. It now falls to heroes to delve into the lair of the Qiraji and put an end to their masters once and for all",
		["isRaid"] = true,
		["u"] = 3,	-- Added in later phase
		["lvl"] = 50,
		["groups"] = {
			n(QUESTS, {
				cl(DRUID, bubbleDown({ ["classes"] = { DRUID } }, {
					q(8700, {	-- Band of Unending Life
						["qg"] = 15498,	-- Windcaller Yessendra
						["minReputation"] = { 609, HONORED },	-- Cenarion Circle, Honored.
						["coord"] = { 52.0, 38.2, SILITHUS },
						["classes"] = { DRUID },
						["cost"] = {
							{ "i", 20884, 1 },	-- Qiraji Magisterial Ring
							{ "i", 20873, 2 },	-- Alabaster Idol
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21408),	-- Band of Unending Life
						},
					}),
					q(8692, {	-- Cloak of Unending Life
						["qg"] = 15500,	-- Keyl Swiftclaw
						["minReputation"] = { 609, REVERED },	-- Cenarion Circle, Revered.
						["coord"] = { 51.8, 39.5, SILITHUS },
						["classes"] = { DRUID },
						["cost"] = {
							{ "i", 20889, 1 },	-- Qiraji Regal Drape
							{ "i", 20872, 2 },	-- Vermillion Idol
							{ "i", 20864, 5 },	-- Bone Scarab
							{ "i", 20860, 5 },	-- Silver Scarab
						},
						["groups"] = {
							i(21409),	-- Cloak of Unending Life
						},
					}),
					q(8708, {	-- Mace of Unending Life
						["qg"] = 15499,	-- Warden Haro
						["minReputation"] = { 609, EXALTED },	-- Cenarion Circle, Exalted.
						["coord"] = { 51.1, 38.9, SILITHUS },
						["classes"] = { DRUID },
						["cost"] = {
							{ "i", 20890, 1 },	-- Qiraji Ornate Hilt
							{ "i", 20870, 2 },	-- Jasper Idol
							{ "i", 20862, 5 },	-- Crystal Scarab
							{ "i", 20858, 5 },	-- Stone Scarab
						},
						["groups"] = {
							i(21407),	-- Mace of Unending Life
						},
					}),
				})),
				cl(HUNTER, bubbleDown({ ["classes"] = { HUNTER } }, {
					q(8704, {	-- Signet of the Unseen Path
						["qg"] = 15498,	-- Windcaller Yessendra
						["minReputation"] = { 609, HONORED },	-- Cenarion Circle, Honored.
						["coord"] = { 52.0, 38.2, SILITHUS },
						["classes"] = { HUNTER },
						["cost"] = {
							{ "i", 20888, 1 },	-- Qiraji Ceremonial Ring
							{ "i", 20869, 2 },	-- Amber Idol
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21402),	-- Signet of the Unseen Path
						},
					}),
					q(8696, {	-- Cloak of the Unseen Path
						["qg"] = 15500,	-- Keyl Swiftclaw
						["minReputation"] = { 609, REVERED },	-- Cenarion Circle, Revered.
						["coord"] = { 51.8, 39.5, SILITHUS },
						["classes"] = { HUNTER },
						["cost"] = {
							{ "i", 20889, 1 },	-- Qiraji Regal Drape
							{ "i", 20868, 2 },	-- Lambent Idol
							{ "i", 20858, 5 },	-- Stone Scarab
							{ "i", 20862, 5 },	-- Crystal Scarab
						},
						["groups"] = {
							i(21403),	-- Cloak of the Unseen Path
						},
					}),
					q(8712, {	-- Scythe of the Unseen Path
						["qg"] = 15499,	-- Warden Haro
						["minReputation"] = { 609, EXALTED },	-- Cenarion Circle, Exalted.
						["coord"] = { 51.1, 38.9, SILITHUS },
						["classes"] = { HUNTER },
						["cost"] = {
							{ "i", 20886, 1 },	-- Qiraji Spiked Hilt
							{ "i", 20866, 2 },	-- Azure Idol
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21401),	-- Scythe of the Unseen Path
						},
					}),
				})),
				cl(MAGE, bubbleDown({ ["classes"] = { MAGE } }, {
					q(8699, {	-- Band of Vaulted Secrets
						["qg"] = 15498,	-- Windcaller Yessendra
						["minReputation"] = { 609, HONORED },	-- Cenarion Circle, Honored.
						["coord"] = { 52.0, 38.2, SILITHUS },
						["classes"] = { MAGE },
						["cost"] = {
							{ "i", 20884, 1 },	-- Qiraji Magisterial Ring
							{ "i", 20866, 2 },	-- Azure Idol
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21414),	-- Band of Vaulted Secrets
						},
					}),
					q(8691, {	-- Drape of Vaulted Secrets
						["qg"] = 15500,	-- Keyl Swiftclaw
						["minReputation"] = { 609, REVERED },	-- Cenarion Circle, Revered.
						["coord"] = { 51.8, 39.5, SILITHUS },
						["classes"] = { MAGE },
						["cost"] = {
							{ "i", 20885, 1 },	-- Qiraji Martial Drape
							{ "i", 20873, 2 },	-- Alabaster Idol
							{ "i", 20858, 5 },	-- Stone Scarab
							{ "i", 20862, 5 },	-- Crystal Scarab
						},
						["groups"] = {
							i(21415),	-- Drape of Vaulted Secrets
						},
					}),
					q(8707, {	-- Blade of Vaulted Secrets
						["qg"] = 15499,	-- Warden Haro
						["minReputation"] = { 609, EXALTED },	-- Cenarion Circle, Exalted.
						["coord"] = { 51.1, 38.9, SILITHUS },
						["classes"] = { MAGE },
						["cost"] = {
							{ "i", 20890, 1 },	-- Qiraji Ornate Hilt
							{ "i", 20871, 2 },	-- Obsidian Idol
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21413),	-- Blade of Vaulted Secrets
						},
					}),
				})),
				cl(PALADIN, bubbleDown({ ["classes"] = { PALADIN } }, {
					q(8703, {	-- Ring of Eternal Justice
						["qg"] = 15498,	-- Windcaller Yessendra
						["minReputation"] = { 609, HONORED },	-- Cenarion Circle, Honored.
						["coord"] = { 52.0, 38.2, SILITHUS },
						["classes"] = { PALADIN },
						["cost"] = {
							{ "i", 20884, 1 },	-- Qiraji Magisterial Ring
							{ "i", 20872, 2 },	-- Vermillion Idol
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21396),	-- Ring of Eternal Justice
						},
					}),
					q(8695, {	-- Cape of Eternal Justice
						["qg"] = 15500,	-- Keyl Swiftclaw
						["minReputation"] = { 609, REVERED },	-- Cenarion Circle, Revered.
						["coord"] = { 51.8, 39.5, SILITHUS },
						["classes"] = { PALADIN },
						["cost"] = {
							{ "i", 20889, 1 },	-- Qiraji Regal Drape
							{ "i", 20871, 2 },	-- Obsidian Idol
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21397),	-- Cape of Eternal Justice
						},
					}),
					q(8711, {	-- Blade of Eternal Justice
						["qg"] = 15499,	-- Warden Haro
						["minReputation"] = { 609, EXALTED },	-- Cenarion Circle, Exalted.
						["coord"] = { 51.1, 38.9, SILITHUS },
						["classes"] = { PALADIN },
						["cost"] = {
							{ "i", 20886, 1 },	-- Qiraji Spiked Hilt
							{ "i", 20869, 2 },	-- Amber Idol
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21395),	-- Blade of Eternal Justice
						},
					}),
				})),
				cl(PRIEST, bubbleDown({ ["classes"] = { PRIEST } }, {
					q(8697, {	-- Ring of Infinite Wisdom
						["qg"] = 15498,	-- Windcaller Yessendra
						["minReputation"] = { 609, HONORED },	-- Cenarion Circle, Honored.
						["coord"] = { 52.0, 38.2, SILITHUS },
						["classes"] = { PRIEST },
						["cost"] = {
							{ "i", 20888, 1 },	-- Qiraji Ceremonial Ring
							{ "i", 20871, 2 },	-- Obsidian Idol
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21411),	-- Ring of Infinite Wisdom
						},
					}),
					q(8689, {	-- Shroud of Infinite Wisdom
						["qg"] = 15500,	-- Keyl Swiftclaw
						["minReputation"] = { 609, REVERED },	-- Cenarion Circle, Revered.
						["coord"] = { 51.8, 39.5, SILITHUS },
						["classes"] = { PRIEST },
						["cost"] = {
							{ "i", 20885, 1 },	-- Qiraji Martial Drape
							{ "i", 20870, 2 },	-- Jasper Idol
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21412),	-- Shroud of Infinite Wisdom
						},
					}),
					q(8705, {	-- Gavel of Infinite Wisdom
						["qg"] = 15499,	-- Warden Haro
						["minReputation"] = { 609, EXALTED },	-- Cenarion Circle, Exalted.
						["coord"] = { 51.1, 38.9, SILITHUS },
						["classes"] = { PRIEST },
						["cost"] = {
							{ "i", 20890, 1 },	-- Qiraji Ornate Hilt
							{ "i", 20868, 2 },	-- Lambent Idol
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21410),	-- Gavel of Infinite Wisdom
						},
					}),
				})),
				cl(ROGUE, bubbleDown({ ["classes"] = { ROGUE } }, {
					q(8701, {	-- Band of Veiled Shadows
						["qg"] = 15498,	-- Windcaller Yessendra
						["minReputation"] = { 609, HONORED },	-- Cenarion Circle, Honored.
						["coord"] = { 52.0, 38.2, SILITHUS },
						["classes"] = { ROGUE },
						["cost"] = {
							{ "i", 20888, 1 },	-- Qiraji Ceremonial Ring
							{ "i", 20867, 2 },	-- Onyx Idol
							{ "i", 20858, 5 },	-- Stone Scarab
							{ "i", 20862, 5 },	-- Crystal Scarab
						},
						["groups"] = {
							i(21405),	-- Band of Veiled Shadows
						},
					}),
					q(8693, {	-- Cloak of Veiled Shadows
						["qg"] = 15500,	-- Keyl Swiftclaw
						["minReputation"] = { 609, REVERED },	-- Cenarion Circle, Revered.
						["coord"] = { 51.8, 39.5, SILITHUS },
						["classes"] = { ROGUE },
						["cost"] = {
							{ "i", 20885, 1 },	-- Qiraji Martial Drape
							{ "i", 20866, 2 },	-- Azure Idol
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21406),	-- Cloak of Veiled Shadows
						},
					}),
					q(8709, {	-- Dagger of Veiled Shadows
						["qg"] = 15499,	-- Warden Haro
						["minReputation"] = { 609, EXALTED },	-- Cenarion Circle, Exalted.
						["coord"] = { 51.1, 38.9, SILITHUS },
						["classes"] = { ROGUE },
						["cost"] = {
							{ "i", 20886, 1 },	-- Qiraji Spiked Hilt
							{ "i", 20872, 2 },	-- Vermillion Idol
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21404),	-- Dagger of Veiled Shadows
						},
					}),
				})),
				cl(SHAMAN, bubbleDown({ ["classes"] = { SHAMAN } }, {
					q(8698, {	-- Ring of the Gathering Storm
						["qg"] = 15498,	-- Windcaller Yessendra
						["minReputation"] = { 609, HONORED },	-- Cenarion Circle, Honored.
						["coord"] = { 52.0, 38.2, SILITHUS },
						["classes"] = { SHAMAN },
						["cost"] = {
							{ "i", 20884, 1 },	-- Qiraji Magisterial Ring
							{ "i", 20872, 2 },	-- Vermillion Idol
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21399),	-- Ring of the Gathering Storm
						},
					}),
					q(8690, {	-- Cloak of the Gathering Storm
						["qg"] = 15500,	-- Keyl Swiftclaw
						["minReputation"] = { 609, REVERED },	-- Cenarion Circle, Revered.
						["coord"] = { 51.8, 39.5, SILITHUS },
						["classes"] = { SHAMAN },
						["cost"] = {
							{ "i", 20889, 1 },	-- Qiraji Regal Drape
							{ "i", 20871, 2 },	-- Obsidian Idol
							{ "i", 20863, 5 },	-- Clay Scarab
							{ "i", 20859, 5 },	-- Gold Scarab
						},
						["groups"] = {
							i(21400),	-- Cloak of the Gathering Storm
						},
					}),
					q(8706, {	-- Hammer of the Gathering Storm
						["qg"] = 15499,	-- Warden Haro
						["minReputation"] = { 609, EXALTED },	-- Cenarion Circle, Exalted.
						["coord"] = { 51.1, 38.9, SILITHUS },
						["classes"] = { SHAMAN },
						["cost"] = {
							{ "i", 20886, 1 },	-- Qiraji Spiked Hilt
							{ "i", 20869, 2 },	-- Amber Idol
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21398),	-- Hammer of the Gathering Storm
						},
					}),
				})),
				cl(WARLOCK, bubbleDown({ ["classes"] = { WARLOCK } }, {
					q(8702, {	-- Ring of Unspoken Names
						["qg"] = 15498,	-- Windcaller Yessendra
						["minReputation"] = { 609, HONORED },	-- Cenarion Circle, Honored.
						["coord"] = { 52.0, 38.2, SILITHUS },
						["classes"] = { WARLOCK },
						["cost"] = {
							{ "i", 20888, 1 },	-- Qiraji Ceremonial Ring
							{ "i", 20870, 2 },	-- Jasper Idol
							{ "i", 20858, 5 },	-- Stone Scarab
							{ "i", 20862, 5 },	-- Crystal Scarab
						},
						["groups"] = {
							i(21417),	-- Ring of Unspoken Names
						},
					}),
					q(8694, {	-- Shroud of Unspoken Names
						["qg"] = 15500,	-- Keyl Swiftclaw
						["minReputation"] = { 609, REVERED },	-- Cenarion Circle, Revered.
						["coord"] = { 51.8, 39.5, SILITHUS },
						["classes"] = { WARLOCK },
						["cost"] = {
							{ "i", 20889, 1 },	-- Qiraji Regal Drape
							{ "i", 20869, 2 },	-- Amber Idol
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21418),	-- Shroud of Unspoken Names
						},
					}),
					q(8710, {	-- Kris of Unspoken Names
						["qg"] = 15499,	-- Warden Haro
						["minReputation"] = { 609, EXALTED },	-- Cenarion Circle, Exalted.
						["coord"] = { 51.1, 38.9, SILITHUS },
						["classes"] = { WARLOCK },
						["cost"] = {
							{ "i", 20890, 1 },	-- Qiraji Ornate Hilt
							{ "i", 20867, 2 },	-- Onyx Idol
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21416),	-- Kris of Unspoken Names
						},
					}),
				})),
				cl(WARRIOR, bubbleDown({ ["classes"] = { WARRIOR } }, {
					q(8556, {	-- Signet of Unyielding Strength
						["qg"] = 15498,	-- Windcaller Yessendra
						["minReputation"] = { 609, HONORED },	-- Cenarion Circle, Honored.
						["coord"] = { 52.0, 38.2, SILITHUS },
						["classes"] = { WARRIOR },
						["cost"] = {
							{ "i", 20884, 1 },	-- Qiraji Magisterial Ring
							{ "i", 20868, 2 },	-- Lambent Idol
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21393),	-- Signet of Unyielding Strength
						},
					}),
					q(8557, {	-- Drape of Unyielding Strength
						["qg"] = 15500,	-- Keyl Swiftclaw
						["minReputation"] = { 609, REVERED },	-- Cenarion Circle, Revered.
						["coord"] = { 51.8, 39.5, SILITHUS },
						["classes"] = { WARRIOR },
						["cost"] = {
							{ "i", 20885, 1 },	-- Qiraji Martial Drape
							{ "i", 20867, 2 },	-- Onyx Idol
							{ "i", 20864, 5 },	-- Bone Scarab
							{ "i", 20860, 5 },	-- Silver Scarab
						},
						["groups"] = {
							i(21394),	-- Drape of Unyielding Strength
						},
					}),
					q(8558, {	-- Sickle of Unyielding Strength
						["qg"] = 15499,	-- Warden Haro
						["minReputation"] = { 609, EXALTED },	-- Cenarion Circle, Exalted.
						["coord"] = { 51.1, 38.9, SILITHUS },
						["classes"] = { WARRIOR },
						["cost"] = {
							{ "i", 20886, 1 },	-- Qiraji Spiked Hilt
							{ "i", 20873, 2 },	-- Alabaster Idol
							{ "i", 20862, 5 },	-- Crystal Scarab
							{ "i", 20858, 5 },	-- Stone Scarab
						},
						["groups"] = {
							i(21392),	-- Sickle of Unyielding Strength
						},
					}),
				})),
				q(8791, {	-- The Fall of Ossirian
					["provider"] = { "i", 21220 },	-- Head of Ossirian the Unscarred
					["lvl"] = 60,
					["groups"] = {
						i(21507),	-- Amulet of the Shifting Sands
						i(21504),	-- Charm of the Shifting Sands
						i(21505),	-- Choker of the Shifting Sands
						i(21506),	-- Pendant of the Shifting Sands
					},
				}),
			}),
			filter(200, {	-- Recipes
				["crs"] = {
					15369,	-- Ayamiss the Hunter
					15370,	-- Buru the Gorger
					15341,	-- General Rajaxx
					15348,	-- Kurinnaxx
					15340,	-- Moam
					15339,	-- Ossirian the Unscarred
				},
				["groups"] = {
					-- Class Books
					cl(DRUID, bubbleDown({ ["classes"] = { DRUID } }, {
						i(21294),	-- Book of Healing Touch XI
						i(21295),	-- Book of Starfire VII
						i(21296),	-- Book of Rejuvenation XI
					})),
					cl(HUNTER, bubbleDown({ ["classes"] = { HUNTER } }, {
						i(21304),	-- Guide: Multi-Shot V
						i(21306),	-- Guide: Serpent Sting IX
						i(21307),	-- Guide: Aspect of the Hawk VII
					})),
					cl(MAGE, bubbleDown({ ["classes"] = { MAGE } }, {
						i(21280),	-- Tome of Arcane Missiles VIII
						i(21279),	-- Tome of Fireball XII
						i(21214),	-- Tome of Frostbolt XI
					})),
					cl(PALADIN, bubbleDown({ ["classes"] = { PALADIN } }, {
						i(21289),	-- Libram: Blessing of Might VII
						i(21288),	-- Libram: Blessing of Wisdom VI
						i(21290),	-- Libram: Holy Light IX
					})),
					cl(PRIEST, bubbleDown({ ["classes"] = { PRIEST } }, {
						i(21284),	-- Codex of Greater Heal V
						i(21285),	-- Codex of Renew X
						i(21287),	-- Codex of Prayer of Healing V
					})),
					cl(ROGUE, bubbleDown({ ["classes"] = { ROGUE } }, {
						i(21300),	-- Handbook of Backstab IX
						i(21302),	-- Handbook of Deadly Poison V
						i(21303),	-- Handbook of Feint V
					})),
					cl(SHAMAN, bubbleDown({ ["classes"] = { SHAMAN } }, {
						i(21293),	-- Tablet of Grace of Air Totem III
						i(21291),	-- Tablet of Healing Wave X
						i(21292),	-- Tablet of Strength of Earth Totem V
					})),
					cl(WARLOCK, bubbleDown({ ["classes"] = { WARLOCK } }, {
						i(21283),	-- Grimoire of Corruption VII
						i(21282),	-- Grimoire of Immolate VIII
						i(21281),	-- Grimoire of Shadow Bolt X
					})),
					cl(WARRIOR, bubbleDown({ ["classes"] = { WARRIOR } }, {
						i(21298),	-- Manual of Battle Shout VII
						i(21297),	-- Manual of Heroic Strike IX
						i(21299),	-- Manual of Revenge VI
					})),
					
					-- Enchants
					i(20729),	-- Formula: Enchant Gloves - Fire Power
					i(20728),	-- Formula: Enchant Gloves - Frost Power
					i(20730),	-- Formula: Enchant Gloves - Healing Power
					i(20727),	-- Formula: Enchant Gloves - Shadow Power
					i(20731),	-- Formula: Enchant Gloves - Superior Agility
					i(20736),	-- Formula: Enchant Cloak - Dodge
					i(20734),	-- Formula: Enchant Cloak - Stealth
				},
			}),
			n(ZONEDROPS, {
				i(21801),	-- Antenna of Invigoration
				i(21804),	-- Coif of Elemental Fury
				i(21803),	-- Helm of the Holy Avenger
				i(21805),	-- Polished Obsidian Pauldrons
				i(21800),	-- Silithid Husked Launcher
				i(21802),	-- The Lost Kris of Zedd
				i(20873),	-- Alabaster Idol
				i(20869),	-- Amber Idol
				i(20866),	-- Azure Idol
				i(20870),	-- Jasper Idol
				i(20868),	-- Lambent Idol
				i(20871),	-- Obsidian Idol
				i(20867),	-- Onyx Idol
				i(20872),	-- Vermillion Idol
				i(20864),	-- Bone Scarab
				i(20861),	-- Bronze Scarab
				i(20863),	-- Clay Scarab
				i(20862),	-- Crystal Scarab
				i(20859),	-- Gold Scarab
				i(20865),	-- Ivory Scarab
				i(20860),	-- Silver Scarab
				i(20858),	-- Stone Scarab
				i(20768, {	-- Oozing Bag
					["cr"] = 15335,	-- Flesh Hunter
					["groups"] = {
						i(20769),	-- Disgusting Oozeling
					},
				}),
				i(21156, {	-- Scarab Bag
					["description"] = "Contains a couple of random scarabs.",
				}),
				i(21761, {	-- Scarab Coffer Key
					["timeline"] = {
						"added 1.13.0.28211",
						"deleted 4.2.2.28211"
					},
				}),
			}),
			n(COMMON_BOSS_DROPS, {
				i(20888, {	-- Qiraji Ceremonial Ring
					["crs"] = {
						15369,	-- Ayamiss the Hunter
						15370,	-- Buru the Gorger
						15341,	-- General Rajaxx
						15348,	-- Kurinnaxx
						15340,	-- Moam
						15339,	-- Ossirian the Unscarred
					},
				}),
				i(20884, {	-- Qiraji Magisterial Ring
					["crs"] = {
						15369,	-- Ayamiss the Hunter
						15370,	-- Buru the Gorger
						15341,	-- General Rajaxx
						15348,	-- Kurinnaxx
						15340,	-- Moam
						15339,	-- Ossirian the Unscarred
					},
				}),
				i(20885, {	-- Qiraji Martial Drape
					["crs"] = {
						15369,	-- Ayamiss the Hunter
						15370,	-- Buru the Gorger
						15341,	-- General Rajaxx
						15348,	-- Kurinnaxx
					},
				}),
				i(20889, {	-- Qiraji Regal Drape
					["crs"] = {
						15369,	-- Ayamiss the Hunter
						15370,	-- Buru the Gorger
						15341,	-- General Rajaxx
						15348,	-- Kurinnaxx
					},
				}),
				i(20890, {	-- Qiraji Ornate Hilt
					["crs"] = {
						15369,	-- Ayamiss the Hunter
						15370,	-- Buru the Gorger
						15339,	-- Ossirian the Unscarred
						15340,	-- Moam
					},
				}),
				i(20886, {	-- Qiraji Spiked Hilt
					["crs"] = {
						15369,	-- Ayamiss the Hunter
						15370,	-- Buru the Gorger
						15339,	-- Ossirian the Unscarred
						15340,	-- Moam
					},
				}),
				-- Key (Post 4.3 Only!)
				i(76401, {	-- Scarab Coffer Key
					["timeline"] = {
						"added 4.3.0.15005"
					},
					["crs"] = {
						15369,	-- Ayamiss the Hunter
						15370,	-- Buru the Gorger
						15341,	-- General Rajaxx
						15348,	-- Kurinnaxx
						15340,	-- Moam
						15339,	-- Ossirian the Unscarred
					},
				}),
			}),
			o(180691, {	-- Scarab Coffer
				["description"] = "These can be found along the walls of the instance and require a coffer key to open.",
				["cost"] = {
					{ "i", 21761, 1 },	-- Scarab Coffer Key [pre-4.3]
					{ "i", 76401, 1 },	-- Scarab Coffer Key [4.3]
				},
				["groups"] = {
					i(20873),	-- Alabaster Idol
					i(20869),	-- Amber Idol
					i(20866),	-- Azure Idol
					i(20870),	-- Jasper Idol
					i(20868),	-- Lambent Idol
					i(20871),	-- Obsidian Idol
					i(20867),	-- Onyx Idol
					i(20872),	-- Vermillion Idol
					i(21156),	-- Scarab Bag
				},
			}),
			n(15348, { 	-- Kurinnaxx
				{
					["itemID"] = 22217,	-- Kurinnaxx's Venom Sac
					["questID"] = 9023,	-- The Perfect Poison
					["timeline"] = {
						"added 1.13.0.28211",
						"deleted 4.2.2.28211"
					},
				},
				i(21498),	-- Qiraji Sacrificial Dagger
				i(21499),	-- Vestments of the Shifting Sands
				i(21502),	-- Sand Reaver Wristguards
				i(21501),	-- Toughened Silithis Hide Gloves
				i(21503),	-- Belt of the Sand Reaver
				i(21500),	-- Belt of the Inquisition
			}),
			n(15471, {	-- Lieutenant General Andorov
				["description"] = "In order to interact with this vendor, you must first talk to him to start the encounter with General Rajaxx and allow him to get at least one hit on the boss after the waves have completed.",
				["groups"] = {
					i(22219),	-- Plans: Jagged Obsidian Shield
					i(22221),	-- Plans: Obsidian Mail Tunic
				},
			}),
			n(15341, { 	-- General Rajaxx
				["description"] = "Speak with Lieutenant General Andorov in order to start the encounter. Andorov must survive the fight in order to defeat the encounter.",
				["groups"] = {
					{
						["npcID"] = -21,	-- Captains
						["qgs"] = {
							15390, 	-- Captain Xurrem
							15391, 	-- Captain Qeez
							15389, 	-- Captain Drenn
							15392, 	-- Captain Tuubid
							15386, 	-- Major Yeggeth
							15385, 	-- Colonel Zarran
						},
						["groups"] = {
							i(21806),	-- Gavel of Qiraji Athority
							i(21809),	-- Fury of the Forgotten Swarm
							i(21810),	-- Treads of the Wandering Nomad
						},
					},
					i(21492),	-- Manslayer of the Qiraji
					i(21496),	-- Bracers of Qiraji Command
					i(21494),	-- Southwind's Grasp
					i(21495),	-- Legplates of Qiraji Command
					i(21497),	-- Boots of the Qiraji General
					i(21493),	-- Boots of the Vanguard
				},
			}),
			n(15370, { 	-- Buru the Gorger
				i(21485),	-- Buru's Skull Fragment
				i(21487),	-- Slimy Scaled Gauntlets
				i(21486),	-- Gloves of the Swarm
				i(21491),	-- Scaled Bracers of the Gorger
				i(21490),	-- Slime Kickers
				i(21489),	-- Quicksand Waders
				i(21488),	-- Fetish of Chitinous Spikes
			}),
			n(15369, { 	-- Ayamiss the Hunter
				i(21466),	-- Stinger of Ayamiss
				i(21478),	-- Bow of Taut Sinew
				i(21479),	-- Gauntlets of the Immovable
				i(21484),	-- Helm of Regrowth
				i(21480),	-- Scaled Silithid Gauntlets
				i(21481),	-- Boots of the Desert Protector
				i(21483),	-- Ring of the Desert Winds
				i(21482),	-- Boots of the Fiery Sands
			}),
			n(15339, { 	-- Ossirian the Unscarred
				{
					["itemID"] = 21220,	-- Head of Ossirian the Unscarred
					["questID"] = 8791,	-- The Fall of Ossirian
				},
				i(21452),	-- Staff of the Ruins
				i(21715),	-- Sand Polished Hammer
				i(21459),	-- Crossbow of Imminent Doom
				i(21460),	-- Helm of Domination
				i(21454),	-- Runic Stone Shoulders
				i(21456),	-- Sandstorm Cloak
				i(21457),	-- Bracers of Brutality
				i(21464),	-- Shackles of the Unscarred
				i(21462),	-- Gloves of Dark Wisdom
				i(21458),	-- Gauntlets of New Life
				i(21463),	-- Ossirian's Binding
				i(21461),	-- Leggings of the Black Blizzard
				i(21453),	-- Mantle of the Horusath
			}),
			n(15340, { 	-- Moam
				i(21471),	-- Talon of Furious Concentration
				i(21455),	-- Southwind Helm
				i(21472),	-- Dustwind Turbin
				i(21474),	-- Chitinous Shoulderguards
				i(21468),	-- Mantle of Maz'Nadir
				i(21470),	-- Cloak of the Savior
				i(21467),	-- Thick Silithis Chestguard
				i(21469),	-- Gauntlets of Southwind
				i(21479),	-- Gauntlets of the Immovable
				i(21475),	-- Legplates of the Destroyer
				i(21476),	-- Obsidian Scaled Leggings
				i(21477),	-- Ring of Fury
				i(21473),	-- Eye of Moam
				i(22220),	-- Plans: Black Grasp of the Destroyer
			}),
		},
	}),
};