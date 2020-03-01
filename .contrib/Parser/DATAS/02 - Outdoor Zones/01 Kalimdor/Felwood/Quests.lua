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
					["coord"] = { 51.2, 82.2, FELWOOD },
					["races"] = HORDE_ONLY,
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
				q(4261, {	-- Ancient Spirit
					["qg"] = 9598,	-- Arei
					["sourceQuest"] = 4442,	-- Purified!
					["coord"] = { 49.4, 14.4, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["g"] = {
						i(11873),	-- Ethereal Mist Cape
						i(11874),	-- Clouddrift Mantle
					},
				}),
				q(4101, {	-- Cleansing Felwood (A)
					["lvl"] = 48,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9528,	-- Arathandris Silversky
					["cost"] = {
						{ "i", 11503, 15 },	-- Blood Amber
					},
					["coord"] = { 54.2, 86.7, FELWOOD },
				}),
				q(4102, {	-- Cleansing Felwood (H)
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["qg"] = 9529,	-- Maybess Riverbreeze
					["cost"] = {
						{ "i", 11503, 15 },	-- Blood Amber
					},
				}),
				q(5157, {	-- Collection of the Corrupt Water
					["lvl"] = 48,
					["qg"] = 10922,	-- Greta Mosshoof
					["sourceQuest"] = 5155,	-- Forces of Jaedenar
					["coord"] = { 51.2, 82.2, FELWOOD },
				}),
				q(4447, {	-- Corrupted Night Dragon
					["lvl"] = 48,
					["repeatable"] = true,
					["provider"] = { "o", 164885 },	-- Corrupted Night Dragon
				}),
				q(4448, {	-- Corrupted Night Dragon
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(4462, {	-- Corrupted Night Dragon
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(4119, {	-- Corrupted Night Dragon
					["lvl"] = 48,
					["repeatable"] = true,
					["provider"] = { "o", 164885 },	-- Corrupted Night Dragon
				}),
				q(4506, {	-- Corrupted Sabers
					["lvl"] = 49,
					["races"] = HORDE_ONLY,
					["qg"] = 9996,	-- Winna Hazzard
					["sourceQuest"] = 4504,	-- Well of Corruption
				}),
				q(2878, {	-- Corrupted Songflower
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(3363, {	-- Corrupted Songflower
					["lvl"] = 48,
					["repeatable"] = true,
					["provider"] = { "o", 164886 },	-- Corrupted Songflower
				}),
				q(4401, {	-- Corrupted Songflower
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(4465, {	-- Corrupted Songflower
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(4464, {	-- Corrupted Songflower
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(4116, {	-- Corrupted Songflower
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(4118, {	-- Corrupted Songflower
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(4114, {	-- Corrupted Songflower
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(4113, {	-- Corrupted Songflower
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(2523, {	-- Corrupted Songflower
					["lvl"] = 48,
					["repeatable"] = true,
					["provider"] = { "o", 164886 },	-- Corrupted Songflower
				}),
				q(4461, {	-- Corrupted Whipper Root
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(4446, {	-- Corrupted Whipper Root
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(4444, {	-- Corrupted Whipper Root
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(4443, {	-- Corrupted Whipper Root
					["lvl"] = 48,
					["repeatable"] = true,
					["provider"] = { "o", 164888 },	-- Corrupted Whipper Root
				}),
				q(4445, {	-- Corrupted Whipper Root
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(4117, {	-- Corrupted Whipper Root
					["lvl"] = 48,
					["repeatable"] = true,
					["provider"] = { "o", 164888 },	-- Corrupted Whipper Root
				}),
				q(4222, {	-- Corrupted Windblossom
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(4115, {	-- Corrupted Windblossom
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(4343, {	-- Corrupted Windblossom
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(4221, {	-- Corrupted Windblossom
					["lvl"] = 48,
					["repeatable"] = true,
					["provider"] = { "o", 174604 },	-- Corrupted Windblossom
				}),
				q(4467, {	-- Corrupted Windblossom
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(4403, {	-- Corrupted Windblossom
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(4466, {	-- Corrupted Windblossom
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(1514, {	-- Corrupted Windblossom
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(998, {	-- Corrupted Windblossom
					["lvl"] = 48,
					["repeatable"] = true,
					["provider"] = { "o", 164887 },	-- Corrupted Windblossom
				}),
				q(996, {	-- Corrupted Windblossom
					["lvl"] = 48,
					["repeatable"] = true,
					["provider"] = { "o", 164887 },	-- Corrupted Windblossom
				}),
				q(8461, {	-- Deadwood of the North
					["qg"] = 15395,	-- Nafien
					["lvl"] = 45,
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
					["lvl"] = 48,
					["qg"] = 10922,	-- Greta Mosshoof
					["sourceQuest"] = 5159,	-- Cleansed Water Returns to Felwood
					["coord"] = { 51.2, 82.2, FELWOOD },
				}),
				q(8466, {	-- Feathers for Grazle
					["lvl"] = 45,
					["qg"] = 11554,	-- Grazle
					["repeatable"] = true,
					["sourceQuest"] = 8460,	-- Timbermaw Ally
					["cost"] = {
						{ "i", 21377, 5 },	-- Deadwood Headdress Feather
					},
					["coord"] = { 50.9, 85.0, FELWOOD },
				}),
				q(8467, {	-- Feathers for Nafien
					["lvl"] = 45,
					["qg"] = 15395,	-- Nafien
					["repeatable"] = true,
					["sourceQuest"] = 8460,	-- Timbermaw Ally
				}),
				q(4441, {	-- Felbound Ancients
					["lvl"] = 49,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9116,	-- Eridan Bluewind
					["sourceQuest"] = 939,	-- Flute of Xavaric
					["coord"] = { 51.4, 81.5, FELWOOD },
				}),
				q(7602, {	-- Flawless Fel Essence
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["sourceQuest"] = 7601,	-- What Niby Commands
					["coord"] = { 41.6, 44.8, FELWOOD },
					["maps"] = { AZSHARA, BLASTED_LANDS },
					["races"] = { WARLOCK },
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
					["lvl"] = 49,
				}),
				q(5155, {	-- Forces of Jaedenar
					["lvl"] = 48,
					["qg"] = 10922,	-- Greta Mosshoof
					["coord"] = { 51.2, 82.2, FELWOOD },
				}),
				q(4906, {	-- Further Corruption
					["lvl"] = 49,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9116,	-- Eridan Bluewind
					["sourceQuest"] = 4421,	-- Corruption of the Jadefire
					["g"] = {
						i(11875),	-- Breezecloud Bracers
					},
					["coord"] = { 51.4, 81.5, FELWOOD },
				}),
				q(4883, {	-- Guarding Secrets
					["lvl"] = 52,
					["qg"] = 10306,	-- Trull Failbane
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 4882,	-- Guarding Secrets
					["g"] = {
						i(15796),	-- Seaspray Bracers
						i(15797),	-- Shining Armplates
					},
				}),
				q(8420, {	-- Hot and Itchy
					["lvl"] = 50,
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["coord"] = { 41.6, 45.0, FELWOOD },
					["classes"] = { 9 },	-- Warlock
					["altQuests"] = {
						8419,	-- An Imp's Request
					},
					["cost"] = {
						{ "i", 14256, 1 },	-- Felcloth
					},
				}),
				q(7603, {	-- Kroshius' Infernal Core
					["lvl"] = 50,
					["races"] = { WARLOCK },
					["qg"] = 14470,	-- Impsy
					["sourceQuest"] = 7602,	-- Flawless Fel Essence
				}),
				q(5085, {	-- Mystery Goo
					["lvl"] = 52,
					["provider"] = { "o", 176091 },	-- Deadwood Cauldron
					["sourceQuest"] = 5084,	-- Falling to Corruption
				}),
				q(4442, {	-- Purified!
					["lvl"] = 49,
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 4441,	-- Felbound Ancients
					["g"] = {
						i(11445),	-- Flute of the Ancients
					},
				}),
				q(5203, {	-- Rescue From Jaedenar
					["lvl"] = 49,
					["qg"] = 11016,	-- Captured Arko'narin
					["sourceQuest"] = 5202,	-- A Strange Red Key
				}),
				q(5204, {	-- Retribution of the Light
					["lvl"] = 49,
					["qg"] = 11019,	-- Jessir Moonbow
					["sourceQuest"] = 5203,	-- Rescue from Jaedenar
					["g"] = {
						i(13562),	-- Remains of Trey Lightforge
					},
					["coord"] = { 51.3, 82.0, FELWOOD },
				}),
				q(6031, {	-- Runecloth
					["lvl"] = 40,
					["qg"] = 11557,	-- Meilosh
					["minReputation"] = { 576, FRIENDLY },	-- Timbermaw Hold
					["g"] = {
						i(15822),	-- Shadowskin Spaulders
						i(15823),	-- Bricksteel Gauntlets
					},
				}),
				q(4112, {	-- Salve via Disenchanting
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["qg"] = 9529,	-- Maybess Riverbreeze
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5886, {	-- Salve via Disenchanting
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["qg"] = 9529,	-- Maybess Riverbreeze
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5891, {	-- Salve via Disenchanting
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["qg"] = 9529,	-- Maybess Riverbreeze
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4107, {	-- Salve via Disenchanting
					["lvl"] = 48,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["qg"] = 9528,	-- Arathandris Silversky
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
					["coord"] = { 54.2, 86.7, FELWOOD },
				}),
				q(5889, {	-- Salve via Gathering
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["qg"] = 9529,	-- Maybess Riverbreeze
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4110, {	-- Salve via Gathering
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["qg"] = 9529,	-- Maybess Riverbreeze
					["repeatable"] = true,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4105, {	-- Salve via Gathering
					["lvl"] = 48,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["qg"] = 9528,	-- Arathandris Silversky
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
					["sourceQuest"] = 4101,	-- Cleansing Felwood
					["coord"] = { 54.2, 86.7, FELWOOD },
				}),
				q(5884, {	-- Salve via Gathering
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["qg"] = 9529,	-- Maybess Riverbreeze
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4108, {	-- Salve via Hunting
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["qg"] = 9529,	-- Maybess Riverbreeze
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5887, {	-- Salve via Hunting
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["qg"] = 9529,	-- Maybess Riverbreeze
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5882, {	-- Salve via Hunting
					["lvl"] = 40,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["qg"] = 9529,	-- Maybess Riverbreeze
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4103, {	-- Salve via Hunting
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["qg"] = 9528,	-- Arathandris Silversky
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
					["coord"] = { 54.2, 86.7, FELWOOD },
				}),
				q(5883, {	-- Salve via Mining
					["lvl"] = 40,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["qg"] = 9529,	-- Maybess Riverbreeze
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5888, {	-- Salve via Mining
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["qg"] = 9529,	-- Maybess Riverbreeze
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4104, {	-- Salve via Mining
					["lvl"] = 48,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["qg"] = 9528,	-- Arathandris Silversky
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
					["coord"] = { 54.2, 86.7, FELWOOD },
				}),
				q(4109, {	-- Salve via Mining
					["qg"] = 9529,	-- Maybess Riverbreeze
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4106, {	-- Salve via Skinning
					["qg"] = 9528,	-- Arathandris Silversky
					["coord"] = { 54.2, 86.7, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5890, {	-- Salve via Skinning
					["qg"] = 9529,	-- Maybess Riverbreeze
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4111, {	-- Salve via Skinning
					["qg"] = 9529,	-- Maybess Riverbreeze
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5885, {	-- Salve via Skinning
					["qg"] = 9529,	-- Maybess Riverbreeze
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5158, {	-- Seeking Spiritual Aid
					["qg"] = 10922,	-- Greta Mosshoof
					["sourceQuest"] = 5157,	-- Collection of the Corrupt Water
					["coord"] = { 51.2, 82.2, FELWOOD },
					["lvl"] = 48,
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
					["lvl"] = 45,
				}),
				q(4421, {	-- The Corruption of the Jadefire
					["qg"] = 9116,	-- Eridan Bluewind
					["coord"] = { 51.4, 81.5, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
				}),
				q(5385, {	-- The Remains of Trey Lightforge
					["sourceQuest"] = 5204,	-- Retribution of the Light
					["lvl"] = 49,
					["g"] = {
						i(15706),	-- Hunt Tracker Blade
						i(15705),	-- Tidecrest Blade
					},
				}),
				q(8481, {	-- The Root of All Evil
					["qg"] = 11555,	-- Gorn One Eye
					["minReputation"] = { 576, EXALTED },	-- Timbermaw Hold
					["lvl"] = 40,
					["g"] = {
						i(21326),	-- Defender of the Timbermaw
					},
				}),
				q(8421, {	-- The Wrong Stuff
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["sourceQuest"] = 8420,	-- Hot and Itchy
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
					["lvl"] = 48,
					["qg"] = 10921,	-- Taronn Redfeather
					["coord"] = { 50.9, 81.6, FELWOOD },
				}),
				q(4505, {	-- Well of Corruption
					["lvl"] = 49,
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 6605,	-- A Strange One
					["qg"] = 9996,	-- Winna Hazzard
				}),
				q(7601, {	-- What Niby Commands
					["qg"] = 14469,	-- Niby the Almighty
					["coord"] = { 41.4, 44.8, FELWOOD },
					["races"] = { WARLOCK },
					["lvl"] = 50,
				}),
				q(4521, {	-- Wild Guardians (1/3)
					["lvl"] = 52,
					["races"] = HORDE_ONLY,
					["qg"] = 10306,	-- Trull Failbane
				}),
				q(4741, {	-- Wild Guardians (2/3)
					["lvl"] = 52,
					["races"] = HORDE_ONLY,
					["qg"] = 10306,	-- Trull Failbane
					["sourceQuest"] = 4521,	-- Wild Guardians (1/3)
				}),
				q(4721, {	-- Wild Guardians (3/3)
					["lvl"] = 52,
					["races"] = HORDE_ONLY,
					["qg"] = 10306,	-- Trull Failbane
					["sourceQuest"] = 4741,	-- Wild Guardians (2/3)
				}),
				q(8471, {	-- Winterfall Ritual Totem
					["provider"] = { "i", 20742 },	-- Winterfall Ritual Totem
					["minReputation"] = { 576, NEUTRAL },	-- Timbermaw Hold
					["crs"] = {
						10738,	-- High Chief Winterfall
						7440,	-- Winterfall Den Watcher
						7442,	-- Winterfall Pathfinder
						10916,	-- Winterfall Runner
						7439,	-- Winterfall Shaman
						7441,	-- Winterfall Totemic
						7438,	-- Winterfall Ursa
					},
					["lvl"] = 50,
				}),
				q(7625, {	-- Xorothian Stardust
					["qg"] = 9516,	-- Lord Banehollow
					["sourceQuest"] = 7624,	-- Ulathek the Traitor
					["coords"] = { 36.0, 44.6, FELWOOD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18687, 1 },	-- Xorothian Stardust
					},
					["lvl"] = 60,
				}),
			}),
		}),
	}),
};