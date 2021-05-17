-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
_.Instances = { tier(1, {	-- Classic
	map(SCARLET_MONASTERY, {
		["description"] = "The Monastery was once a proud bastion of Lordaeron's priesthood - a center for learning and enlightenment. With the rise of the undead Scourge during the Third War, the peaceful Monastery was converted into a stronghold of the fanatical Scarlet Crusade. The Crusaders are intolerant of all non-human races, regardless of alliance or affiliation. They believe that any and all outsiders are potential carriers of the undead plague - and must be destroyed. Reports indicate that adventurers who enter the monastery are forced to contend with Scarlet Commander Mograine - who commands a large garrison of fanatically devoted warriors. However, the monastery's true master is High Inquisitor Whitemane - a fearsome priestess who possesses the ability to resurrect fallen warriors to do battle in her name.",
		["lvl"] = 25,
		["g"] = {
			n(QUESTS, {
				q(1113, {	-- Hearts of Zeal
					["sourceQuest"] = 1109,	-- Going, Going, Guano!
					["qg"] = 2055,	-- Master Apothecary Faranell <Royal Apothecary Society>
					["cost"] = {
						{ "i", 5805, 20 },	-- Heart of Zeal
					},
					["coord"] = { 48.82, 69.28, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1053, {	-- In the Name of the Light
					["qg"] = 3980,	-- Raleigh the Devout
					["sourceQuest"] = 1052,	-- Down the Scarlet Path (2/2)
					["coord"] = { 51.5, 58.4, HILLSBRAD_FOOTHILLS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						i(6830),	-- Bonebiter
						i(6831),	-- Black Menace
						i(6829),	-- Sword of Serenity
						i(11262),	-- Orb of Lorica
					},
				}),
				q(1048, {	-- Into The Scarlet Monastery
					["qg"] = 2425,	-- Varimathras
					["coord"] = { 56.3, 92.2, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						i(6802),	-- Sword of Omen
						i(6803),	-- Prophetic Cane
						i(10711),	-- Dragon's Blood Necklace
					},
				}),
			}),
			n(ZONEDROPS, {
				i(7759),	-- Archon Chestpiece
				i(7728),	-- Beguiler Robes
				i(7753),	-- Bloodspiller
				i(7729),	-- Chesterfall Musket
				i(7730),	-- Cobalt Crusher
				i(7752),	-- Dreamslayer
				i(7736),	-- Fight Club
				i(7755),	-- Flintrock Shoulders
				i(7754),	-- Harbinger Boots
				i(7786),	-- Headsplitter
				{
					["itemID"] = 5805,	-- Heart of Zeal
					["questID"] = 1113,	-- Hearts of Zeal
					["races"] = HORDE_ONLY,
				},
				i(2262),	-- Mark of Kern
				i(7787),	-- Resplendent Guardian
				i(7758),	-- Ruthless Shiv
				i(10329),	-- Scarlet Belt
				i(10332),	-- Scarlet Boots
				i(10328),	-- Scarlet Chestpiece
				i(10331),	-- Scarlet Gauntlets
				i(10333),	-- Scarlet Wristguards
				i(5756),	-- Sliverblade
				i(7761),	-- Steelclaw Reaver
				i(5819),	-- Sunblaze Coif
				i(1992),	-- Swampchill Fetish
				i(8225),	-- Tainted Pierce
				i(8226),	-- The Butcher
				i(7760),	-- Warchief Kilt
				i(7727),	-- Watchman Pauldrons
				i(7757),	-- Windweaver Staff
			}),
			n(-85, {	-- Graveyard
				n(QUESTS, {
					q(1051, {	-- Vorrel's Revenge
						["qg"] = 3981,	-- Vorrel Sengutz
						["cost"] = {
							{ "i", 5538, 1 },	-- Vorrel's Wedding Ring
						},
						["races"] = HORDE_ONLY,
						["lvl"] = 25,
						["groups"] = {
							{
								["itemID"] = 5538,	-- Vorrel's Wedding Ring
								["questID"] = 1051,	-- Vorrel's Revenge
								["qg"] = 3984,	-- Nancy Vishas
								["coord"] = { 32.3, 32.8, ALTERAC_MOUNTAINS },
								["races"] = HORDE_ONLY,
							},
							i(4643),	-- Grimsteel Cape
							i(7750),	-- Mantle of Woe
							i(7751),	-- Vorrel's Boots
						},
					}),
				}),
				n(RARES, {
					n(6488, {	-- Fallen Champion
						i(7690),	-- Ebon Vise
						i(7691),	-- Embalmed Shroud
						i(7689),	-- Morbid Dawn
					}),
					n(6490, {	-- Azshir the Sleepless
						i(7709),	-- Blighted Leggings
						i(7731),	-- Ghostshard Talisman
						i(7708),	-- Necrotic Wand
					}),
					n(6489, {	-- Ironspine
						i(7687),	-- Ironspine's Fist
						i(7688),	-- Ironspine's Ribcage
						i(7686),	-- Ironspine's Eye
					}),
				}),
				n(3983, {	-- Interrogator Vishas
					i(7683),	-- Bloody Brass Knuckles
					i(7682),	-- Torturing Poker
				}),
				n(4543, {	-- Bloodmage Thalnos
					i(7685),	-- Orb of the Forgotten Seer
					i(7684),	-- Bloodmage Mantle
				}),
			}),
			n(-86, {	-- Library
				["lvl"] = 28,
				["groups"] = {
					n(QUESTS, {
						q(1049, {	-- Compendium of the Fallen
							["qg"] = 3978,	-- Sage Truthseeker
							["cost"] = {
								{ "i", 5535, 1},	-- Compendium of the Fallen
							},
							["coord"] = { 34.6, 47.2, THUNDER_BLUFF },
							["maps"] = { THUNDER_BLUFF },
							["races"] = { ORC, TAUREN, TROLL },
							["lvl"] = 28,
							["description"] = "On one of the shelves on the left as you enter the final hallway leading to Doan.",
							["groups"] = {
								i(17508),	-- Forcestone Buckler
								i(7749),	-- Omega Orb
								i(7747),	-- Vile Protector
							},
						}),
						q(1050, {	-- Mythology of the Titans
							["qg"] = 3979,	-- Librarian Mae Paledust <Explorers' League>
							["coord"] = { 75.0, 12.5, IRONFORGE },
							["maps"] = { IRONFORGE },
							["cost"] = {
								{ "i", 5536, 1 },	-- Mythology of the Titans
							},
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 28,
							["groups"] = {
								i(7746),	-- Explorers' League Commendation
							},
						}),
						q(1951, {	-- Rituals of Power
							["qg"] = 6548,	-- Magus Tirth
							["sourceQuest"] = 1950,	-- Get the Scoop
							["coord"] = { 478.2, 75.8, THOUSAND_NEEDLES },
							["maps"] = { DUSTWALLOW_MARSH, THOUSAND_NEEDLES },
							["classes"] = { MAGE },
							["cost"] = {
								{ "i", 7274, 1 },	-- Rituals of Power
							},
							["lvl"] = 30,
						}),
						q(1160, {	-- Test of Lore
							["sourceQuest"] = 1159,	-- Test of Lore
							["qg"] = 4488,	-- Parqual Fintallas
							["coord"] = { 57.8, 65.4, UNDERCITY },
							["maps"] = { UNDERCITY },
							["cost"] = {
								{ "i", 5861, 1 },	-- Beginnings of the Undead Threat
							},
							["races"] = HORDE_ONLY,
							["lvl"] = 28,
						}),
					}),
					n(3974, {	-- Houndmaster Loksey
						i(7710),	-- Loksey's Training Stick
						i(7756),	-- Dog Training Gloves
						i(3456),	-- Dog Whistle
					}),
					{
						["itemID"] = 5861,	-- Beginnings of the Undead Threat
						["questID"] = 1160,	-- Test of Lore
						["description"] = "In the first cooridor with books, there are 2 pocket rooms, the first pocket room has a table with 2 clickable books on it.\n\nOne of them is a container.",
						["races"] = HORDE_ONLY,
					},
					{
						["itemID"] = 5536,	-- Mythology of the Titans
						["questID"] = 1050,	-- Mythology of the Titans
						["description"] = "In the hallway with the benches immediately to your left upon entering it.",
						["races"] = ALLIANCE_ONLY,
					},
					{
						["itemID"] = 5535,	-- Compendium of the Fallen
						["questID"] = 1049,	-- Compendium of the Fallen
						["description"] = "On one of the shelves on the left as you enter the final hallway leading to Doan.",
						["races"] = { ORC, TAUREN, TROLL },
					},
					n(6487, {	-- Arcanist Doan
						i(7714),	-- Hypnotic Blade
						i(7713),	-- Illusionary Rod
						i(7712),	-- Mantle of Doan
						i(7711),	-- Robe of Doan
						{
							["itemID"] = 7146,	-- The Scarlet Key
							["description"] = "Found in the chest after killing Arcanist Doan.",
							["provider"] = { "o", 103821 },	-- Doan's Strongbox
						},
					}),
				},
			}),
			n(-87, {	-- Armory
				["lvl"] = 35,
				["cost"] = {
					{ "i", 7146, 1 },	-- The Scarlet Key
				},
				["groups"] = {
					n(3975, {	-- Herod
						i(7717),	-- Ravager
						i(7719),	-- Raging Berserker's Helm
						i(7718),	-- Herod's Shoulder
						i(10330),	-- Scarlet Leggings
					}),
					n(6575, {	-- Scarlet Trainee
						i(23192),	-- Tabard of the Scarlet Crusade
					}),
				},
			}),
			n(-88, {	-- Cathedral
				["lvl"] = 37,
				["cost"] = {
					{ "i", 7146, 1 },	-- The Scarlet Key
				},
				["groups"] = {
					n(4542, {	-- High Inquisitor Fairbanks
						i(19507),	-- Inquisitor's Shawl
						i(19508),	-- Branded Leather Bracers
						i(19509),	-- Dusty Mail Boots
					}),
					n(3976, {	-- Scarlet Commander Mograine
						["g"] = {
							i(7726),	-- Aegis of the Scarlet Commander
							i(7724),	-- Gauntlets of Divinity
							i(7723),	-- Mograine's Might
							i(10330),	-- Scarlet Leggings
						}
					}),
					n(3977, {	-- High Inquisitor Whitemane
						i(7721),	-- Hand of Righteousness
						i(7722),	-- Triune Amulet
						i(7720),	-- Whitemane's Chapeau
					}),
				},
			}),
		},
	}),
})};