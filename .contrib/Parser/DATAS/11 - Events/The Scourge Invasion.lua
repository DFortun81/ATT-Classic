--------------------------------------------
--       E V E N T S    M O D U L E       --
--------------------------------------------
-- Note: This is up here to prevent the unobtainable flag from getting put on the Major Healing and Mana Potions (for now)
local MAJOR_HEALING_POTION = i(13446);	-- Major Healing Potion
local MAJOR_MANA_POTION =    i(13444);	-- Major Mana Potion

_.WorldEvents = bubbleDown({ ["u"] = PHASE_SIX },
{
	n(-540, {	-- The Scourge Invasion
		["description"] = "The Scourge Invasion was a world event in Patch 1.11 that heralded the opening of Naxxramas, the citadel of the dreaded Kel'Thuzad.\n\nSeveral regions of Azeroth came under attack by Scourge forces. Members of the Argent Dawn organized a worldwide counter to the Scourge invasion, keeping an eye out for any necropolis sightings and passing on their information to all adventurers willing to aid them in their struggle.\n\nWith each victory against the Scourge, the defense grows stronger. As more and more invasion attempts are beaten back by the defenders, the Argent Dawn will be able to bestow increasingly more powerful blessings upon those fighting the invaders. If the mortal races focus on clearing the Scourge camps all over the world that have sprung up beneath each necropolis, perhaps the invasion can effectively be halted or even repelled. Those who wish to take up arms against the undead invaders should speak with a representative of the Argent Dawn to learn what regions need help and how the defense is holding up.",
		-- ["maps"] = { },	-- Eastern Plaguelands (eventually)
		["groups"] = {
			n(QUESTS, {
				q(9094, {	-- Argent Dawn Gloves
					["qg"] = 16787,	-- Argent Outfitter <The Argent Dawn>
					["sourceQuest"] = 9153,	-- Under the Shadow
					["coords"] = {
						{ 54.3, 62.8, STORMWIND_CITY },
						{ 34.0, 66.4, IRONFORGE },
						{ 42.6, 53.4, THUNDER_BLUFF },
						{ 53.4, 73.4, ORGRIMMAR },
						{ 49.6, 30.0, UNDERCITY },
						{ 64.5, 42.8, DARNASSUS },
						{ 80.8, 59.5, EASTERN_PLAGUELANDS },
					},
					["cost"] = {
						{ "i", 22484, 30 },	-- Necrotic Rune
					},
					["lvl"] = 50,
					["groups"] = {
						i(23084),	-- Gloves of Undead Cleansing
						i(23081),	-- Handwraps of Undead Slaying
						i(23082),	-- Handguards of Undead Slaying
						i(23078),	-- Gauntlets of Undead Slaying
					},
				}),
				q(9333, {	-- Argent Dawn Gloves
					["qg"] = 16787,	-- Argent Outfitter <The Argent Dawn>
					["sourceQuest"] = 9094,	-- Argent Dawn Gloves
					["coords"] = {
						{ 54.3, 62.8, STORMWIND_CITY },
						{ 34.0, 66.4, IRONFORGE },
						{ 42.6, 53.4, THUNDER_BLUFF },
						{ 53.4, 73.4, ORGRIMMAR },
						{ 49.6, 30.0, UNDERCITY },
						{ 64.5, 42.8, DARNASSUS },
						{ 80.8, 59.5, EASTERN_PLAGUELANDS },
					},
					["cost"] = {
						{ "i", 22484, 30 },	-- Necrotic Rune
					},
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(23084),	-- Gloves of Undead Cleansing
						i(23081),	-- Handwraps of Undead Slaying
						i(23082),	-- Handguards of Undead Slaying
						i(23078),	-- Gauntlets of Undead Slaying
					},
				}),
				q(9334, {	-- Blessed Wizard Oil
					["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
					["sourceQuest"] = 9153,	-- Under the Shadow
					["coords"] = {
						{ 54.7, 62.2, STORMWIND_CITY },
						{ 34.0, 66.4, IRONFORGE },
						{ 43.7, 52.6, THUNDER_BLUFF },
						{ 52.5, 73.7, ORGRIMMAR },
						{ 49.9, 29.4, UNDERCITY },
						{ 64.3, 44.5, DARNASSUS },
						{ 80.9, 59.6, EASTERN_PLAGUELANDS },
					},
					["cost"] = {
						{ "i", 22484, 8 },	-- Necrotic Rune
					},
					["lvl"] = 50,
					["groups"] = {
						i(23123),	-- Blessed Wizard Oil
					},
				}),
				q(9318, {	-- Blessed Wizard Oil
					["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
					["sourceQuest"] = 9334,	-- Blessed Wizard Oil
					["coords"] = {
						{ 54.7, 62.2, STORMWIND_CITY },
						{ 34.0, 66.4, IRONFORGE },
						{ 43.7, 52.6, THUNDER_BLUFF },
						{ 52.5, 73.7, ORGRIMMAR },
						{ 49.9, 29.4, UNDERCITY },
						{ 64.3, 44.5, DARNASSUS },
						{ 80.9, 59.6, EASTERN_PLAGUELANDS },
					},
					["cost"] = {
						{ "i", 22484, 8 },	-- Necrotic Rune
					},
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(23123),	-- Blessed Wizard Oil
					},
				}),
				q(9335, {	-- Consecrated Sharpening Stones
					["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
					["sourceQuest"] = 9153,	-- Under the Shadow
					["coords"] = {
						{ 54.7, 62.2, STORMWIND_CITY },
						{ 34.0, 66.4, IRONFORGE },
						{ 43.7, 52.6, THUNDER_BLUFF },
						{ 52.5, 73.7, ORGRIMMAR },
						{ 49.9, 29.4, UNDERCITY },
						{ 64.3, 44.5, DARNASSUS },
						{ 80.9, 59.6, EASTERN_PLAGUELANDS },
					},
					["cost"] = {
						{ "i", 22484, 8 },	-- Necrotic Rune
					},
					["lvl"] = 50,
					["groups"] = {
						i(23122),	-- Consecrated Sharpening Stone
					},
				}),
				q(9317, {	-- Consecrated Sharpening Stones
					["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
					["sourceQuest"] = 9335,	-- Consecrated Sharpening Stones
					["coords"] = {
						{ 54.7, 62.2, STORMWIND_CITY },
						{ 34.0, 66.4, IRONFORGE },
						{ 43.7, 52.6, THUNDER_BLUFF },
						{ 52.5, 73.7, ORGRIMMAR },
						{ 49.9, 29.4, UNDERCITY },
						{ 64.3, 44.5, DARNASSUS },
						{ 80.9, 59.6, EASTERN_PLAGUELANDS },
					},
					["cost"] = {
						{ "i", 22484, 8 },	-- Necrotic Rune
					},
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(23122),	-- Consecrated Sharpening Stone
					},
				}),
				q(9292, {	-- Cracked Necrotic Crystal
					["qg"] = 16431,	-- Cracked Necrotic Crystal
					["cost"] = {
						{ "i", 22949, 1 },	-- Cracked Necrotic Crystal
					},
					["lvl"] = 1,
					["groups"] = {
						i(23123),	-- Blessed Wizard Oil
						i(23122),	-- Consecrated Sharpening Stone
					},
				}),
				q(9304, {	-- Document from the Front
					["provider"] = { "i", 22975 },	-- A Smudged Document
					["cost"] = {
						{ "i", 22948, 1 },	-- A Smudged Document
					},
					["lvl"] = 45,
				}),
				q(9301, {	-- Envelope from the Front
					["provider"] = { "i", 22970 },	-- A Bloodstained Envelope
					["cost"] = {
						{ "i", 22930, 1 },	-- A Bloodstained Envelope
					},
					["lvl"] = 45,
				}),
				q(9310, {	-- Faint Necrotic Crystal
					["qg"] = 16531,	-- Faint Necrotic Crystal
					["cost"] = {
						{ "i", 22950, 1 },	-- Faint Necrotic Crystal
					},
					["lvl"] = 1,
					["groups"] = {
						i(23123),	-- Blessed Wizard Oil
						i(23122),	-- Consecrated Sharpening Stone
					},
				}),
				q(9262, {	-- Investigate the Scourge of Darnassus
					["qg"] = 16495,	-- Lieutenant Beitha <The Argent Dawn>
					["coord"] = { 77.7, 42.7, DARNASSUS },
					-- ["maps"] = { DARNASSUS },
					["cost"] = {
						{ "i", 22892, 3 },	-- Dim Necrotic Stone
					},
					["crs"] = {
						16423,	-- Spectral Apparition
						16422,	-- Skeletal Soldier
						16437,	-- Spectral Spirit
						16438,	-- Skeletal Trooper
					},
					["lvl"] = 1,
				}),
				q(9261, {	-- Investigate the Scourge of Ironforge
					["qg"] = 16484,	-- Lieutenant Nevell <The Argent Dawn>
					["coord"] = { 53.2, 35.0, DUN_MOGORH },
					-- ["maps"] = { IRONFORGE },
					["cost"] = {
						{ "i", 22892, 3 },	-- Dim Necrotic Stone
					},
					["crs"] = {
						16423,	-- Spectral Apparition
						16422,	-- Skeletal Soldier
						16437,	-- Spectral Spirit
						16438,	-- Skeletal Trooper
					},
					["lvl"] = 1,
				}),
				q(9263, {	-- Investigate the Scourge of Orgrimmar
					["qg"] = 16493,	-- Lieutenant Dagel <The Argent Dawn>
					["coord"] = { 51.7, 83.3, ORGRIMMAR },
					-- ["maps"] = { ORGRIMMAR },
					["cost"] = {
						{ "i", 22892, 3 },	-- Dim Necrotic Stone
					},
					["crs"] = {
						16423,	-- Spectral Apparition
						16422,	-- Skeletal Soldier
						16437,	-- Spectral Spirit
						16438,	-- Skeletal Trooper
					},
					["lvl"] = 1,
				}),
				q(9260, {	-- Investigate the Scourge of Stormwind
					["qg"] = 16478,	-- Lieutenant Orrin <The Argent Dawn>
					["coord"] = { 63.8, 75.5, STORMWIND_CITY },
					-- ["maps"] = { STORMWIND_CITY },
					["cost"] = {
						{ "i", 22892, 3 },	-- Dim Necrotic Stone
					},
					["crs"] = {
						16423,	-- Spectral Apparition
						16422,	-- Skeletal Soldier
						16437,	-- Spectral Spirit
						16438,	-- Skeletal Trooper
					},
					["lvl"] = 1,
				}),
				q(9265, {	-- Investigate the Scourge of the Undercity
					["qg"] = 16494,	-- Lieutenant Rukag <The Argent Dawn>
					["coord"] = { 66.2, 21.4, UNDERCITY },
					-- ["maps"] = { UNDERCITY },
					["cost"] = {
						{ "i", 22892, 3 },	-- Dim Necrotic Stone
					},
					["crs"] = {
						16423,	-- Spectral Apparition
						16422,	-- Skeletal Soldier
						16437,	-- Spectral Spirit
						16438,	-- Skeletal Trooper
					},
					["lvl"] = 1,
				}),
				q(9264, {	-- Investigate the Scourge of Thunder Bluff
					["qg"] = 16490,	-- Lieutenant Lisande <The Argent Dawn>
					["coord"] = { 33.1, 59.9, THUNDER_BLUFF },
					-- ["maps"] = { THUNDER_BLUFF },
					["cost"] = {
						{ "i", 22892, 3 },	-- Dim Necrotic Stone
					},
					["crs"] = {
						16423,	-- Spectral Apparition
						16422,	-- Skeletal Soldier
						16437,	-- Spectral Spirit
						16438,	-- Skeletal Trooper
					},
					["lvl"] = 1,
				}),
				q(9295, {	-- Letter from the Front
					["provider"] = { "i", 22977 },	-- A Torn Letter
					["cost"] = {
						{ "i", 22932, 1 },	-- A Torn Letter
					},
					["lvl"] = 45,
				}),
				q(9154, {	-- Light's Hope Chapel
					["qg"] = 16241,	-- Argent Recruiter
					-- ["coords"] = { },	-- Capital Cities
					-- ["maps"] = { },	-- Capital Cities
					["cost"] = {
						{ "i", 22595, 1 },	-- Call to Arms Announcement
					},
					["lvl"] = 50,
				}),
				q(9336, {	-- Major Healing Potion
					["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
					["sourceQuest"] = 9153,	-- Under the Shadow
					["coords"] = {
						{ 54.7, 62.2, STORMWIND_CITY },
						{ 34.0, 66.4, IRONFORGE },
						{ 43.7, 52.6, THUNDER_BLUFF },
						{ 52.5, 73.7, ORGRIMMAR },
						{ 49.9, 29.4, UNDERCITY },
						{ 64.3, 44.5, DARNASSUS },
						{ 80.9, 59.6, EASTERN_PLAGUELANDS },
					},
					["cost"] = {
						{ "i", 22484, 15 },	-- Necrotic Rune
					},
					["lvl"] = 50,
					["groups"] = {
						MAJOR_HEALING_POTION,	-- Major Healing Potion
					},
				}),
				q(9321, {	-- Major Healing Potion
					["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
					["sourceQuest"] = 9336,	-- Major Healing Potion
					["coords"] = {
						{ 54.7, 62.2, STORMWIND_CITY },
						{ 34.0, 66.4, IRONFORGE },
						{ 43.7, 52.6, THUNDER_BLUFF },
						{ 52.5, 73.7, ORGRIMMAR },
						{ 49.9, 29.4, UNDERCITY },
						{ 64.3, 44.5, DARNASSUS },
						{ 80.9, 59.6, EASTERN_PLAGUELANDS },
					},
					["cost"] = {
						{ "i", 22484, 15 },	-- Necrotic Rune
					},
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						MAJOR_HEALING_POTION,	-- Major Healing Potion
					},
				}),
				q(9337, {	-- Major Mana Potion
					["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
					["sourceQuest"] = 9153,	-- Under the Shadow
					["coords"] = {
						{ 54.7, 62.2, STORMWIND_CITY },
						{ 34.0, 66.4, IRONFORGE },
						{ 43.7, 52.6, THUNDER_BLUFF },
						{ 52.5, 73.7, ORGRIMMAR },
						{ 49.9, 29.4, UNDERCITY },
						{ 64.3, 44.5, DARNASSUS },
						{ 80.9, 59.6, EASTERN_PLAGUELANDS },
					},
					["cost"] = {
						{ "i", 22484, 15 },	-- Necrotic Rune
					},
					["lvl"] = 50,
					["groups"] = {
						MAJOR_MANA_POTION,	-- Major Mana Potion
					},
				}),
				q(9320, {	-- Major Mana Potion
					["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
					["sourceQuest"] = 9337,	-- Major Mana Potion
					["coords"] = {
						{ 54.7, 62.2, STORMWIND_CITY },
						{ 34.0, 66.4, IRONFORGE },
						{ 43.7, 52.6, THUNDER_BLUFF },
						{ 52.5, 73.7, ORGRIMMAR },
						{ 49.9, 29.4, UNDERCITY },
						{ 64.3, 44.5, DARNASSUS },
						{ 80.9, 59.6, EASTERN_PLAGUELANDS },
					},
					["cost"] = {
						{ "i", 22484, 15 },	-- Necrotic Rune
					},
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						MAJOR_MANA_POTION,	-- Major Mana Potion
					},
				}),
				q(9302, {	-- Missive from the Front
					["provider"] = { "i", 22973 },	-- A Crumpled Missive
					["cost"] = {
						{ "i", 22944, 1 },	-- A Crumpled Missive
					},
					["lvl"] = 45,
				}),
				q(9299, {	-- Note from the Front
					["provider"] = { "i", 22972 },	-- A Careworn Note
					["cost"] = {
						{ "i", 22945, 1 },	-- A Careworn Note
					},
					["lvl"] = 45,
				}),
				q(9300, {	-- Page from the Front
					["provider"] = { "i", 22974 },	-- A Ragged Page
					["cost"] = {
						{ "i", 22946, 1 },	-- A Ragged Page
					},
					["lvl"] = 45,
				}),
				q(9085, {	-- Shadows of Doom
					["qg"] = 16361,	-- Commander Thomas Helleran <The Argent Dawn>
					["sourceQuest"] = 9153,	-- Under the Shadow
					["coord"] = { 81.1, 60.6, EASTERN_PLAGUELANDS },
					["cr"] = 16143,	-- Shadow of Doom
					["lvl"] = 50,
					["groups"] = {
						i(23123),	-- Blessed Wizard Oil
						i(23122),	-- Consecrated Sharpening Stone
					},
				}),
				q(9343, {	-- Tabard of the Argent Dawn
					["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
					["sourceQuest"] = 9153,	-- Under the Shadow
					["coords"] = {
						{ 54.7, 62.2, STORMWIND_CITY },
						{ 34.0, 66.4, IRONFORGE },
						{ 43.7, 52.6, THUNDER_BLUFF },
						{ 52.5, 73.7, ORGRIMMAR },
						{ 49.9, 29.4, UNDERCITY },
						{ 64.3, 44.5, DARNASSUS },
						{ 80.9, 59.6, EASTERN_PLAGUELANDS },
					},
					["cost"] = {
						{ "i", 22484, 10 },	-- Necrotic Rune
					},
					["lvl"] = 50,
					["groups"] = {
						i(22999),	-- Tabard of the Argent Dawn
					},
				}),
				q(9341, {	-- Tabard of the Argent Dawn
					["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
					["sourceQuest"] = 9343,	-- Tabard of the Argent Dawn
					["coords"] = {
						{ 54.7, 62.2, STORMWIND_CITY },
						{ 34.0, 66.4, IRONFORGE },
						{ 43.7, 52.6, THUNDER_BLUFF },
						{ 52.5, 73.7, ORGRIMMAR },
						{ 49.9, 29.4, UNDERCITY },
						{ 64.3, 44.5, DARNASSUS },
						{ 80.9, 59.6, EASTERN_PLAGUELANDS },
					},
					["cost"] = {
						{ "i", 22484, 10 },	-- Necrotic Rune
					},
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(22999),	-- Tabard of the Argent Dawn
					},
				}),
				q(9247, {	-- The Keeper's Call
					["qg"] = 16281,	-- Keeper of the Rolls <The Argent Dawn>
					["coord"] = { 81.1, 60.5, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 22723, 1 },	-- A Letter from the Keeper of the Rolls [Not sure where you get this from, to be honest.]
					},
					["lvl"] = 60,
					["groups"] = {
						i(23123),	-- Blessed Wizard Oil
						i(23122),	-- Consecrated Sharpening Stone
					},
				}),
				q(9153, {	-- Under the Shadow
					["qg"] = 16361,	-- Commander Thomas Helleran <The Argent Dawn>
					["coord"] = { 81.1, 60.6, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 22484, 10 },	-- Necrotic Rune
					},
					["lvl"] = 50,
					["groups"] = {
						i(23123),	-- Blessed Wizard Oil
						i(23122),	-- Consecrated Sharpening Stone
					},
				}),
			}),
			n(COMMON_BOSS_DROPS, {
				["crs"] = {
					16380,	-- Bone Witch
					16383,	-- Flameshocker
					14697,	-- Lumbering Horror
					16143,	-- Shadow of Doom
				},
				["groups"] = {
					i(22484),	-- Necrotic Rune
					i(23084),	-- Gloves of Undead Cleansing
					i(23085),	-- Robe of Undead Cleansing
					i(23091),	-- Bracers of Undead Cleansing
					i(23081),	-- Handwraps of Undead Slaying
					i(23089),	-- Tunic of Undead Slaying
					i(23093),	-- Wristwraps of Undead Slaying
					i(23082),	-- Handguards of Undead Slaying
					i(23088),	-- Chestguard of Undead Slaying
					i(23092),	-- Wristguards of Undead Slaying
					i(23078),	-- Gauntlets of Undead Slaying
					i(23087),	-- Breastplate of Undead Slaying
					i(23090),	-- Bracers of Undead Slaying
				},
			}),
			n(RARES, {
				n(16383, {	-- Flameshocker
					{
						["itemID"] = 22970,	-- A Bloodstained Envelope
						["questID"] = 9301,	-- Envelope from the Front
					},
					{
						["itemID"] = 22972,	-- A Careworn Note
						["questID"] = 9299,	-- Note from the Front
					},
					{
						["itemID"] = 22973,	-- A Crumpled Missive
						["questID"] = 9302,	-- Missive from the Front
					},
					{
						["itemID"] = 22974,	-- A Ragged Page
						["questID"] = 9300,	-- Page from the Front
					},
					{
						["itemID"] = 22975,	-- A Smudged Document
						["questID"] = 9304,	-- Document from the Front
					},
					{
						["itemID"] = 22977,	-- A Torn Letter
						["questID"] = 9295,	-- Letter from the Front
					},
				}),
			}),
		},
	}),
});

-- Wipe out the unobtainable states.
MAJOR_HEALING_POTION.u = nil;
MAJOR_MANA_POTION.u = nil;