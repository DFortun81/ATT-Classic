---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(FELWOOD, {	-- Felwood
			n(-17, {	-- Quests
				q(5242, {	-- A Final Blow
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["qg"] = 10922,	-- Greta Mosshoof
					["g"] = {
						i(15707),	-- Brantwood Sash
						i(15708),	-- Blight Leather Gloves
						i(15709),	-- Gearforge Girdle
					},
					["coord"] = { 51.2, 82.2, FELWOOD },
				}),
				q(6162, {	-- A Husband's Last Battle
					["lvl"] = 46,
					["races"] = HORDE_ONLY,
					["qg"] = 9620,	-- Dreka'Sur
				}),
				q(5202, {	-- A Strange Red Key
					["lvl"] = 49,
					["provider"] = { "i", 13140 },	-- Blood Red Key
				}),
				q(4261, {	-- Ancient Spirit
					["lvl"] = 49,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9598,	-- Arei
					["sourceQuest"] = 4442,	-- Purified!
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
						{ "i", 11503, 15 }, -- Blood Amber
					},
					["coord"] = { 54.2, 86.7, FELWOOD },
				}),
				q(4102, {	-- Cleansing Felwood (H)
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["qg"] = 9529,	-- Maybess Riverbreeze
					["cost"] = {
						{ "i", 11503, 15 }, -- Blood Amber
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
					--["objectID"] = 164885,	-- Corrupted Night Dragon
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
					--["objectID"] = 164885,	-- Corrupted Night Dragon
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
					--["objectID"] = 164886,	-- Corrupted Songflower
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
					--["objectID"] = 164886,	-- Corrupted Songflower
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
					--["objectID"] = 164888,	-- Corrupted Whipper Root
				}),
				q(4445, {	-- Corrupted Whipper Root
					["lvl"] = 48,
					["repeatable"] = true,
				}),
				q(4117, {	-- Corrupted Whipper Root
					["lvl"] = 48,
					["repeatable"] = true,
					--["objectID"] = 164888,	-- Corrupted Whipper Root
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
					--["objectID"] = 174604,	-- Corrupted Windblossom
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
					--["objectID"] = 164887,	-- Corrupted Windblossom
				}),
				q(996, {	-- Corrupted Windblossom
					["lvl"] = 48,
					["repeatable"] = true,
					--["objectID"] = 164887,	-- Corrupted Windblossom
				}),
				q(8461, {	-- Deadwood of the North
					["lvl"] = 45,
					["qg"] = 15395,	-- Nafien
				}),
				q(8470, {	-- Deadwood Ritual Totem
					["lvl"] = 45,
					["provider"] = { "i", 20741 },	-- Deadwood Ritual Totem
					["minReputation"] = { 576, NEUTRAL },	-- Timbermaw Hold
					["g"] = {
						i(13446),	-- Major Healing Potion
						i(13444),	-- Major Mana Potion
					},
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
						{ "i", 21377, 5 }, -- Deadwood Headdress Feather
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
				q(939, {	-- Flute of Xavaric
					["lvl"] = 49,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "i", 11668 },	-- Flute of Xavaric
					["sourceQuest"] = 4906,	-- Further Corruption
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
					["sourceQuest"] = 4101, -- Cleansing Felwood
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
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["qg"] = 9529,	-- Maybess Riverbreeze
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4106, {	-- Salve via Skinning
					["lvl"] = 48,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["qg"] = 9528,	-- Arathandris Silversky
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
					["coord"] = { 54.2, 86.7, FELWOOD },
				}),
				q(5890, {	-- Salve via Skinning
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["qg"] = 9529,	-- Maybess Riverbreeze
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4111, {	-- Salve via Skinning
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["qg"] = 9529,	-- Maybess Riverbreeze
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5885, {	-- Salve via Skinning
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["qg"] = 9529,	-- Maybess Riverbreeze
					["g"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5158, {	-- Seeking Spiritual Aid
					["lvl"] = 48,
					["qg"] = 10922,	-- Greta Mosshoof
					["sourceQuest"] = 5157,	-- Collection of the Corrupt Water
					["coord"] = { 51.2, 82.2, FELWOOD },
				}),
				q(8462, {	-- Speak to Nafien
					["lvl"] = 45,
					["qg"] = 11554,	-- Grazle
					["sourceQuest"] = 8460,	-- Timbermaw Ally
					["coord"] = { 50.9, 85.0, FELWOOD },
				}),
				q(8465, {	-- Speak to Salfa
					["lvl"] = 45,
					["qg"] = 15395,	-- Nafien
					["sourceQuest"] = 8461,	-- Deadwood of the North
				}),
				q(4421, {	-- The Corruption of the Jadefire
					["lvl"] = 49,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9116,	-- Eridan Bluewind
					["coord"] = { 51.4, 81.5, FELWOOD },
				}),
				q(5385, {	-- The Remains of Trey Lightforge
					["lvl"] = 49,
					["sourceQuest"] = 5204,	-- Retribution of the Light
					["g"] = {
						i(15706),	-- Hunt Tracker Blade
						i(15705),	-- Tidecrest Blade
					},
				}),
				q(8481, {	-- The Root of All Evil
					["lvl"] = 40,
					["qg"] = 11555,	-- Gorn One Eye
					["minReputation"] = { 576, EXALTED },	-- Timbermaw Hold
					["g"] = {
						i(21326),	-- Defender of the Timbermaw
					},
				}),
				q(8460, {	-- Timbermaw Ally
					["lvl"] = 45,
					["qg"] = 11554,	-- Grazle
					["g"] = {
						i(21311),	-- Earth Warder's Vest
						i(21312),	-- Belt of the Den Watcher
					},
					["coord"] = { 50.9, 85.0, FELWOOD },
				}),
				q(6131, {	-- Timbermaw Ally
					["lvl"] = 45,
					["u"] = 1,	-- Not available in classic (8460 is available)
				}),
				q(5249, {	-- To Winterspring!
					["lvl"] = 53,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10924,	-- Ivy Leafrunner
					["isBreadcrumb"] = true,
				}),
				q(7624, { -- Ulathek the Traitor
					["lvl"] = 60,
					["classes"] = { WARLOCK },
					["qg"] = 9516, -- Lord Banehollow
					["sourceQuest"] = 7623, -- Lord Banehollow
				}),
				q(5156, {	-- Verifying the Corruption
					["lvl"] = 48,
					["qg"] = 10921,	-- Taronn Redfeather
					["coord"] = { 50.9, 81.6, FELWOOD },
				}),
				q(4505, {	-- Well of Corruption
					["lvl"] = 49,
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 6605, -- A Strange One
					["qg"] = 9996,	-- Winna Hazzard
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
					["lvl"] = 50,
					["provider"] = { "i", 20742 },	-- Winterfall Ritual Totem
					["minReputation"] = { 576, NEUTRAL },	-- Timbermaw Hold
					["g"] = {
						i(13446),	-- Major Healing Potion
						i(13444),	-- Major Mana Potion
					},
				}),
				q(7625, { -- Xorothian Stardust
					["lvl"] = 60,
					["classes"] = { WARLOCK },
					["qg"] = 9516, -- Lord Banehollow
					["sourceQuest"] = 7624, -- Ulathek the Traitor
				}),
			}),
		}),
	}),
};