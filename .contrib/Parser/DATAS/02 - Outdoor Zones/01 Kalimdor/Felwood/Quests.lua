---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(FELWOOD, {
			n(QUESTS, {
				q(5242, {	-- A Final Blow
					["qg"] = 10922,	-- Greta Mosshoof
					["sourceQuest"] = 5165,	-- Dousing the Flames of Protection
					["coord"] = { 51.2, 82.2, FELWOOD },
					["cost"] = {
						{ "i", 13207, 1 },	-- Shadow Lord Fel'dan's Head
					},
					["lvl"] = 48,
					["g"] = {
						{
							["itemID"] = 13207,	-- Shadow Lord Fel'dan's Head
							["questID"] = 5242,	-- A Final Blow
							["cr"] = 9517,	-- Shadow Lord Fel'dan
							["coord"] = { 38.8, 46.8, FELWOOD },
						},
						i(15707),	-- Brantwood Sash
						i(15708),	-- Blight Leather Gloves
						i(15709),	-- Gearforge Girdle
					},
				}),
				q(6162, {	-- A Husband's Last Battle
					["qg"] = 9620,	-- Dreka'Sur
					["coord"] = { 34.8, 52.6, FELWOOD },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15879, 1 },	-- Overlord Ror's Claw
					},
					["lvl"] = 46,
					["groups"] = {
						{
							["itemID"] = 15879,	-- Overlord Ror's Claw
							["questID"] = 6162,	-- A Husband's Last Battle
							["cr"] = 9464,	-- Overlord Ror
							["coord"] = { 48.6, 93.6, FELWOOD },
						},
					},
				}),
				q(5202, {	-- A Strange Red Key
					["provider"] = { "i", 13140 },	-- Blood Red Key
					["crs"] = {
						7118,	-- Jaedenar Darkweaver
						7114,	-- Jaedenar Enforcer
						9862,	-- Jaedenar Legionnaire
						7120,	-- Jaedenar Warlock
						14523,	-- Ulathek
						14522,	-- Ur'dan
					},
					["lvl"] = 49,
				}),
				q(8419, {	-- An Imp's Request
					["qgs"] = {
						3326,	-- Zevrost <Warlock Trainer>
						5172,	-- Briarthorn <Warlock Trainer>
						461,	-- Demisette Cloyce <Warlock Trainer>
						4563,	-- Kaal Soulreaper <Warlock Trainer>
					},
					["coords"] = {
						{ 48.4, 45.6, ORGRIMMAR },
						{ 50.2, 6.0, IRONFORGE },
						{ 28.4, 78.2, STORMWIND_CITY },
						{ 86.0, 15.6, UNDERCITY },
					},
					["maps"] = { ORGRIMMAR, IRONFORGE, STORMWIND_CITY, UNDERCITY },
					["altQuests"] = { 8420 },	-- Hot and Itchy
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 14256, 1 },	-- Felcloth
					},
					["lvl"] = 50,
				}),
				q(4261, {	-- Ancient Spirit
					["qg"] = 9598,	-- Arei
					["sourceQuest"] = 4442,	-- Purified!
					["coord"] = { 49.4, 14.4, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11445, 1 },	-- Flute of the Ancients
					},
					["lvl"] = 49,
					["g"] = {
						i(11873),	-- Ethereal Mist Cape
						i(11874),	-- Clouddrift Mantle
					},
				}),
				q(4005, {	-- Aquementas
					["qg"] = 9116,	-- Eridan Bluewind <Emerald Circle>
					["sourceQuest"] = 4084,	-- Silver Heart
					["coord"] = { 51.2, 81.6, FELWOOD },
					["maps"] = { TANARIS, UNGORO_CRATER },
					["cost"] = {
						{ "i", 11522, 1 },	-- Silver Totem of Aquementas
					},
					["lvl"] = 47,
					["groups"] = {
						{
							["itemID"] = 11617,	-- Eridan's Supplies
							["description"] = "Once you take out all of the items, you can safely delete this item from your bags.",
							["groups"] = {
								{
									["itemID"] = 11169,	-- Book of Aquor
									["cr"] = 9453,	-- Aquementas
									["coord"] = { 70, 49, TANARIS },
									["groups"] = {
										{
											["itemID"] = 11522,	-- Silver Totem of Aquementas
											["questID"] = 4005,	-- Aquementas
										},
									},
								},
							},
						},
					},
				}),
				q(5159, {	-- Cleansed Water Returns to Felwood
					["qg"] = 5901,	-- Islen Waterseer
					["sourceQuest"] = 5158,	-- Seeking Spiritual Aid
					["coord"] = { 65.8, 43.8, THE_BARRENS },
					["maps"] = { THE_BARRENS },
					["cost"] = {
						{ "i", 12906, 1 },	-- Purified Moonwell Water
					},
					["lvl"] = 48,
				}),
				q(4101, {	-- Cleansing Felwood (A)
					["qg"] = 9528,	-- Arathandris Silversky
					["coord"] = { 54.2, 86.7, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11503, 15 },	-- Blood Amber
					},
					["lvl"] = 48,
				}),
				q(4102, {	-- Cleansing Felwood (H)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["coord"] = { 46.8, 83, FELWOOD },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11503, 15 },	-- Blood Amber
					},
					["lvl"] = 48,
				}),
				q(5157, {	-- Collection of the Corrupt Water
					["qg"] = 10922,	-- Greta Mosshoof
					["sourceQuest"] = 5155,	-- Forces of Jaedenar
					["coord"] = { 51.2, 82.2, FELWOOD },
					["cost"] = {
						{ "i", 12907, 1 },	-- Corrupt Moonwell Water
					},
					["lvl"] = 48,
					["groups"] = {
						{
							["itemID"] = 12922,	-- Empty Canteen
							["coord"] = { 35.2, 59.8, FELWOOD },
							["groups"] = {
								{
									["itemID"] = 12907,	-- Corrupt Moonwell Water
									["questID"] = 5157,	-- Collection of the Corrupt Water
								},
							},
						},
					},
				}),
				q(4119, {	-- Corrupted Night Dragon
					["provider"] = { "o", 164885 },	-- Corrupted Night Dragon
					["coord"] = { 40.7, 78.3, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 4 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11952),	-- Night Dragon's Breath
					},
				}),
				q(4447, {	-- Corrupted Night Dragon
					["provider"] = { "o", 173324 },	-- Corrupted Night Dragon
					["coord"] = { 50.6, 30.4, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 4 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11952),	-- Night Dragon's Breath
					},
				}),
				q(4448, {	-- Corrupted Night Dragon
					["provider"] = { "o", 174608 },	-- Corrupted Night Dragon
					["coord"] = { 42.5, 13.9, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 4 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11952),	-- Night Dragon's Breath
					},
				}),
				q(4462, {	-- Corrupted Night Dragon
					["provider"] = { "o", 174684 },	-- Corrupted Night Dragon
					["coord"] = { 35.1, 59, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 4 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11952),	-- Night Dragon's Breath
					},
				}),
				q(4506, {	-- Corrupted Sabers
					["qg"] = 9996,	-- Winna Hazzard
					["sourceQuest"] = 4504,	-- Well of Corruption
					["coord"] = { 34.2, 52.4, FELWOOD },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12565, 1 },	-- Winna's Kitten Carrier
					},
					["lvl"] = 49,
				}),
				q(2523, {	-- Corrupted Songflower
					["provider"] = { "o", 171942 },	-- Corrupted Songflower
					["coord"] = { 48.3, 75.6, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(2878, {	-- Corrupted Songflower
					["provider"] = { "o", 174594 },	-- Corrupted Songflower
					["coord"] = { 63.3, 22.6, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(3363, {	-- Corrupted Songflower
					["provider"] = { "o", 174595 },	-- Corrupted Songflower
					["coord"] = { 63.9, 6.1, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(4113, {	-- Corrupted Songflower
					["provider"] = { "o", 164886 },	-- Corrupted Songflower
					["coord"] = { 52.9, 87.8, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(4114, {	-- Corrupted Songflower
					["provider"] = { "o", 174596 },	-- Corrupted Songflower
					["coord"] = { 55.8, 10.5, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(4116, {	-- Corrupted Songflower
					["provider"] = { "o", 174597 },	-- Corrupted Songflower
					["coord"] = { 50.6, 13.9, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(4118, {	-- Corrupted Songflower
					["provider"] = { "o", 174598 },	-- Corrupted Songflower
					["coord"] = { 34.4, 52.2, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(4401, {	-- Corrupted Songflower
					["provider"] = { "o", 171939 },	-- Corrupted Songflower
					["coord"] = { 46, 85.2, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(4464, {	-- Corrupted Songflower
					["provider"] = { "o", 174712 },	-- Corrupted Songflower
					["coord"] = { 40.2, 56.6, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(4465, {	-- Corrupted Songflower
					["provider"] = { "o", 174713 },	-- Corrupted Songflower
					["coord"] = { 40.1, 44.4, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(4117, {	-- Corrupted Whipper Root
					["provider"] = { "o", 164888 },	-- Corrupted Whipper Root
					["coord"] = { 40.2, 85.2, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 3 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11951),	-- Whipper Root Tuber
					},
				}),
				q(4443, {	-- Corrupted Whipper Root
					["provider"] = { "o", 173284 },	-- Corrupted Whipper Root
					["coord"] = { 50.6, 18.2, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 3 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11951),	-- Whipper Root Tuber
					},
				}),
				q(4444, {	-- Corrupted Whipper Root
					["provider"] = { "o", 174605 },	-- Corrupted Whipper Root
					["coord"] = { 49.4, 12.2, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 3 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11951),	-- Whipper Root Tuber
					},
				}),
				q(4445, {	-- Corrupted Whipper Root
					["provider"] = { "o", 174606 },	-- Corrupted Whipper Root
					["coord"] = { 40.7, 19.2, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 3 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11951),	-- Whipper Root Tuber
					},
				}),
				q(4446, {	-- Corrupted Whipper Root
					["provider"] = { "o", 174607 },	-- Corrupted Whipper Root
					["coord"] = { 43, 46.9, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 3 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11951),	-- Whipper Root Tuber
					},
				}),
				q(4461, {	-- Corrupted Whipper Root
					["provider"] = { "o", 174686 },	-- Corrupted Whipper Root
					["coord"] = { 34.1, 60.3, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 3 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11951),	-- Whipper Root Tuber
					},
				}),
				q(996, {	-- Corrupted Windblossom
					["provider"] = { "o", 174600 },	-- Corrupted Windblossom
					["coord"] = { 57.5, 20, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(998, {	-- Corrupted Windblossom
					["provider"] = { "o", 174599 },	-- Corrupted Windblossom
					["coord"] = { 55.8, 7, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(1514, {	-- Corrupted Windblossom
					["provider"] = { "o", 173327 },	-- Corrupted Windblossom
					["coord"] = { 55.2, 23.5, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4115, {	-- Corrupted Windblossom
					["provider"] = { "o", 164887 },	-- Corrupted Windblossom
					["coord"] = { 50, 80, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4221, {	-- Corrupted Windblossom
					["provider"] = { "o", 174604 },	-- Corrupted Windblossom
					["coord"] = { 39, 59.1, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4222, {	-- Corrupted Windblossom
					["provider"] = { "o", 174603 },	-- Corrupted Windblossom
					["coord"] = { 34.4, 48.8, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4343, {	-- Corrupted Windblossom
					["provider"] = { "o", 174602 },	-- Corrupted Windblossom
					["coord"] = { 38.8, 21.9, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4403, {	-- Corrupted Windblossom
					["provider"] = { "o", 174601 },	-- Corrupted Windblossom
					["coord"] = { 45.4, 18.3, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4466, {	-- Corrupted Windblossom
					["provider"] = { "o", 174708 },	-- Corrupted Windblossom
					["coord"] = { 36.5, 61.9, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4467, {	-- Corrupted Windblossom
					["provider"] = { "o", 174709 },	-- Corrupted Windblossom
					["coord"] = { 44.8, 41.7, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(8461, {	-- Deadwood of the North
					["qg"] = 15395,	-- Nafien
					["coord"] = { 64.8, 8.2, FELWOOD },
					["lvl"] = 45,
					["groups"] = {
						i(21317),	-- Helm of the Pathfinder
						i(21316),	-- Leggings of the Ursa
					},
				}),
				q(8470, {	-- Deadwood Ritual Totem
					["provider"] = { "i", 20741 },	-- Deadwood Ritual Totem
					["minReputation"] = { 576, NEUTRAL },	-- Timbermaw Hold
					["crs"] = {
						7157,	-- Deadwood Avenger
						7156,	-- Deadwood Den Watcher
						7158,	-- Deadwood Shaman
					},
					["lvl"] = 45,
				}),
				q(5165, {	-- Dousing the Flames of Protection
					["qg"] = 10922,	-- Greta Mosshoof
					["sourceQuest"] = 5159,	-- Cleansed Water Returns to Felwood
					["coord"] = { 51.2, 82.2, FELWOOD },
					["cost"] = {
						{ "i", 12906, 1 },	-- Purified Moonwell Water
					},
					["lvl"] = 48,
				}),
				q(8466, {	-- Feathers for Grazle
					["qg"] = 11554,	-- Grazle
					["sourceQuest"] = 8460,	-- Timbermaw Ally
					["coord"] = { 50.9, 85.0, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21377, 5 },	-- Deadwood Headdress Feather
					},
					["lvl"] = 45,
				}),
				q(8467, {	-- Feathers for Nafien
					["qg"] = 15395,	-- Nafien
					["sourceQuest"] = 8460,	-- Timbermaw Ally
					["coord"] = { 64.8, 8.2, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21377, 5 },	-- Deadwood Headdress Feather
					},
					["lvl"] = 45,
				}),
				q(4441, {	-- Felbound Ancients
					["qg"] = 9116,	-- Eridan Bluewind
					["sourceQuest"] = 939,	-- Flute of Xavaric
					["coord"] = { 51.4, 81.5, FELWOOD },
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5646, 1 },	-- Vial of Blessed Water
					},
					["lvl"] = 49,
					["groups"] = {
						{
							["itemID"] = 11682,	-- Eridan's Vial
							["coord"] = { 39, 84, DARNASSUS },
							["groups"] = {
								{
									["itemID"] = 5646,	-- Vial of Blessed Water
									["questID"] = 4441,	-- Felbound Ancients
								},
							},
						},
					},
				}),
				q(7602, {	-- Flawless Fel Essence
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["sourceQuest"] = 7601,	-- What Niby Commands
					["coord"] = { 41.6, 44.8, FELWOOD },
					["maps"] = { AZSHARA, BLASTED_LANDS },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18624, 1 },	-- Flawless Fel Essence (Azshara)
						{ "i", 18623, 1 },	-- Flawless Fel Essence (Dark Portal)
						{ "i", 18622, 1 },	-- Flawless Fel Essence (Jaedenar)
					},
					["lvl"] = 50,
				}),
				q(939, {	-- Flute of Xavaric
					["provider"] = { "i", 11668 },	-- Flute of Xavaric
					["sourceQuest"] = 4906,	-- Further Corruption
					["coord"] = { 39.6, 22.2, FELWOOD },
					["cr"] = 10648,	-- Xavaric
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11674, 5 },	-- Jadefire Felbind
					},
					["lvl"] = 49,
				}),
				q(5155, {	-- Forces of Jaedenar
					["qg"] = 10922,	-- Greta Mosshoof
					["coord"] = { 51.2, 82.2, FELWOOD },
					["lvl"] = 48,
				}),
				q(4906, {	-- Further Corruption
					["qg"] = 9116,	-- Eridan Bluewind
					["sourceQuest"] = 4421,	-- Corruption of the Jadefire
					["coord"] = { 51.4, 81.5, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["g"] = {
						i(11875),	-- Breezecloud Bracers
					},
				}),
				q(4883, {	-- Guarding Secrets (2/2)
					["qg"] = 10306,	-- Trull Failbane
					["sourceQuest"] = 4882,	-- Guarding Secrets (1/2)
					["coord"] = { 34.6, 52.6, FELWOOD },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12558, 1 },	-- Blue-feathered Necklace
					},
					["lvl"] = 52,
					["g"] = {
						i(15796),	-- Seaspray Bracers
						i(15797),	-- Shining Armplates
					},
				}),
				q(8420, {	-- Hot and Itchy
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["altQuests"] = { 8419 },	-- An Imp's Request
					["coord"] = { 41.6, 45.0, FELWOOD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 14256, 1 },	-- Felcloth
					},
					["lvl"] = 50,
				}),
				q(7603, {	-- Kroshius' Infernal Core
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["sourceQuest"] = 7602,	-- Flawless Fel Essence
					["coord"] = { 41.6, 45.0, FELWOOD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18625, 1 },	-- Kroshius' Infernal Core
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 18626,	-- Fel Fire
							["coord"] = { 45.4, 35.4, FELWOOD },
							["cr"] = 14467,	-- Kroshius
							["groups"] = {
								{
									["itemID"] = 18625,	-- Kroshius' Infernal Core
									["questID"] = 7603,	-- Kroshius' Infernal Core
								},
							},
						},
						recipe(1122),	-- Inferno
						i(18762),	-- Shard of the Green Flame
					},
				}),
				q(5085, {	-- Mystery Goo
					["provider"] = { "o", 176091 },	-- Deadwood Cauldron
					["sourceQuest"] = 5084,	-- Falling to Corruption
					["coord"] = { 60.2, 5.9, FELWOOD },
					["cost"] = {
						{ "i", 12813, 1 },	-- Flask of Mystery Goo
					},
					["lvl"] = 52,
				}),
				q(4442, {	-- Purified!
					["qg"] = 9116,	-- Eridan Bluewind <Emerald Circle>
					["sourceQuest"] = 4441,	-- Felbound Ancients
					["coord"] = { 51.2, 81.6, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["g"] = {
						{
							["itemID"] = 11445,	-- Flute of the Ancients
							["description"] = "You need to save this flute for the 'Ancient Spirit' escort quest, then you can safely discard it.",
						},
					},
				}),
				q(5203, {	-- Rescue From Jaedenar
					["qg"] = 11016,	-- Captured Arko'narin
					["sourceQuest"] = 5202,	-- A Strange Red Key
					["coord"] = { 36.2, 55.4, FELWOOD },
					["lvl"] = 49,
				}),
				q(5204, {	-- Retribution of the Light
					["qg"] = 11019,	-- Jessir Moonbow
					["sourceQuest"] = 5203,	-- Rescue from Jaedenar
					["coord"] = { 51.3, 82.0, FELWOOD },
					["cr"] = 9518,	-- Rakaiah
					["lvl"] = 49,
				}),
				q(6031, {	-- Runecloth
					["qg"] = 11557,	-- Meilosh
					["coord"] = { 65.6, 2.8, FELWOOD },
					["minReputation"] = { 576, FRIENDLY },	-- Timbermaw Hold
					["cost"] = {
						{ "i", 14047, 30 },	-- Runecloth
					},
					["lvl"] = 40,
					["g"] = {
						i(15822),	-- Shadowskin Spaulders
						i(15823),	-- Bricksteel Gauntlets
					},
				}),
				q(6032, {	-- Sacred Cloth
					["qg"] = 11557,	-- Meilosh
					["requireSkill"] = TAILORING,
					["minReputation"] = { 576, FRIENDLY },	-- Timbermaw Hold
					["coord"] = { 65.6, 2.8, FELWOOD },
					["maps"] = { FELWOOD },
					["cost"] = {
						{ "i", 14342, 2 },	-- Mooncloth
					},
					["lvl"] = 40,
					["groups"] = {
						recipe(19435),	-- Mooncloth Boots
					},
				}),
				q(5886, {	-- Salve via Disenchanting (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["requireSkill"] = ENCHANTING,
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11174, 1 },	-- Lesser Nether Essence
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4107, {	-- Salve via Disenchanting (2/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 5886,	-- Salve via Disenchanting (1/2)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["requireSkill"] = ENCHANTING,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11174, 1 },	-- Lesser Nether Essence
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5891, {	-- Salve via Disenchanting (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["coord"] = { 46.8, 83, FELWOOD },
					["requireSkill"] = ENCHANTING,
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11174, 1 },	-- Lesser Nether Essence
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4112, {	-- Salve via Disenchanting (2/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 4112,	-- Salve via Disenchanting (1/2)
					["coord"] = { 46.8, 83, FELWOOD },
					["requireSkill"] = ENCHANTING,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11174, 1 },	-- Lesser Nether Essence
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5884, {	-- Salve via Gathering (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["requireSkill"] = HERBALISM,
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11514, 4 },	-- Fel Creep
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4105, {	-- Salve via Gathering (2/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 5884,	-- Salve via Gathering (1/2)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["requireSkill"] = HERBALISM,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11514, 4 },	-- Fel Creep
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5889, {	-- Salve via Gathering (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["coord"] = { 46.8, 83, FELWOOD },
					["requireSkill"] = HERBALISM,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11514, 4 },	-- Fel Creep
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4110, {	-- Salve via Gathering (2/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 5889,	-- Salve via Gathering (1/2)
					["coord"] = { 46.8, 83, FELWOOD },
					["requireSkill"] = HERBALISM,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11514, 4 },	-- Fel Creep
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5882, {	-- Salve via Hunting (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11515, 6 },	-- Corrupted Soul Shard
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4103, {	-- Salve via Hunting (2/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 5882,	-- Salve via Hunting (1/2)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11515, 6 },	-- Corrupted Soul Shard
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5887, {	-- Salve via Hunting (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["coord"] = { 46.8, 83, FELWOOD },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11515, 6 },	-- Corrupted Soul Shard
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4108, {	-- Salve via Hunting (2/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 5887,	-- Salve via Hunting (1/2)
					["coord"] = { 46.8, 83, FELWOOD },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11515, 6 },	-- Corrupted Soul Shard
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5883, {	-- Salve via Mining (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["requireSkill"] = MINING,
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11513, 4 },	-- Tainted Vitriol
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4104, {	-- Salve via Mining (2/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 5883,	-- Salve via Mining (1/2)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["requireSkill"] = MINING,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11513, 4 },	-- Tainted Vitriol
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5888, {	-- Salve via Mining (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["coord"] = { 46.8, 83, FELWOOD },
					["requireSkill"] = MINING,
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11513, 4 },	-- Tainted Vitriol
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4109, {	-- Salve via Mining (2/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 5888,	-- Salve via Mining (1/2)
					["coord"] = { 46.8, 83, FELWOOD },
					["requireSkill"] = MINING,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11513, 4 },	-- Tainted Vitriol
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5885, {	-- Salve via Skinning (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["requireSkill"] = SKINNING,
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11512, 5 },	-- Patch of Tainted Skin
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4106, {	-- Salve via Skinning (2/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 5885,	-- Salve via Skinning (1/2)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["requireSkill"] = SKINNING,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11512, 5 },	-- Patch of Tainted Skin
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5890, {	-- Salve via Skinning (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["coord"] = { 46.8, 83, FELWOOD },
					["requireSkill"] = SKINNING,
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11512, 5 },	-- Patch of Tainted Skin
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4111, {	-- Salve via Skinning (2/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 5890,	-- Salve via Skinning (1/2)
					["coord"] = { 46.8, 83, FELWOOD },
					["requireSkill"] = SKINNING,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11512, 5 },	-- Patch of Tainted Skin
					},
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5158, {	-- Seeking Spiritual Aid
					["qg"] = 10922,	-- Greta Mosshoof
					["sourceQuest"] = 5157,	-- Collection of the Corrupt Water
					["coord"] = { 51.2, 82.2, FELWOOD },
					["cost"] = {
						{ "i", 12907, 1 },	-- Corrupt Moonwell Water
					},
					["lvl"] = 48,
				}),
				q(4084, {	-- Silver Heart
					["qg"] = 9116,	-- Eridan Bluewind <Emerald Circle>
					["sourceQuest"] = 3942,	-- Linken's Memory
					["coord"] = { 51.2, 81.6, FELWOOD },
					["cost"] = {
						{ "i", 11172, 10 },	-- Silvery Claws
						{ "i", 11173, 1 },	-- Irontree Heart
					},
					["lvl"] = 47,
				}),
				q(8462, {	-- Speak to Nafien
					["qg"] = 11554,	-- Grazle
					["sourceQuest"] = 8460,	-- Timbermaw Ally
					["coord"] = { 50.9, 85.0, FELWOOD },
					["lvl"] = 45,
				}),
				q(8465, {	-- Speak to Salfa
					["qg"] = 15395,	-- Nafien
					["sourceQuest"] = 8461,	-- Deadwood of the North
					["coord"] = { 64.8, 8.2, FELWOOD },
					["lvl"] = 45,
				}),
				q(8484, {	-- The Brokering of Peace (A)
					["qg"] = 11555,	-- Gorn One Eye
					["minReputation"] = { 576, EXALTED },	-- Timbermaw Hold
					["coord"] = { 65.2, 2.6, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 21155, 1 },	-- Timbermaw Offering of Peace
					},
					["lvl"] = 45,
				}),
				q(8485, {	-- The Brokering of Peace (H)
					["qg"] = 11555,	-- Gorn One Eye
					["minReputation"] = { 576, EXALTED },	-- Timbermaw Hold
					["coord"] = { 65.2, 2.6, FELWOOD },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 21155, 1 },	-- Timbermaw Offering of Peace
					},
					["lvl"] = 45,
				}),
				q(4421, {	-- The Corruption of the Jadefire
					["qg"] = 9116,	-- Eridan Bluewind
					["coord"] = { 51.4, 81.5, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
				}),
				q(5385, {	-- The Remains of Trey Lightforge
					["qg"] = 11020,	-- Remains of Trey Lightforge
					["sourceQuest"] = 5204,	-- Retribution of the Light
					["coord"] = { 38.4, 50.4, FELWOOD },
					["cost"] = {
						{ "i", 13562, 1 },	-- Remains of Trey Lightforge
					},
					["lvl"] = 49,
					["g"] = {
						i(15706),	-- Hunt Tracker Blade
						i(15705),	-- Tidecrest Blade
					},
				}),
				q(8481, {	-- The Root of All Evil
					["qg"] = 11555,	-- Gorn One Eye
					["minReputation"] = { 576, EXALTED },	-- Timbermaw Hold
					["coord"] = { 65.2, 2.6, FELWOOD },
					["maps"] = { WINTERSPRING },
					["cost"] = {
						{ "i", 21145, 1 },	-- Essence of Xandivious
					},
					["lvl"] = 45,
					["g"] = {
						{
							["itemID"] = 21144, 	-- Demon Summoning Torch
							["coord"] = { 68.0, 37.6, WINTERSPRING },
							["cr"] = 15623,	-- Xandivious
							["groups"] = {
								{
									["itemID"] = 21145,	-- Essence of Xandivious
									["questID"] = 8481,	-- The Root of All Evil
								},
							},
						},
						i(21326),	-- Defender of the Timbermaw
					},
				}),
				q(8421, {	-- The Wrong Stuff
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["sourceQuests"] = {
						8419,	-- An Imp's Request
						8420,	-- Hot and Itchy
					},
					["coord"] = { 41.6, 45.0, FELWOOD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 20613, 1 },	-- Rotting Wood
						{ "i", 20614, 1 },	-- Bloodvenom Essence
					},
					["lvl"] = 50,
				}),
				q(8460, {	-- Timbermaw Ally
					["qg"] = 11554,	-- Grazle
					["altQuests"] = { 6131 },	-- Timbermaw Ally (old version, deprecated)
					["coord"] = { 50.9, 85.0, FELWOOD },
					["lvl"] = 45,
					["g"] = {
						i(21311),	-- Earth Warder's Vest
						i(21312),	-- Belt of the Den Watcher
					},
				}),
				q(5249, {	-- To Winterspring!
					["qg"] = 10924,	-- Ivy Leafrunner
					["coord"] = { 50.8, 81.6, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 53,
				}),
				q(7624, {	-- Ulathek the Traitor
					["qg"] = 9516,	-- Lord Banehollow
					["sourceQuest"] = 7623,	-- Lord Banehollow
					["coords"] = { 36.0, 44.6, FELWOOD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18802, 1 },	-- Shadowy Potion
						{ "i", 18719, 1 },	-- The Traitor's Heart
					},
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 18719,	-- The Traitor's Heart
							["questID"] = 7624,	-- Ulathek the Traitor
							["cr"] = 14523,	-- Ulathek
							["coord"] = { 40.6, 48.4, FELWOOD },
						},
					},
				}),
				q(5156, {	-- Verifying the Corruption
					["qg"] = 10921,	-- Taronn Redfeather
					["coord"] = { 50.9, 81.6, FELWOOD },
					["lvl"] = 48,
				}),
				q(4505, {	-- Well of Corruption
					["qg"] = 9996,	-- Winna Hazzard
					["sourceQuest"] = 6605,	-- A Strange One
					["coord"] = { 34.2, 52.4, FELWOOD },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12567, 1 },	-- Filled Flasket
					},
					["lvl"] = 49,
					["groups"] = {
						{
							["itemID"] = 12566,	-- Hardened Flasket
							["coord"] = { 32, 66, FELWOOD },
							["groups"] = {
								{
									["itemID"] = 12567,	-- Filled Flasket
									["questID"] = 4505,	-- Well of Corruption
								},
							},
						},
					},
				}),
				q(7601, {	-- What Niby Commands
					["qg"] = 14469,	-- Niby the Almighty
					["coord"] = { 41.4, 44.8, FELWOOD },
					["classes"] = { WARLOCK },
					["lvl"] = 50,
				}),
				q(4521, {	-- Wild Guardians (1/3)
					["qg"] = 10306,	-- Trull Failbane
					["coord"] = { 34.6, 52.6, FELWOOD },
					["maps"] = { WINTERSPRING },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
				}),
				q(4741, {	-- Wild Guardians (2/3)
					["qg"] = 10306,	-- Trull Failbane
					["sourceQuest"] = 4521,	-- Wild Guardians (1/3)
					["coord"] = { 34.6, 52.6, FELWOOD },
					["maps"] = { WINTERSPRING },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
				}),
				q(4721, {	-- Wild Guardians (3/3)
					["qg"] = 10306,	-- Trull Failbane
					["sourceQuest"] = 4741,	-- Wild Guardians (2/3)
					["coord"] = { 34.6, 52.6, FELWOOD },
					["maps"] = { WINTERSPRING },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
				}),
				q(7625, {	-- Xorothian Stardust
					["qg"] = 9516,	-- Lord Banehollow
					["sourceQuest"] = 7624,	-- Ulathek the Traitor
					["coords"] = { 36.0, 44.6, FELWOOD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18802, 1 },	-- Shadowy Potion
						{ "i", 18687, 1 },	-- Xorothian Stardust
					},
					["lvl"] = 60,
				}),
			}),
		}),
	}),
};