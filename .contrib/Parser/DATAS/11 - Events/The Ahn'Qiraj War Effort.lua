--------------------------------------------
--       E V E N T S    M O D U L E       --
--------------------------------------------
_.WorldEvents = bubbleDown({["u"] = 3 }, 
{
	n(-538, {	-- The Ahn'Qiraj War Effort
		["description"] = "When Phase 5 is eventually released, the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj will not be immediately available. Instead, server communities will have to undertake a massive war effort to open the raids by gathering supplies to prepare for the war and completing an epic questline that ultimately culminates in the banging of a gong to open the gates and release the horrors within upon the world. At its climax, there is a server-wide 10 hour event, which spans several zones in Kalimdor.\n\nHow quickly Ahn'Qiraj opens depends on the server and its faction balance.\n\nWe recommend delaying the War Effort as long as possible to allow for the most number of people to obtain the Scarab Lord mount as everyone that finishes The Scepter of the Shifting Sands quest line will be granted the same rewards!",
		["maps"] = {
			ORGRIMMAR,
			IRONFORGE,
		},
		["groups"] = {
			n(-30, {	-- Alliance
				
			}),
			n(-31, {	-- Horde
				
			}),
			n(QUESTS, {
				q(8846, {	-- Five Signets for War Supplies
					["qg"] = 15701,	-- Field Marshal Snowfall <War Effort Commander>
					["coord"] = { 61.3, 74.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21438, 5 },	-- Horde Commendation Signet
					},
					["lvl"] = 10,
					["groups"] = {
						i(21509),	-- Ahn'Qiraj War Effort Supplies [Level 10]
					},
				}),
				q(8851, {	-- Five Signets for War Supplies
					["qg"] = 15700,	-- Warlord Gorchuk <War Effort Commander>
					["coord"] = { 30.3, 67.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21438, 5 },	-- Horde Commendation Signet
					},
					["lvl"] = 10,
					["groups"] = {
						i(21509),	-- Ahn'Qiraj War Effort Supplies [Level 10]
					},
				}),
				q(8847, {	-- Ten Signets for War Supplies
					["qg"] = 15701,	-- Field Marshal Snowfall <War Effort Commander>
					["coord"] = { 61.3, 74.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21438, 10 },	-- Horde Commendation Signet
					},
					["lvl"] = 20,
					["groups"] = {
						i(21510),	-- Ahn'Qiraj War Effort Supplies [Level 20]
					},
				}),
				q(8852, {	-- Ten Signets for War Supplies
					["qg"] = 15700,	-- Warlord Gorchuk <War Effort Commander>
					["coord"] = { 30.3, 67.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21438, 10 },	-- Horde Commendation Signet
					},
					["lvl"] = 20,
					["groups"] = {
						i(21510),	-- Ahn'Qiraj War Effort Supplies [Level 20]
					},
				}),
				q(8848, {	-- Fifteen Signets for War Supplies
					["qg"] = 15701,	-- Field Marshal Snowfall <War Effort Commander>
					["coord"] = { 61.3, 74.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21438, 15 },	-- Horde Commendation Signet
					},
					["lvl"] = 30,
					["groups"] = {
						i(21511),	-- Ahn'Qiraj War Effort Supplies [Level 30]
					},
				}),
				q(8853, {	-- Fifteen Signets for War Supplies
					["qg"] = 15700,	-- Warlord Gorchuk <War Effort Commander>
					["coord"] = { 30.3, 67.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21438, 15 },	-- Horde Commendation Signet
					},
					["lvl"] = 30,
					["groups"] = {
						i(21511),	-- Ahn'Qiraj War Effort Supplies [Level 30]
					},
				}),
				q(8849, {	-- Twenty Signets for War Supplies
					["qg"] = 15701,	-- Field Marshal Snowfall <War Effort Commander>
					["coord"] = { 61.3, 74.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21438, 20 },	-- Horde Commendation Signet
					},
					["lvl"] = 40,
					["groups"] = {
						i(21512),	-- Ahn'Qiraj War Effort Supplies [Level 40]
					},
				}),
				q(8854, {	-- Twenty Signets for War Supplies
					["qg"] = 15700,	-- Warlord Gorchuk <War Effort Commander>
					["coord"] = { 30.3, 67.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21438, 20 },	-- Horde Commendation Signet
					},
					["lvl"] = 40,
					["groups"] = {
						i(21512),	-- Ahn'Qiraj War Effort Supplies [Level 40]
					},
				}),
				q(8850, {	-- Thirty Signets for War Supplies
					["qg"] = 15701,	-- Field Marshal Snowfall <War Effort Commander>
					["coord"] = { 61.3, 74.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21438, 30 },	-- Horde Commendation Signet
					},
					["lvl"] = 50,
					["groups"] = {
						i(21513),	-- Ahn'Qiraj War Effort Supplies [Level 50]
					},
				}),
				q(8855, {	-- Thirty Signets for War Supplies
					["qg"] = 15700,	-- Warlord Gorchuk <War Effort Commander>
					["coord"] = { 30.3, 67.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21438, 30 },	-- Horde Commendation Signet
					},
					["lvl"] = 50,
					["groups"] = {
						i(21513),	-- Ahn'Qiraj War Effort Supplies [Level 50]
					},
				}),
				q(8509, {	-- The Alliance Needs Arthas' Tears!
					["qg"] = 15445,	-- Sergeant Major Germaine <Arthas' Tears Collector>
					["coord"] = { 71.3, 71.4, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 8836, 20 },	-- Arthas' Tears
					},
					["groups"] = {
						i(21436),	-- Alliance Commendation Signet
						i(21513),	-- Ahn'Qiraj War Effort Supplies [Level 50]
					},
				}),
				q(8510, {	-- The Alliance Needs More Arthas' Tears!
					["qg"] = 15445,	-- Sergeant Major Germaine <Arthas' Tears Collector>
					["sourceQuest"] = 8509,	-- The Alliance Needs Arthas' Tears!
					["coord"] = { 71.3, 71.4, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8836, 20 },	-- Arthas' Tears
					},
					["groups"] = {
						i(21436),	-- Alliance Commendation Signet
						i(21513),	-- Ahn'Qiraj War Effort Supplies [Level 50]
					},
				}),
				q(8492, {	-- The Alliance Needs Copper Bars!
					["qg"] = 15383,	-- Sergeant Stonebrow <Copper Bar Collector>
					["coord"] = { 64.1, 65.5, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2840, 20 },	-- Copper Bar
					},
					["groups"] = {
						i(21436),	-- Alliance Commendation Signet
						i(21509),	-- Ahn'Qiraj War Effort Supplies [Level 10]
					},
				}),
				q(8493, {	-- The Alliance Needs More Copper Bars!
					["qg"] = 15383,	-- Sergeant Stonebrow <Copper Bar Collector>
					["sourceQuest"] = 8492,	-- The Alliance Needs Copper Bars!
					["coord"] = { 64.1, 65.5, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 2840, 20 },	-- Copper Bar
					},
					["groups"] = {
						i(21436),	-- Alliance Commendation Signet
						i(21509),	-- Ahn'Qiraj War Effort Supplies [Level 10]
					},
				}),
				q(8797, {	-- The Alliance Needs Your Help! [Darnassus]
					["qg"] = 15709,	-- Master Sergeant Moonshadow <War Effort Recruiter>
					["coord"] = { 39.1, 38.3, DARNASSUS },
					["isBreadcrumb"] = true,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(8795, {	-- The Alliance Needs Your Help! [Ironforge]
					["qg"] = 15707,	-- Master Sergeant Fizzlebolt <War Effort Recruiter>
					["coord"] = { 27.5, 73.3, IRONFORGE },
					["isBreadcrumb"] = true,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(8796, {	-- The Alliance Needs Your Help! [Stormwind]
					["qg"] = 15708,	-- Master Sergeant Maclure <War Effort Recruiter>
					["coord"] = { 54.1, 59.6, STORMWIND_CITY },
					["isBreadcrumb"] = true,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(8792, {	-- The Horde Needs Your Help! [Thunder Bluff]
					["qg"] = 15702,	-- Senior Sergeant Taiga <War Effort Recruiter>
					["coord"] = { 38.8, 52.9, THUNDER_BLUFF },
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(8793, {	-- The Horde Needs Your Help! [Undercity]
					["qg"] = 15703,	-- Senior Sergeant Grimsford <War Effort Recruiter>
					["coord"] = { 62.8, 49.2, UNDERCITY },
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(8794, {	-- The Horde Needs Your Help! [Orgrimmar]
					["qg"] = 15704,	-- Senior Sergeant Kai'jin <War Effort Recruiter>
					["coord"] = { 30.3, 67.6, ORGRIMMAR },
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
			}),
			n(REWARDS, {
				i(21436, {	-- Alliance Commendation Signet
					["races"] = ALLIANCE_ONLY,
				}),
				i(21438, {	-- Horde Commendation Signet
					["races"] = HORDE_ONLY,
				}),
				i(21509, {	-- Ahn'Qiraj War Effort Supplies [Level 10]
					["description"] = "Contains a random assortment of common and uncommon quality items between levels 10-12.",
				}),
				i(21510, {	-- Ahn'Qiraj War Effort Supplies [Level 20]
					["description"] = "Contains a random assortment of common, uncommon, and rare quality items between levels 20-22.",
				}),
				i(21511, {	-- Ahn'Qiraj War Effort Supplies [Level 30]
					["description"] = "Contains a random assortment of common, uncommon, and rare quality items between levels 30-32.",
				}),
				i(21512, {	-- Ahn'Qiraj War Effort Supplies [Level 40]
					["description"] = "Contains a random assortment of common, uncommon, and rare quality items between levels 40-42.",
				}),
				i(21513, {	-- Ahn'Qiraj War Effort Supplies [Level 50]
					["description"] = "Contains a random assortment of common, uncommon, and rare quality items between levels 50-52.",
				}),
			}),
		},
	}),
});