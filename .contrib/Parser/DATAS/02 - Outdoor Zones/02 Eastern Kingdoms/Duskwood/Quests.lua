---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(DUSKWOOD, {	-- Duskwood
			n(-17, {	-- Quests
				q(231, {	-- A Daughter's Love
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 576,	-- Watcher Ladimore
					["g"] = {
						i(2000),	-- Archeus
					},
				}),
				q(337, {	-- An Old History Book
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 2794 },
				}),
				q(1044, {	-- Answered Questions
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["g"] = {
						i(5817),	-- Lunaris Bow
						i(5818),	-- Moonbeam Wand
					},
					["qg"] = 661,	-- Jonathan Carevin
					["sourceQuest"] = 1043,	-- The Scythe of Elune
					["description"] = "This quest is part of a series that starts in Ashenvale.",
					["coord"] = { 75.3, 49.2, DUSKWOOD },
				}),
				q(325, {	-- Armed and Ready
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1416,	-- Grimand Elmore
				}),
				q(322, {	-- Blessed Arm
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1217,	-- Glorin Steelbrow
				}),
				q(253, {	-- Bride of the Embalmer
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 263,	-- Lord Ello Ebonlocke
					["g"] = {
						i(3560),	-- Mantle of Honor
						i(6223),	-- Crest of Darkshire
					},
					["coord"] = { 71.9, 46.5, DUSKWOOD },
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
					--["objectID"] = 51708,	-- Eliza's Grave Dirt
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
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 273,	-- Tavernkeep Smitts
					["coord"] = { 73.8, 44.4, DUSKWOOD },
				}),
				q(149, {	-- Ghost Hair Thread
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 265,	-- Madame Eva
					["coord"] = { 75.8, 45.3, DUSKWOOD },
				}),
				q(133, {	-- Ghoulish Effigy
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 289,	-- Abercrombie
					["coord"] = { 28.0, 31.5, DUSKWOOD },
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
				q(526, {	-- Lightforge Ingots
					["lvl"] = 20,
				}),
				q(321, {	-- Lightforge Iron
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1217,	-- Glorin Steelbrow
					["g"] = {
						i(2702),	-- Lightforge Ingot
					},
				}),
				q(175, {	-- Look To The Stars
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 276,	-- Viktori Prism'Antras
					["coord"] = { 79.8, 48.0, DUSKWOOD },
				}),
				q(177, {	-- Look To The Stars
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 302,	-- Blind Mary
					["coord"] = { 81.9, 59.1, DUSKWOOD },
				}),
				q(181, {	-- Look To The Stars
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 276,	-- Viktori Prism'Antras
					["g"] = {
						i(7106),	-- Zodiac Gloves
						i(7107),	-- Belt of the Stars
					},
					["coord"] = { 79.8, 48.0, DUSKWOOD },
				}),
				q(174, {	-- Look To The Stars
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 276,	-- Viktori Prism'Antras
					["coord"] = { 79.8, 48.0, DUSKWOOD },
				}),
				q(228, {	-- Mor'Ladim
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, DUSKWOOD },
				}),
				q(55, {	-- Morbent Fel
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 311,	-- Sven Yorgen
					["g"] = {
						i(2954),	-- Night Watch Pantaloons
						i(2953),	-- Watch Master's Cloak
						i(1282),	-- Sparkmetal Coif
						i(7344),	-- Torch of Holy Flame
					},
					["coord"] = { 7.8, 34.0, DUSKWOOD },
				}),
				q(227, {	-- Morgan Ladimore
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 268,	-- Sirra Von'Indi
					["g"] = {
						i(2154),	-- The Story of Morgan Ladimore
					},
					["coord"] = { 72.6, 47.7, DUSKWOOD },
				}),
				q(160, {	-- Note to the Mayor
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 289,	-- Abercrombie
					["coord"] = { 28.0, 31.5, DUSKWOOD },
				}),
				q(1388, {	-- Nothing But The Truth
					["lvl"] = 37,
					["races"] = HORDE_ONLY,
				}),
				q(1391, {	-- Nothing But The Truth
					["lvl"] = 37,
					["races"] = HORDE_ONLY,
				}),
				q(1372, {	-- Nothing But The Truth
					["lvl"] = 37,
					["races"] = HORDE_ONLY,
				}),
				q(1383, {	-- Nothing But The Truth
					["lvl"] = 37,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(6832),	-- Cloak of Blight
						i(11265),	-- Cragwood Maul
					},
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
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 272,	-- Chef Grual
					["g"] = {
						i(1017),	-- Seasoned Wolf Kabob
						i(2701),	-- Recipe: Seasoned Wolf Kabob
					},
					["coord"] = { 73.8, 43.5, DUSKWOOD },
					["description"] = "Buy the Stormwind Seasoning Herbs from Felicia Gump in Stormwind at 64.3, 60.5.",
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
					["provider"] = { "o", 59 },
					["coord"] = { 49.9, 77.7, DUSKWOOD },
					--["objectID"] = 59,	-- Mound of loose dirt
				}),
				q(95, {	-- Sven's Revenge
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 311,	-- Sven Yorgen
					["coord"] = { 7.8, 34.0, DUSKWOOD },
				}),
				q(1042, {	-- The Carevin Family
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["qg"] = 267,	-- Clerk Daltry
					["sourceQuest"] = 1041,	-- The Caravan Road (Straglethorn Vale)
					["description"] = "This quest is part of a series that starts in Ashenvale.",
					["coord"] = { 72.6, 46.9, DUSKWOOD },
				}),
				q(229, {	-- The Daughter Who Lived
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, DUSKWOOD },
				}),
				q(270, {	-- The Doomed Fleet
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1212,	-- Bishop Farthing
					["sourceQuest"] = 269,	-- Seeking Wisdom (Duskwood)
					["coord"] = { 39.3, 27.9, STORMWIND_CITY },
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
					["provider"] = { "o", 3643 },
					["coord"] = { 41.5, 66.7, WESTFALL },
					--["objectID"] = 3643,	-- Old Footlocker
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
					["provider"] = { "o", 1561 },
					["coord"] = { 29.6, 61.9, STORMWIND_CITY },
					--["objectID"] = 1561,	-- Sealed Crate
				}),
				q(98, {	-- The Legend of Stalvan
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["g"] = {
						i(2044),	-- Crescent of Forlorn Spirits
						i(2043),	-- Ring of Forlorn Spirits
					},
					["coord"] = { 73.6, 46.9, DUSKWOOD },
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
				q(324, {	-- The Lost Ingots
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 2734,	-- Waterlogged Chest
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
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["qg"] = 661,	-- Jonathan Carevin
					["sourceQuest"] = 1042,	-- The Carevin Family
					["description"] = "This quest is part of a series that starts in Ashenvale.",
					["coord"] = { 75.3, 49.2, DUSKWOOD },
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
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 265,	-- Madame Eva
					["g"] = {
						i(1131),	-- Totem of Infliction
					},
					["coord"] = { 75.8, 45.3, DUSKWOOD },
				}),
				q(225, {	-- The Weathered Grave
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 61,	-- A Weathered Grave
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