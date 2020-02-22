---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(DUSKWOOD, {
			n(QUESTS, {
				q(231, {	-- A Daughter's Love
					["qg"] = 576,	-- Watcher Ladimore
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["g"] = {
						i(2000),	-- Archeus
					},
				}),
				q(337, {	-- An Old History Book
					["provider"] = { "i", 2794 },
					["maps"] = { STORMWIND_CITY },
					["description"] = "The item that starts this quest can drop from most of the mobs in the zone, but seem to drop more often from the Worgen.",
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(1044, {	-- Answered Questions
					["qg"] = 661,	-- Jonathan Carevin
					["sourceQuest"] = 1043,	-- The Scythe of Elune
					["coord"] = { 75.3, 49.2, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["g"] = {
						i(5817),	-- Lunaris Bow
						i(5818),	-- Moonbeam Wand
					},
				}),
				q(325, {	-- Armed and Ready
					["qg"] = 1416,	-- Grimand Elmore
					["sourceQuest"] = 325,	-- Armed and Ready
					["coord"] = { 51.8, 12.1, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 7297, 1 },	-- Morbent's Bane
					},
					["lvl"] = 20,
				}),
				q(322, {	-- Blessed Arm
					["qg"] = 1217,	-- Glorin Steelbrow
					["sourceQuests"] = {
						526,	-- Lightforge Ingots
						324,	-- The Lost Ingots
					},
					["coord"] = { 10.6, 60.5, WETLANDS },
					["maps"] = { WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2712, 1 },	-- Crate of Lightforge Ingots
					},
					["lvl"] = 20,
				}),
				q(253, {	-- Bride of the Embalmer
					["qg"] = 263,	-- Lord Ello Ebonlocke
					["coord"] = { 71.9, 46.5, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2382, 1 },	-- The Embalmer's Heart
					},
					["lvl"] = 20,
					["g"] = {
						{
							["itemID"] = 2382,	-- The Embalmer's Heart
							["questID"] = 253,	-- Bride of the Embalmer
							["cr"] = 314,	-- Eliza <Bride of the Embalmer>
							["coord"] = { 28.8, 31.2, DUSKWOOD },
						},
						i(3560),	-- Mantle of Honor
						i(6223),	-- Crest of Darkshire
					},
				}),
				q(157, {	-- Deliver the Thread
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 265,	-- Madame Eva
					["coord"] = { 75.8, 45.3, DUSKWOOD },
				}),
				q(164, {	-- Deliveries to Sven
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 633,	-- Elaine Carevin
					["coord"] = { 75.3, 48.7, DUSKWOOD },
				}),
				q(254, {	-- Digging Through the Dirt
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["provider"] = { "o", 51708 },	-- Eliza's Grave Dirt
					["altQuests"] = {
						253,	-- Bride of the Embalmer
					},
					["description"] = "This quest is repeatable, but can only be completed while you have the quest \"Bride of the Embalmer\" in your quest log.",
					["coord"] = { 28.8, 30.8, DUSKWOOD },
				}),
				q(93, {	-- Dusky Crab Cakes
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 272,	-- Chef Grual
					["g"] = {
						i(3683),	-- Recipe: Gooey Spider Cake
					},
					["coord"] = { 73.8, 43.5, DUSKWOOD },
				}),
				q(245, {	-- Eight-Legged Menaces
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 888,	-- Watcher Dodds
					["g"] = {
						i(3559),	-- Night Watch Gauntlets
					},
					["coord"] = { 45.1, 67.0, DUSKWOOD },
				}),
				q(453, {	-- Finding the Shadowy Figure
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 273,	-- Tavernkeep Smitts
					["coord"] = { 73.8, 44.4, DUSKWOOD },
				}),
				q(156, {	-- Gather Rot Blossoms
					["qg"] = 273,	-- Tavernkeep Smitts
					["coord"] = { 73.8, 44.4, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1598, 8 },	-- Rot Blossom
					},
					["lvl"] = 20,
				}),
				q(149, {	-- Ghost Hair Thread
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 265,	-- Madame Eva
					["coord"] = { 75.8, 45.3, DUSKWOOD },
				}),
				q(133, {	-- Ghoulish Effigy
					["qg"] = 289,	-- Abercrombie
					["coord"] = { 28.0, 31.5, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 884, 7 },	-- Ghoul Rib
					},
					["lvl"] = 20,
				}),
				q(266, {	-- Inquire at the Inn
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 267,	-- Clerk Daltry
					["coord"] = { 72.6, 46.9, DUSKWOOD },
				}),
				q(5, {	-- Jitters' Growling Gut
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 288,	-- Jitters
					["coord"] = { 18.2, 56.3, DUSKWOOD },
				}),
				q(159, {	-- Juice Delivery
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 273,	-- Tavernkeep Smitts
					["coord"] = { 73.8, 44.4, DUSKWOOD },
				}),
				q(174, {	-- Look To The Stars
					["qg"] = 276,	-- Viktori Prism'Antras
					["coord"] = { 79.8, 48.0, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4371, 1 },	-- Bronze Tube
					},
					["lvl"] = 20,
				}),
				q(175, {	-- Look To The Stars
					["qg"] = 276,	-- Viktori Prism'Antras
					["sourceQuest"] = 174,	-- Look To The Stars
					["coord"] = { 79.8, 48.0, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(177, {	-- Look To The Stars
					["qg"] = 302,	-- Blind Mary
					["sourceQuest"] = 175,	-- Look To The Stars
					["coord"] = { 81.9, 59.1, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1946, 1 },	-- Mary's Looking Glass
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 1946,	-- Mary's Looking Glass
							["questID"] = 177,	-- Look To The Stars
							["cr"] = 511,	-- Insane Ghoul
							["coord"] = { 80.8, 71.6, DUSKWOOD },
						},
					},
				}),
				q(181, {	-- Look To The Stars
					["qg"] = 276,	-- Viktori Prism'Antras
					["sourceQuest"] = 177,	-- Look To The Stars
					["coord"] = { 79.8, 48.0, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1968, 1 },	-- Ogre's Monocle
					},
					["lvl"] = 20,
					["g"] = {
						{
							["itemID"] = 1968,	-- Ogre's Monocle
							["questID"] = 181,	-- Look To The Stars
							["cr"] = 300,	-- Zzarc' Vul
							["coord"] = { 37.0, 82.4, DUSKWOOD },
						},
						i(7106),	-- Zodiac Gloves
						i(7107),	-- Belt of the Stars
					},
				}),
				q(228, {	-- Mor'Ladim
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, DUSKWOOD },
					["cost"] = {
						{ "i", 3514, 1 },	-- Mor'Ladim's Skull
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						{
							["itemID"] = 3514,	-- Mor'Ladim's Skull
							["questID"] = 228,	-- Mor'Ladim
							["cr"] = 522,	-- Mor'Ladim
							["coord"] = { 19.4, 34.6, DUSKWOOD },
						},
					},
				}),
				q(55, {	-- Morbent Fel
					["qg"] = 311,	-- Sven Yorgen
					["sourceQuest"] = 325,	-- Armed and Ready
					["coord"] = { 7.8, 34.0, DUSKWOOD },
					["cr"] = 1200,	-- Morbent Fel
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 7297, 1 },	-- Morbent's Bane
					},
					["lvl"] = 20,
					["g"] = {
						i(2954),	-- Night Watch Pantaloons
						i(2953),	-- Watch Master's Cloak
						i(1282),	-- Sparkmetal Coif
						i(7344),	-- Torch of Holy Flame
					},
				}),
				q(227, {	-- Morgan Ladimore
					["qg"] = 268,	-- Sirra Von'Indi
					["coord"] = { 72.6, 47.7, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["g"] = {
						i(2154),	-- The Story of Morgan Ladimore
					},
				}),
				q(160, {	-- Note to the Mayor
					["qg"] = 289,	-- Abercrombie
					["coord"] = { 28.0, 31.5, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(1372, {	-- Nothing But The Truth
					["qg"] = 5418,	-- Deathstalker Zraedus
					["coord"] = { 87.6, 35.6, DUSKWOOD },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				}),
				q(1383, {	-- Nothing But The Truth
					["qg"] = 5414,	-- Apothecary Faustin <Royal Apothecary Society>
					["sourceQuest"] = 1372,	-- Nothing But The Truth
					["coord"] = { 87.4, 35.4, DUSKWOOD },
					["maps"] = { DESOLACE, SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6080, 5 },	-- Shadow Panther Heart
						{ "i", 6081, 1 },	-- Mire Lord Fungus
						{ "i", 6082, 1 },	-- Deepstrider Tumor
					},
					["lvl"] = 37,
					["g"] = {
						i(6832),	-- Cloak of Blight
						i(11265),	-- Cragwood Maul
					},
				}),
				q(1388, {	-- Nothing But The Truth
					["qg"] = 5414,	-- Apothecary Faustin <Royal Apothecary Society>
					["sourceQuest"] = 1383,	-- Nothing But The Truth
					["coord"] = { 87.4, 35.4, DUSKWOOD },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6086, 1 },	-- Faustin's Truth Serum
					},
					["lvl"] = 37,
				}),
				q(1391, {	-- Nothing But The Truth
					["qg"] = 5418,	-- Deathstalker Zraedus
					["sourceQuest"] = 1388,	-- Nothing But The Truth
					["coord"] = { 87.6, 35.6, DUSKWOOD },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6089, 1 },	-- Zraedus's Brew
					},
					["lvl"] = 37,
				}),
				q(134, {	-- Ogre Thieves
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 289,	-- Abercrombie
					["coord"] = { 28.0, 31.5, DUSKWOOD },
				}),
				q(323, {	-- Proving Your Worth
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 311,	-- Sven Yorgen
					["coord"] = { 7.8, 34.0, DUSKWOOD },
				}),
				q(163, {	-- Raven Hill
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 633,	-- Elaine Carevin
					["coord"] = { 75.3, 48.7, DUSKWOOD },
				}),
				q(154, {	-- Return the Comb
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 302,	-- Blind Mary
					["coord"] = { 81.9, 59.1, DUSKWOOD },
				}),
				q(240, {	-- Return to Jitters
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 272,	-- Chef Grual
					["coord"] = { 73.8, 43.5, DUSKWOOD },
				}),
				q(268, {	-- Return to Sven
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 288,	-- Jitters
					["coord"] = { 18.2, 56.3, DUSKWOOD },
				}),
				q(90, {	-- Seasoned Wolf Kabobs
					["qg"] = 272,	-- Chef Grual
					["coord"] = { 73.8, 43.5, DUSKWOOD },
					["description"] = "Buy the Stormwind Seasoning Herbs from Felicia Gump in Stormwind at 64.3, 60.5.",
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1015, 10 },	-- Lean Wolf Flank
						{ "i", 2665, 1 },	-- Stormwind Seasoning Herbs
					},
					["lvl"] = 18,
					["g"] = {
						i(1017),	-- Seasoned Wolf Kabob
						i(2701),	-- Recipe: Seasoned Wolf Kabob
					},
				}),
				q(269, {	-- Seeking Wisdom
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 311,	-- Sven Yorgen
					["coord"] = { 7.8, 34.0, DUSKWOOD },
				}),
				q(402, {	-- Sirra is Busy
					["u"] = 1,	-- Never in game
					["lvl"] = 20,
				}),
				q(1395, {	-- Supplies for Nethergarde
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5464, -- Watchmaster Sorigal
					["sourceQuest"] = 1477, -- Vital Supplies
				}),
				q(148, {	-- Supplies from Darkshire
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 289,	-- Abercrombie
					["coord"] = { 28.0, 31.5, DUSKWOOD },
				}),
				q(230, {	-- Sven's Camp
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 59 },	-- Mound of loose dirt
					["coord"] = { 49.9, 77.7, DUSKWOOD },
				}),
				q(95, {	-- Sven's Revenge
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 311,	-- Sven Yorgen
					["coord"] = { 7.8, 34.0, DUSKWOOD },
				}),
				q(1042, {	-- The Carevin Family
					["qg"] = 267,	-- Clerk Daltry
					["sourceQuest"] = 1041,	-- The Caravan Road (Straglethorn Vale)
					["coord"] = { 72.6, 46.9, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(229, {	-- The Daughter Who Lived
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, DUSKWOOD },
				}),
				q(270, {	-- The Doomed Fleet
					["qg"] = 1212,	-- Bishop Farthing
					["sourceQuest"] = 269,	-- Seeking Wisdom (Duskwood)
					["coord"] = { 39.3, 27.9, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(165, {	-- The Hermit
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 633,	-- Elaine Carevin
					["coord"] = { 75.3, 48.7, DUSKWOOD },
				}),
				q(80, {	-- The Legend of Stalvan
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, DUSKWOOD },
				}),
				q(68, {	-- The Legend of Stalvan
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 3643 },	-- Old Footlocker
					["coord"] = { 41.5, 66.7, WESTFALL },
				}),
				q(79, {	-- The Legend of Stalvan
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 273,	-- Tavernkeep Smitts
					["g"] = {
						i(939),	-- A Bloodstained Journal Page
					},
					["coord"] = { 73.8, 44.4, DUSKWOOD },
				}),
				q(97, {	-- The Legend of Stalvan
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 267,	-- Clerk Daltry
					["coord"] = { 72.6, 46.9, DUSKWOOD },
				}),
				q(78, {	-- The Legend of Stalvan
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 294,	-- Marshal Haggard
					["coord"] = { 84.6, 69.3, ELWYNN_FOREST },
				}),
				q(69, {	-- The Legend of Stalvan
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 267,	-- Clerk Daltry
					["coord"] = { 72.6, 46.9, DUSKWOOD },
				}),
				q(75, {	-- The Legend of Stalvan
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 294,	-- Marshal Haggard
					["coord"] = { 84.6, 69.3, ELWYNN_FOREST },
				}),
				q(72, {	-- The Legend of Stalvan
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 297,	-- Caretaker Folsom
					["coord"] = { 29.6, 61.9, STORMWIND_CITY },
				}),
				q(67, {	-- The Legend of Stalvan
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 267,	-- Clerk Daltry
					["coord"] = { 72.6, 46.9, DUSKWOOD },
				}),
				q(74, {	-- The Legend of Stalvan
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 1561 },	-- Sealed Crate
					["coord"] = { 29.6, 61.9, STORMWIND_CITY },
				}),
				q(98, {	-- The Legend of Stalvan
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3629, 1 },	-- Mistmantle Family Ring
					},
					["lvl"] = 22,
					["g"] = {
						{
							["itemID"] = 3629,	-- Mistmantle Family Ring
							["questID"] = 98,	-- The Legend of Stalvan
							["cr"] = 315,	-- Stalvan Mistmantle
							["coord"] = { 77.6, 34.8, DUSKWOOD },
						},
						i(2044),	-- Crescent of Forlorn Spirits
						i(2043),	-- Ring of Forlorn Spirits
					},
				}),
				q(70, {	-- The Legend of Stalvan
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 295,	-- Innkeeper Farley
					["coord"] = { 43.8, 65.9, WESTFALL },
				}),
				q(66, {	-- The Legend of Stalvan
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 265,	-- Madame Eva
					["coord"] = { 75.8, 45.3, DUSKWOOD },
				}),
				q(1244, { -- The Missing Diplomat (5/17)
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 840, -- Watcher Backus
					["maps"] = { STORMWIND_CITY },
					["description"] = "This is part of a quest chain that begins in Stormwind City. Watcher Backus patrols the road heading north from Darkshire. The Defias Docket is located at 24.0, 72.1.",
					["sourceQuest"] = 1243,
				}),
				q(1245, { -- The Missing Diplomat (6/17)
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 840, -- Watcher Backus
					["maps"] = { STORMWIND_CITY },
					["description"] = "Watcher Backus patrols the road heading north from Darkshire.",
					["sourceQuest"] = 1244,
				}),
				q(57, {	-- The Night Watch
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, DUSKWOOD },
				}),
				q(56, {	-- The Night Watch
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, DUSKWOOD },
				}),
				q(58, {	-- The Night Watch
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["g"] = {
						i(3604),	-- Bandolier of the Night Watch
						i(3605),	-- Quiver of the Night Watch
						i(1729),	-- Gunnysack of the Night Watch
					},
					["coord"] = { 73.6, 46.9, DUSKWOOD },
				}),
				q(1043, {	-- The Scythe of Elune
					["qg"] = 661,	-- Jonathan Carevin
					["sourceQuest"] = 1042,	-- The Carevin Family
					["coord"] = { 75.3, 49.2, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(262, {	-- The Shadowy Figure
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 311,	-- Sven Yorgen
					["coord"] = { 7.8, 34.0, DUSKWOOD },
				}),
				q(265, {	-- The Shadowy Search Continues
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 265,	-- Madame Eva
					["coord"] = { 75.8, 45.3, DUSKWOOD },
				}),
				q(101, {	-- The Totem of Infliction
					["qg"] = 265,	-- Madame Eva
					["coord"] = { 75.8, 45.3, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1129, 10 },	-- Ghoul Fang
						{ "i", 2378, 10 },	-- Skeleton Finger
						{ "i", 1130, 5 },	-- Vial of Spider Venom
					},
					["lvl"] = 18,
					["g"] = {
						i(1131),	-- Totem of Infliction
					},
				}),
				q(225, {	-- The Weathered Grave
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 61 },	-- A Weathered Grave
					["coord"] = { 17.7, 29.2, DUSKWOOD },

				}),
				q(251, {	-- Translate Abercrombie's Note
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 263,	-- Lord Ello Ebonlocke
					["coord"] = { 71.9, 46.5, DUSKWOOD },
				}),
				q(252, {	-- Translation to Ello
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 268,	-- Sirra Von'Indi
					["g"] = {
						i(3248),	-- Translated Letter from The Embalmer
					},
					["coord"] = { 72.6, 47.7, DUSKWOOD },
				}),
				q(401, {	-- Wait for Sirra to Finish
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 268,	-- Sirra Von'Indi
					["coord"] = { 72.6, 47.7, DUSKWOOD },
				}),
				q(226, {	-- Wolves at Our Heels
					["lvl"] = 19,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 893,	-- Lars
					["g"] = {
						i(1127),	-- Flash Bundle
					},
					["coord"] = { 7.7, 33.4, DUSKWOOD },
				}),
				q(221, {	-- Worgen in the Woods
					["lvl"] = 23,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 663,	-- Calor
					["coord"] = { 75.3, 48.0, DUSKWOOD },
				}),
				q(222, {	-- Worgen in the Woods
					["lvl"] = 23,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 663,	-- Calor
					["coord"] = { 75.3, 48.0, DUSKWOOD },
				}),
				q(223, {	-- Worgen in the Woods
					["lvl"] = 23,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 663,	-- Calor
					["g"] = {
						i(2902),	-- Cloak of the Faith
						i(1547),	-- Shield of the Faith
						i(5244),	-- Consecrated Wand
					},
					["coord"] = { 75.3, 48.0, DUSKWOOD },
				}),
				q(173, {	-- Worgen in the Woods
					["lvl"] = 23,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 663,	-- Calor
					["coord"] = { 75.3, 48.0, DUSKWOOD },
				}),
				q(158, {	-- Zombie Juice
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 289,	-- Abercrombie
					["coord"] = { 28.0, 31.5, DUSKWOOD },
				}),
			}),
		}),
	}),
};