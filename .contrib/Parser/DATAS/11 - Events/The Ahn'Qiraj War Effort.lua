--------------------------------------------
--       E V E N T S    M O D U L E       --
--------------------------------------------
_.WorldEvents = bubbleDown({ ["u"] = PHASE_FIVE }, 
{
	n(-538, {	-- The Ahn'Qiraj War Effort
		["description"] = "When Phase 5 is eventually released, the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj will not be immediately available. Instead, server communities will have to undertake a massive war effort to open the raids by gathering supplies to prepare for the war and completing an epic questline that ultimately culminates in the banging of a gong to open the gates and release the horrors within upon the world.\n\nOnce both factions have finished their contribution, there is a 5-day grace period where. Afterwards, there is a server-wide 10 hour event which spans several zones in Kalimdor the moment someone bangs the gong.\n\nHow quickly Ahn'Qiraj opens depends on the server and its faction balance.\n\nWe recommend delaying the War Effort as long as possible to allow for the most number of people to obtain the Scarab Lord mount as everyone that finishes The Scepter of the Shifting Sands quest line will be granted the same rewards!",
		["maps"] = {
			ORGRIMMAR,
			IRONFORGE,
		},
		["groups"] = {
			n(-30, {	-- Alliance
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					q(8811, {	-- One Commendation Signet (1/2) [Stormwind]
						["qgs"] = {
							15766,	-- Officer Maloof <Stormwind Commendations> [SW]
							15735,	-- Stormwind Commendation Officer [IF]
						},
						["coords"] = {
							{ 55.2, 64.7, STORMWIND_CITY },
							{ 59.3, 64.1, IRONFORGE },
						},
						["description"] = "Grants 5 reputation with Stormwind",
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21436, 1 },	-- Alliance Commendation Signet
						},
					}),
					q(8830, {	-- One Commendation Signet (2/2) [Stormwind]
						["qgs"] = {
							15766,	-- Officer Maloof <Stormwind Commendations> [SW]
							15735,	-- Stormwind Commendation Officer [IF]
						},
						["sourceQuest"] = 8811,	-- One Commendation Signet (1/2) [Stormwind]
						["coords"] = {
							{ 55.2, 64.7, STORMWIND_CITY },
							{ 59.3, 64.1, IRONFORGE },
						},
						["description"] = "Grants 5 reputation with Stormwind",
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21436, 1 },	-- Alliance Commendation Signet
						},
					}),
					q(8812, {	-- One Commendation Signet (1/2) [Ironforge]
						["qgs"] = {
							15764,	-- Officer Ironbeard <Ironforge Commendations> [IF]
							15734,	-- Ironforge Commendation Officer [IF]
						},
						["coords"] = {
							{ 43.2, 46.5, IRONFORGE },
							{ 61.0, 77.1, IRONFORGE },
						},
						["description"] = "Grants 5 reputation with Ironforge",
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21436, 1 },	-- Alliance Commendation Signet
						},
					}),
					q(8834, {	-- One Commendation Signet (2/2) [Ironforge]
						["qgs"] = {
							15764,	-- Officer Ironbeard <Ironforge Commendations> [IF]
							15734,	-- Ironforge Commendation Officer [IF]
						},
						["sourceQuest"] = 8812,	-- One Commendation Signet (1/2) [Ironforge]
						["coords"] = {
							{ 43.2, 46.5, IRONFORGE },
							{ 61.0, 77.1, IRONFORGE },
						},
						["description"] = "Grants 5 reputation with Ironforge",
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21436, 1 },	-- Alliance Commendation Signet
						},
					}),
					q(8813, {	-- One Commendation Signet (1/2) [Darnassus]
						["qgs"] = {
							15762,	-- Officer Lunalight <Darnassus Commendations> [Darn]
							15731,	-- Darnassus Commendation Officer [IF]
						},
						["coords"] = {
							{ 38.2, 38.7, DARNASSUS },
							{ 59.1, 65.5, IRONFORGE },
						},
						["description"] = "Grants 5 reputation with Darnassus",
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21436, 1 },	-- Alliance Commendation Signet
						},
					}),
					q(8836, {	-- One Commendation Signet (2/2) [Darnassus]
						["qgs"] = {
							15762,	-- Officer Lunalight <Darnassus Commendations> [Darn]
							15731,	-- Darnassus Commendation Officer [IF]
						},
						["sourceQuest"] = 8813,	-- One Commendation Signet (1/2) [Darnassus]
						["coords"] = {
							{ 38.2, 38.7, DARNASSUS },
							{ 59.1, 65.5, IRONFORGE },
						},
						["description"] = "Grants 5 reputation with Darnassus",
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21436, 1 },	-- Alliance Commendation Signet
						},
					}),
					q(8814, {	-- One Commendation Signet (1/2) [Gnomeregan]
						["qgs"] = {
							15733,	-- Gnomeregan Commendation Officer [IF]
							15763,	-- Officer Porterhouse <Gnomeregan Commendations> [IF]
						},
						["coords"] = {
							{ 63.3, 73.7, IRONFORGE },
							{ 69.7, 46.0, IRONFORGE },
						},
						["description"] = "Grants 5 reputation with Gnomeregan",
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21436, 1 },	-- Alliance Commendation Signet
						},
					}),
					q(8838, {	-- One Commendation Signet (2/2) [Gnomeregan]
						["qgs"] = {
							15733,	-- Gnomeregan Commendation Officer [IF]
							15763,	-- Officer Porterhouse <Gnomeregan Commendations> [IF]
						},
						["sourceQuest"] = 8814,	-- One Commendation Signet (1/2) [Gnomeregan]
						["coords"] = {
							{ 63.3, 73.7, IRONFORGE },
							{ 69.7, 46.0, IRONFORGE },
						},
						["description"] = "Grants 5 reputation with Gnomeregan",
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21436, 1 },	-- Alliance Commendation Signet
						},
					}),
					q(8819, {	-- Ten Commendation Signets (1/2) [Stormwind]
						["qgs"] = {
							15766,	-- Officer Maloof <Stormwind Commendations> [SW]
							15735,	-- Stormwind Commendation Officer [IF]
						},
						["coords"] = {
							{ 55.2, 64.7, STORMWIND_CITY },
							{ 59.3, 64.1, IRONFORGE },
						},
						["description"] = "Grants 150 reputation with Stormwind",
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21436, 10 },	-- Alliance Commendation Signet
						},
					}),
					q(8831, {	-- Ten Commendation Signets (2/2) [Stormwind]
						["qgs"] = {
							15766,	-- Officer Maloof <Stormwind Commendations> [SW]
							15735,	-- Stormwind Commendation Officer [IF]
						},
						["sourceQuest"] = 8819,	-- Ten Commendation Signets (1/2) [Stormwind]
						["coords"] = {
							{ 55.2, 64.7, STORMWIND_CITY },
							{ 59.3, 64.1, IRONFORGE },
						},
						["description"] = "Grants 150 reputation with Stormwind",
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21436, 10 },	-- Alliance Commendation Signet
						},
					}),
					q(8820, {	-- Ten Commendation Signets (1/2) [Ironforge]
						["qgs"] = {
							15764,	-- Officer Ironbeard <Ironforge Commendations> [IF]
							15734,	-- Ironforge Commendation Officer [IF]
						},
						["coords"] = {
							{ 43.2, 46.5, IRONFORGE },
							{ 61.0, 77.1, IRONFORGE },
						},
						["description"] = "Grants 150 reputation with Ironforge",
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21436, 10 },	-- Alliance Commendation Signet
						},
					}),
					q(8835, {	-- Ten Commendation Signets (2/2) [Ironforge]
						["qgs"] = {
							15764,	-- Officer Ironbeard <Ironforge Commendations> [IF]
							15734,	-- Ironforge Commendation Officer [IF]
						},
						["sourceQuest"] = 8820,	-- Ten Commendation Signets (1/2) [Ironforge]
						["coords"] = {
							{ 43.2, 46.5, IRONFORGE },
							{ 61.0, 77.1, IRONFORGE },
						},
						["description"] = "Grants 150 reputation with Ironforge",
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21436, 10 },	-- Alliance Commendation Signet
						},
					}),
					q(8821, {	-- Ten Commendation Signets (1/2) [Darnassus]
						["qgs"] = {
							15762,	-- Officer Lunalight <Darnassus Commendations> [Darn]
							15731,	-- Darnassus Commendation Officer [IF]
						},
						["coords"] = {
							{ 38.2, 38.7, DARNASSUS },
							{ 59.1, 65.5, IRONFORGE },
						},
						["description"] = "Grants 150 reputation with Darnassus",
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21436, 10 },	-- Alliance Commendation Signet
						},
					}),
					q(8837, {	-- Ten Commendation Signets (2/2) [Darnassus]
						["qgs"] = {
							15762,	-- Officer Lunalight <Darnassus Commendations> [Darn]
							15731,	-- Darnassus Commendation Officer [IF]
						},
						["sourceQuest"] = 8821,	-- Ten Commendation Signets (1/2) [Darnassus]
						["coords"] = {
							{ 38.2, 38.7, DARNASSUS },
							{ 59.1, 65.5, IRONFORGE },
						},
						["description"] = "Grants 150 reputation with Darnassus",
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21436, 10 },	-- Alliance Commendation Signet
						},
					}),
					q(8822, {	-- Ten Commendation Signets (1/2) [Gnomeregan]
						["qgs"] = {
							15733,	-- Gnomeregan Commendation Officer [IF]
							15763,	-- Officer Porterhouse <Gnomeregan Commendations> [IF]
						},
						["coords"] = {
							{ 63.3, 73.7, IRONFORGE },
							{ 69.7, 46.0, IRONFORGE },
						},
						["description"] = "Grants 150 reputation with Gnomeregan",
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21436, 10 },	-- Alliance Commendation Signet
						},
					}),
					q(8839, {	-- Ten Commendation Signets (2/2) [Gnomeregan]
						["qgs"] = {
							15733,	-- Gnomeregan Commendation Officer [IF]
							15763,	-- Officer Porterhouse <Gnomeregan Commendations> [IF]
						},
						["sourceQuest"] = 8822,	-- Ten Commendation Signets (1/2) [Gnomeregan]
						["coords"] = {
							{ 63.3, 73.7, IRONFORGE },
							{ 69.7, 46.0, IRONFORGE },
						},
						["description"] = "Grants 150 reputation with Gnomeregan",
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21436, 10 },	-- Alliance Commendation Signet
						},
					}),
					q(8846, {	-- Five Signets for War Supplies
						["qg"] = 15701,	-- Field Marshal Snowfall <War Effort Commander>
						["coord"] = { 61.3, 74.2, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21436, 5 },	-- Alliance Commendation Signet
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
							{ "i", 21436, 10 },	-- Alliance Commendation Signet
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
							{ "i", 21436, 15 },	-- Alliance Commendation Signet
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
							{ "i", 21436, 20 },	-- Alliance Commendation Signet
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
							{ "i", 21436, 30 },	-- Alliance Commendation Signet
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
					q(8494, {	-- The Alliance Needs Iron Bars!
						["qg"] = 15431,	-- Corporal Carnes <Iron Bar Collector>
						["coord"] = { 65.5, 63.9, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 3575, 20 },	-- Iron Bar
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21511),	-- Ahn'Qiraj War Effort Supplies [Level 30]
						},
					}),
					q(8495, {	-- The Alliance Needs More Iron Bars!
						["qg"] = 15431,	-- Corporal Carnes <Iron Bar Collector>
						["sourceQuest"] = 8494,	-- The Alliance Needs Iron Bars!
						["coord"] = { 65.5, 63.9, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 3575, 20 },	-- Iron Bar
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21511),	-- Ahn'Qiraj War Effort Supplies [Level 30]
						},
					}),
					q(8511, {	-- The Alliance Needs Light Leather!
						["qg"] = 15446,	-- Bonnie Stoneflayer <Light Leather Collector>
						["coord"] = { 58.0, 75.9, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 2318, 10 },	-- Light Leather
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21509),	-- Ahn'Qiraj War Effort Supplies [Level 10]
						},
					}),
					q(8512, {	-- The Alliance Needs More Light Leather!
						["qg"] = 15446,	-- Bonnie Stoneflayer <Light Leather Collector>
						["sourceQuest"] = 8511,	-- The Alliance Needs Light Leather!
						["coord"] = { 58.0, 75.9, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 2318, 10 },	-- Light Leather
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21509),	-- Ahn'Qiraj War Effort Supplies [Level 10]
						},
					}),
					q(8517, {	-- The Alliance Needs Linen Bandages!
						["qg"] = 15451,	-- Sentinel Silversky <Linen Bandage Collector>
						["coord"] = { 55.4, 76.2, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 1251, 20 },	-- Linen Bandage
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21509),	-- Ahn'Qiraj War Effort Supplies [Level 10]
						},
					}),
					q(8518, {	-- The Alliance Needs More Linen Bandages!
						["qg"] = 15451,	-- Sentinel Silversky <Linen Bandage Collector>
						["sourceQuest"] = 8517,	-- The Alliance Needs Linen Bandages!
						["coord"] = { 55.4, 76.2, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 1251, 20 },	-- Linen Bandage
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21509),	-- Ahn'Qiraj War Effort Supplies [Level 10]
						},
					}),
					q(8513, {	-- The Alliance Needs Medium Leather!
						["qg"] = 15448,	-- Private Porter <Medium Leather Collector>
						["coord"] = { 58.7, 75.0, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 2319, 10 },	-- Medium Leather
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21510),	-- Ahn'Qiraj War Effort Supplies [Level 20]
						},
					}),
					q(8514, {	-- The Alliance Needs More Medium Leather!
						["qg"] = 15448,	-- Private Porter <Medium Leather Collector>
						["sourceQuest"] = 8513,	-- The Alliance Needs Medium Leather!
						["coord"] = { 58.7, 75.0, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 2319, 10 },	-- Medium Leather
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21510),	-- Ahn'Qiraj War Effort Supplies [Level 20]
						},
					}),
					q(8505, {	-- The Alliance Needs Purple Lotus!
						["qg"] = 15437,	-- Master Nightsong <Purple Lotus Collector>
						["coord"] = { 71.9, 70.4, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 8831, 20 },	-- Purple Lotus
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21512),	-- Ahn'Qiraj War Effort Supplies [Level 40]
						},
					}),
					q(8506, {	-- The Alliance Needs More Purple Lotus!
						["qg"] = 15437,	-- Master Nightsong <Purple Lotus Collector>
						["sourceQuest"] = 8505,	-- The Alliance Needs Purple Lotus!
						["coord"] = { 71.9, 70.4, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 8831, 20 },	-- Purple Lotus
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21512),	-- Ahn'Qiraj War Effort Supplies [Level 40]
						},
					}),
					q(8524, {	-- The Alliance Needs Rainbow Fin Albacore!
						["qg"] = 15455,	-- Slicky Gastronome <Rainbow Fin Albacore Collector>
						["coord"] = { 71.6, 69.2, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 5095, 20 },	-- Rainbow Fin Albacore
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21509),	-- Ahn'Qiraj War Effort Supplies [Level 10]
						},
					}),
					q(8525, {	-- The Alliance Needs More Rainbow Fin Albacore!
						["qg"] = 15455,	-- Slicky Gastronome <Rainbow Fin Albacore Collector>
						["sourceQuest"] = 8524,	-- The Alliance Needs Rainbow Fin Albacore!
						["coord"] = { 71.6, 69.2, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 5095, 20 },	-- Rainbow Fin Albacore
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21509),	-- Ahn'Qiraj War Effort Supplies [Level 10]
						},
					}),
					q(8526, {	-- The Alliance Needs Roast Raptor!
						["qg"] = 15456,	-- Sarah Sadwhistle <Roast Raptor Collector>
						["coord"] = { 72.1, 69.6, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 12210, 20 },	-- Roast Raptor
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21511),	-- Ahn'Qiraj War Effort Supplies [Level 30]
						},
					}),
					q(8527, {	-- The Alliance Needs More Roast Raptor!
						["qg"] = 15456,	-- Sarah Sadwhistle <Roast Raptor Collector>
						["sourceQuest"] = 8526,	-- The Alliance Needs Roast Raptor!
						["coord"] = { 72.1, 69.6, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 12210, 20 },	-- Roast Raptor
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21511),	-- Ahn'Qiraj War Effort Supplies [Level 30]
						},
					}),
					q(8522, {	-- The Alliance Needs Runecloth Bandages!
						["qg"] = 15453,	-- Keeper Moonshade <Runecloth Bandage Collector>
						["coord"] = { 55.7, 75.9, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 14529, 20 },	-- Runecloth Bandage
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21513),	-- Ahn'Qiraj War Effort Supplies [Level 50]
						},
					}),
					q(8523, {	-- The Alliance Needs More Runecloth Bandages!
						["qg"] = 15453,	-- Keeper Moonshade <Runecloth Bandage Collector>
						["sourceQuest"] = 8522,	-- The Alliance Needs Runecloth Bandages!
						["coord"] = { 55.7, 75.9, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 14529, 20 },	-- Runecloth Bandage
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21513),	-- Ahn'Qiraj War Effort Supplies [Level 50]
						},
					}),
					q(8520, {	-- The Alliance Needs Silk Bandages!
						["qg"] = 15452,	-- Nurse Stonefield <Silk Bandage Collector>
						["coord"] = { 57.6, 75.8, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 6450, 20 },	-- Silk Bandage
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21511),	-- Ahn'Qiraj War Effort Supplies [Level 30]
						},
					}),
					q(8521, {	-- The Alliance Needs More Silk Bandages!
						["qg"] = 15452,	-- Nurse Stonefield <Silk Bandage Collector>
						["sourceQuest"] = 8520,	-- The Alliance Needs Silk Bandages!
						["coord"] = { 57.6, 75.8, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 6450, 20 },	-- Silk Bandage
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21511),	-- Ahn'Qiraj War Effort Supplies [Level 30]
						},
					}),
					q(8528, {	-- The Alliance Needs Spotted Yellowtail!
						["qg"] = 15457,	-- Huntress Swiftriver <Spotted Yellowtail Collector>
						["coord"] = { 73.0, 68.5, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 6887, 20 },	-- Spotted Yellowtail
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21512),	-- Ahn'Qiraj War Effort Supplies [Level 40]
						},
					}),
					q(8529, {	-- The Alliance Needs More Spotted Yellowtail!
						["qg"] = 15457,	-- Huntress Swiftriver <Spotted Yellowtail Collector>
						["sourceQuest"] = 8528,	-- The Alliance Needs Spotted Yellowtail!
						["coord"] = { 73.0, 68.5, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 6887, 20 },	-- Spotted Yellowtail
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21512),	-- Ahn'Qiraj War Effort Supplies [Level 40]
						},
					}),
					q(8503, {	-- The Alliance Needs Stranglekelp!
						["qg"] = 15434,	-- Private Draxlegauge <Stranglekelp Collector>
						["coord"] = { 70.3, 74.3, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 3820, 20 },	-- Stranglekelp
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21510),	-- Ahn'Qiraj War Effort Supplies [Level 20]
						},
					}),
					q(8504, {	-- The Alliance Needs More Stranglekelp!
						["qg"] = 15434,	-- Private Draxlegauge <Stranglekelp Collector>
						["sourceQuest"] = 8503,	-- The Alliance Needs Stranglekelp!
						["coord"] = { 70.3, 74.3, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 3820, 20 },	-- Stranglekelp
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21510),	-- Ahn'Qiraj War Effort Supplies [Level 20]
						},
					}),
					q(8515, {	-- The Alliance Needs Thick Leather!
						["qg"] = 15450,	-- Marta Finespindle <Thick Leather Collector>
						["coord"] = { 57.1, 75.0, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 4304, 10 },	-- Thick Leather
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21512),	-- Ahn'Qiraj War Effort Supplies [Level 40]
						},
					}),
					q(8516, {	-- The Alliance Needs More Thick Leather!
						["qg"] = 15450,	-- Marta Finespindle <Thick Leather Collector>
						["sourceQuest"] = 8515,	-- The Alliance Needs Thick Leather!
						["coord"] = { 57.1, 75.0, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 4304, 10 },	-- Thick Leather
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21512),	-- Ahn'Qiraj War Effort Supplies [Level 40]
						},
					}),
					q(8499, {	-- The Alliance Needs Thorium Bars!
						["qg"] = 15432,	-- Dame Twinbraid <Thorium Bar Collector>
						["coord"] = { 63.9, 68.2, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 12359, 20 },	-- Thorium Bar
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21513),	-- Ahn'Qiraj War Effort Supplies [Level 50]
						},
					}),
					q(8500, {	-- The Alliance Needs More Thorium Bars!
						["qg"] = 15432,	-- Dame Twinbraid <Thorium Bar Collector>
						["sourceQuest"] = 8499,	-- The Alliance Needs Thorium Bars!
						["coord"] = { 63.9, 68.2, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 12359, 20 },	-- Thorium Bar
						},
						["groups"] = {
							i(21436),	-- Alliance Commendation Signet
							i(21513),	-- Ahn'Qiraj War Effort Supplies [Level 50]
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
				},
			}),
			n(-31, {	-- Horde
				["races"] = HORDE_ONLY,
				["groups"] = {
					q(8815, {	-- One Commendation Signet (1/2) [Orgrimmar]
						["qgs"] = {
							15765,	-- Officer Redblade <Orgrimmar Commendations> [ORG]
							15736,	-- Orgrimmar Commendation Officer [ORG]
						},
						["coords"] = {
							{ 42.5, 38.7, ORGRIMMAR },
							{ 30.0, 72.2, ORGRIMMAR },
						},
						["description"] = "Grants 5 reputation with Orgrimmar",
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 21438, 1 },	-- Horde Commendation Signet
						},
					}),
					q(8840, {	-- One Commendation Signet (2/2) [Orgrimmar]
						["qgs"] = {
							15765,	-- Officer Redblade <Orgrimmar Commendations> [ORG]
							15736,	-- Orgrimmar Commendation Officer [ORG]
						},
						["sourceQuest"] = 8815,	-- One Commendation Signet (1/2) [Orgrimmar]
						["coords"] = {
							{ 42.5, 38.7, ORGRIMMAR },
							{ 30.0, 72.2, ORGRIMMAR },
						},
						["description"] = "Grants 5 reputation with Orgrimmar",
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21438, 1 },	-- Horde Commendation Signet
						},
					}),
					q(8816, {	-- One Commendation Signet (1/2) [Undercity]
						["qgs"] = {
							15764,	-- Officer Gothena <Undercity Commendations> [UC]
							15734,	-- Undercity Commendation Officer [ORG]
						},
						["coords"] = {
							{ 61.9, 45.3, UNDERCITY },
							{ 28.8, 65.7, ORGRIMMAR },
						},
						["description"] = "Grants 5 reputation with Undercity",
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 21438, 1 },	-- Horde Commendation Signet
						},
					}),
					q(8832, {	-- One Commendation Signet (2/2) [Undercity]
						["qgs"] = {
							15764,	-- Officer Gothena <Undercity Commendations> [UC]
							15734,	-- Undercity Commendation Officer [ORG]
						},
						["sourceQuest"] = 8816,	-- One Commendation Signet (1/2) [Undercity]
						["coords"] = {
							{ 61.9, 45.3, UNDERCITY },
							{ 28.8, 65.7, ORGRIMMAR },
						},
						["description"] = "Grants 5 reputation with Undercity",
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21438, 1 },	-- Horde Commendation Signet
						},
					}),
					q(8817, {	-- One Commendation Signet (1/2) [Thunder Bluff]
						["qgs"] = {
							15767,	-- Officer Thunderstrider <Thunder Bluff Commendations> [TB]
							15739,	-- Thunder Bluff Commendation Officer [ORG]
						},
						["coords"] = {
							{ 42.4, 57.0, THUNDER_BLUFF },
							{ 33.1, 71.5, ORGRIMMAR },
						},
						["description"] = "Grants 5 reputation with Thunder Bluff",
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 21438, 1 },	-- Horde Commendation Signet
						},
					}),
					q(8842, {	-- One Commendation Signet (2/2) [Thunder Bluff]
						["qgs"] = {
							15767,	-- Officer Thunderstrider <Thunder Bluff Commendations> [TB]
							15739,	-- Thunder Bluff Commendation Officer [ORG]
						},
						["sourceQuest"] = 8817,	-- One Commendation Signet (1/2) [Thunder Bluff]
						["coords"] = {
							{ 42.4, 57.0, THUNDER_BLUFF },
							{ 33.1, 71.5, ORGRIMMAR },
						},
						["description"] = "Grants 5 reputation with Thunder Bluff",
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21438, 1 },	-- Horde Commendation Signet
						},
					}),
					q(8818, {	-- One Commendation Signet (1/2) [Darkspear]
						["qgs"] = {
							15733,	-- Darkspear Commendation Officer [ORG]
							15761,	-- Officer Vu'Shalay <Darkspear Commendations> [ORG]
						},
						["coords"] = {
							{ 33.4, 75.4, ORGRIMMAR },
							{ 46.3, 35.1, ORGRIMMAR },
						},
						["description"] = "Grants 5 reputation with Darkspear",
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 21438, 1 },	-- Horde Commendation Signet
						},
					}),
					q(8844, {	-- One Commendation Signet (2/2) [Darkspear]
						["qgs"] = {
							15733,	-- Darkspear Commendation Officer [ORG]
							15761,	-- Officer Vu'Shalay <Darkspear Commendations> [ORG]
						},
						["sourceQuest"] = 8818,	-- One Commendation Signet (1/2) [Darkspear]
						["coords"] = {
							{ 33.4, 75.4, ORGRIMMAR },
							{ 46.3, 35.1, ORGRIMMAR },
						},
						["description"] = "Grants 5 reputation with Darkspear",
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21438, 1 },	-- Horde Commendation Signet
						},
					}),
					q(8823, {	-- Ten Commendation Signets (1/2) [Orgrimmar]
						["qgs"] = {
							15765,	-- Officer Redblade <Orgrimmar Commendations> [ORG]
							15736,	-- Orgrimmar Commendation Officer [ORG]
						},
						["coords"] = {
							{ 42.5, 38.7, ORGRIMMAR },
							{ 30.0, 72.2, ORGRIMMAR },
						},
						["description"] = "Grants 150 reputation with Orgrimmar",
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 21438, 10 },	-- Horde Commendation Signet
						},
					}),
					q(8841, {	-- Ten Commendation Signets (2/2) [Orgrimmar]
						["qgs"] = {
							15765,	-- Officer Redblade <Orgrimmar Commendations> [ORG]
							15736,	-- Orgrimmar Commendation Officer [ORG]
						},
						["sourceQuest"] = 8823,	-- Ten Commendation Signets (1/2) [Orgrimmar]
						["coords"] = {
							{ 42.5, 38.7, ORGRIMMAR },
							{ 30.0, 72.2, ORGRIMMAR },
						},
						["description"] = "Grants 150 reputation with Orgrimmar",
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21438, 10 },	-- Horde Commendation Signet
						},
					}),
					q(8824, {	-- Ten Commendation Signets (1/2) [Undercity]
						["qgs"] = {
							15764,	-- Officer Gothena <Undercity Commendations> [UC]
							15734,	-- Undercity Commendation Officer [ORG]
						},
						["coords"] = {
							{ 61.9, 45.3, UNDERCITY },
							{ 28.8, 65.7, ORGRIMMAR },
						},
						["description"] = "Grants 150 reputation with Undercity",
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 21438, 10 },	-- Horde Commendation Signet
						},
					}),
					q(8833, {	-- Ten Commendation Signets (2/2) [Undercity]
						["qgs"] = {
							15764,	-- Officer Gothena <Undercity Commendations> [UC]
							15734,	-- Undercity Commendation Officer [ORG]
						},
						["sourceQuest"] = 8824,	-- Ten Commendation Signets (1/2) [Undercity]
						["coords"] = {
							{ 61.9, 45.3, UNDERCITY },
							{ 28.8, 65.7, ORGRIMMAR },
						},
						["description"] = "Grants 150 reputation with Undercity",
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21438, 10 },	-- Horde Commendation Signet
						},
					}),
					q(8825, {	-- Ten Commendation Signets (1/2) [Thunder Bluff]
						["qgs"] = {
							15767,	-- Officer Thunderstrider <Thunder Bluff Commendations> [TB]
							15739,	-- Thunder Bluff Commendation Officer [ORG]
						},
						["coords"] = {
							{ 42.4, 57.0, THUNDER_BLUFF },
							{ 33.1, 71.5, ORGRIMMAR },
						},
						["description"] = "Grants 150 reputation with Thunder Bluff",
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 21438, 10 },	-- Horde Commendation Signet
						},
					}),
					q(8843, {	-- Ten Commendation Signets (2/2) [Thunder Bluff]
						["qgs"] = {
							15767,	-- Officer Thunderstrider <Thunder Bluff Commendations> [TB]
							15739,	-- Thunder Bluff Commendation Officer [ORG]
						},
						["sourceQuest"] = 8825,	-- Ten Commendation Signets (1/2) [Thunder Bluff]
						["coords"] = {
							{ 42.4, 57.0, THUNDER_BLUFF },
							{ 33.1, 71.5, ORGRIMMAR },
						},
						["description"] = "Grants 150 reputation with Thunder Bluff",
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21438, 10 },	-- Horde Commendation Signet
						},
					}),
					q(8826, {	-- Ten Commendation Signets (1/2) [Darkspear]
						["qgs"] = {
							15733,	-- Darkspear Commendation Officer [ORG]
							15761,	-- Officer Vu'Shalay <Darkspear Commendations> [ORG]
						},
						["coords"] = {
							{ 33.4, 75.4, ORGRIMMAR },
							{ 46.3, 35.1, ORGRIMMAR },
						},
						["description"] = "Grants 150 reputation with Darkspear",
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 21438, 10 },	-- Horde Commendation Signet
						},
					}),
					q(8845, {	-- Ten Commendation Signets (2/2) [Darkspear]
						["qgs"] = {
							15733,	-- Darkspear Commendation Officer [ORG]
							15761,	-- Officer Vu'Shalay <Darkspear Commendations> [ORG]
						},
						["sourceQuest"] = 8826,	-- Ten Commendation Signets (1/2) [Darkspear]
						["coords"] = {
							{ 33.4, 75.4, ORGRIMMAR },
							{ 46.3, 35.1, ORGRIMMAR },
						},
						["description"] = "Grants 150 reputation with Darkspear",
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 21438, 10 },	-- Horde Commendation Signet
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
					q(8615, {	-- The Horde Needs Baked Salmon!
						["qg"] = 15535,	-- Chief Sharpclaw <Baked Salmon Collector>
						["coord"] = { 28.8, 67.8, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 13935, 20 },	-- Baked Salmon
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21513),	-- Ahn'Qiraj War Effort Supplies [Level 50]
						},
					}),
					q(8616, {	-- The Horde Needs More Baked Salmon!
						["qg"] = 15535,	-- Chief Sharpclaw <Baked Salmon Collector>
						["sourceQuest"] = 8615,	-- The Horde Needs Baked Salmon!
						["coord"] = { 28.8, 67.8, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 13935, 20 },	-- Baked Salmon
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21513),	-- Ahn'Qiraj War Effort Supplies [Level 50]
						},
					}),
					q(8532, {	-- The Horde Needs Copper Bars!
						["qg"] = 15459,	-- Miner Cromwell <Copper Bar Collector>
						["coord"] = { 31.1, 66.1, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 2840, 20 },	-- Copper Bar
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21509),	-- Ahn'Qiraj War Effort Supplies [Level 10]
						},
					}),
					q(8533, {	-- The Horde Needs More Copper Bars!
						["qg"] = 15459,	-- Miner Cromwell <Copper Bar Collector>
						["sourceQuest"] = 8532,	-- The Horde Needs Copper Bars!
						["coord"] = { 31.1, 66.1, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 2840, 20 },	-- Copper Bar
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21509),	-- Ahn'Qiraj War Effort Supplies [Level 10]
						},
					}),
					q(8580, {	-- The Horde Needs Firebloom!
						["qg"] = 15508,	-- Batrider Pele'keiki <Firebloom Collector>
						["coord"] = { 32.8, 70.4, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 4625, 20 },	-- Firebloom
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21511),	-- Ahn'Qiraj War Effort Supplies [Level 30]
						},
					}),
					q(8581, {	-- The Horde Needs More Firebloom!
						["qg"] = 15508,	-- Batrider Pele'keiki <Firebloom Collector>
						["sourceQuest"] = 8580,	-- The Horde Needs Firebloom!
						["coord"] = { 32.8, 70.4, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 4625, 20 },	-- Firebloom
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21511),	-- Ahn'Qiraj War Effort Supplies [Level 30]
						},
					}),
					q(8588, {	-- The Horde Needs Heavy Leather!
						["qg"] = 15515,	-- Skinner Jamani <Heavy Leather Collector>
						["coord"] = { 36.0, 73.4, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 4234, 10 },	-- Heavy Leather
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21511),	-- Ahn'Qiraj War Effort Supplies [Level 30]
						},
					}),
					q(8589, {	-- The Horde Needs More Heavy Leather!
						["qg"] = 15515,	-- Skinner Jamani <Heavy Leather Collector>
						["sourceQuest"] = 8588,	-- The Horde Needs Heavy Leather!
						["coord"] = { 36.0, 73.4, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 4234, 10 },	-- Heavy Leather
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21511),	-- Ahn'Qiraj War Effort Supplies [Level 30]
						},
					}),
					q(8611, {	-- The Horde Needs Lean Wolf Steaks!
						["qg"] = 15533,	-- Bloodguard Rawtar <Lean Wolf Steak Collector>
						["coord"] = { 29.5, 68.8, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 12209, 20 },	-- Lean Wolf Steak
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21510),	-- Ahn'Qiraj War Effort Supplies [Level 20]
						},
					}),
					q(8612, {	-- The Horde Needs More Lean Wolf Steaks!
						["qg"] = 15533,	-- Bloodguard Rawtar <Lean Wolf Steak Collector>
						["sourceQuest"] = 8611,	-- The Horde Needs Lean Wolf Steaks!
						["coord"] = { 29.5, 68.8, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 12209, 20 },	-- Lean Wolf Steak
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21510),	-- Ahn'Qiraj War Effort Supplies [Level 20]
						},
					}),
					q(8607, {	-- The Horde Needs Mageweave Bandages!
						["qg"] = 15529,	-- Lady Callow <Mageweave Bandage Collector>
						["coord"] = { 31.3, 75.1, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 8544, 20 },	-- Mageweave Bandage
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21512),	-- Ahn'Qiraj War Effort Supplies [Level 40]
						},
					}),
					q(8608, {	-- The Horde Needs More Mageweave Bandages!
						["qg"] = 15529,	-- Lady Callow <Mageweave Bandage Collector>
						["sourceQuest"] = 8607,	-- The Horde Needs Mageweave Bandages!
						["coord"] = { 31.3, 75.1, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 8544, 20 },	-- Mageweave Bandage
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21512),	-- Ahn'Qiraj War Effort Supplies [Level 40]
						},
					}),
					q(8545, {	-- The Horde Needs Mithril Bars!
						["qg"] = 15469,	-- Senior Sergeant T'kelah <Mithril Bar Collector>
						["coord"] = { 31.5, 66.8, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 3860, 20 },	-- Mithril Bar
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21512),	-- Ahn'Qiraj War Effort Supplies [Level 40]
						},
					}),
					q(8546, {	-- The Horde Needs More Mithril Bars!
						["qg"] = 15469,	-- Senior Sergeant T'kelah <Mithril Bar Collector>
						["sourceQuest"] = 8545,	-- The Horde Needs Mithril Bars!
						["coord"] = { 31.5, 66.8, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 3860, 20 },	-- Mithril Bar
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21512),	-- Ahn'Qiraj War Effort Supplies [Level 40]
						},
					}),
					q(8549, {	-- The Horde Needs Peacebloom!
						["qg"] = 15477,	-- Herbalist Proudfeather <Peacebloom Collector>
						["coord"] = { 33.3, 69.6, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 2447, 20 },	-- Peacebloom
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21509),	-- Ahn'Qiraj War Effort Supplies [Level 10]
						},
					}),
					q(8550, {	-- The Horde Needs More Peacebloom!
						["qg"] = 15477,	-- Herbalist Proudfeather <Peacebloom Collector>
						["sourceQuest"] = 8549,	-- The Horde Needs Peacebloom!
						["coord"] = { 33.3, 69.6, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 2447, 20 },	-- Peacebloom
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21509),	-- Ahn'Qiraj War Effort Supplies [Level 10]
						},
					}),
					q(8582, {	-- The Horde Needs Purple Lotus!
						["qg"] = 15512,	-- Apothecary Jezel <Purple Lotus Collector>
						["coord"] = { 32.8, 68.7, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 8831, 20 },	-- Purple Lotus
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21512),	-- Ahn'Qiraj War Effort Supplies [Level 40]
						},
					}),
					q(8583, {	-- The Horde Needs More Purple Lotus!
						["qg"] = 15512,	-- Apothecary Jezel <Purple Lotus Collector>
						["sourceQuest"] = 8582,	-- The Horde Needs Purple Lotus!
						["coord"] = { 32.8, 68.7, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 8831, 20 },	-- Purple Lotus
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21512),	-- Ahn'Qiraj War Effort Supplies [Level 40]
						},
					}),
					q(8600, {	-- The Horde Needs Rugged Leather!
						["qg"] = 15525,	-- Doctor Serratus <Rugged Leather Collector>
						["coord"] = { 35.1, 72.6, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 8170, 10 },	-- Rugged Leather
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21513),	-- Ahn'Qiraj War Effort Supplies [Level 50]
						},
					}),
					q(8601, {	-- The Horde Needs More Rugged Leather!
						["qg"] = 15525,	-- Doctor Serratus <Rugged Leather Collector>
						["sourceQuest"] = 8600,	-- The Horde Needs Rugged Leather!
						["coord"] = { 35.1, 72.6, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 8170, 10 },	-- Rugged Leather
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21513),	-- Ahn'Qiraj War Effort Supplies [Level 50]
						},
					}),
					q(8609, {	-- The Horde Needs Runecloth Bandages!
						["qg"] = 15532,	-- Stoneguard Clayhoof <Runecloth Bandage Collector>
						["coord"] = { 32.2, 75.3, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 14529, 20 },	-- Runecloth Bandage
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21513),	-- Ahn'Qiraj War Effort Supplies [Level 50]
						},
					}),
					q(8610, {	-- The Horde Needs More Runecloth Bandages!
						["qg"] = 15532,	-- Stoneguard Clayhoof <Runecloth Bandage Collector>
						["sourceQuest"] = 8609,	-- The Horde Needs Runecloth Bandages!
						["coord"] = { 32.2, 75.3, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 14529, 20 },	-- Runecloth Bandage
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21513),	-- Ahn'Qiraj War Effort Supplies [Level 50]
						},
					}),
					q(8613, {	-- The Horde Needs Spotted Yellowtail!
						["qg"] = 15534,	-- Fisherman Lin'do <Spotted Yellowtail Collector>
						["coord"] = { 29.0, 68.5, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 6887, 20 },	-- Spotted Yellowtail
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21512),	-- Ahn'Qiraj War Effort Supplies [Level 40]
						},
					}),
					q(8614, {	-- The Horde Needs More Spotted Yellowtail!
						["qg"] = 15534,	-- Fisherman Lin'do <Spotted Yellowtail Collector>
						["sourceQuest"] = 8613,	-- The Horde Needs Spotted Yellowtail!
						["coord"] = { 29.0, 68.5, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 6887, 20 },	-- Spotted Yellowtail
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21512),	-- Ahn'Qiraj War Effort Supplies [Level 40]
						},
					}),
					q(8590, {	-- The Horde Needs Thick Leather!
						["qg"] = 15522,	-- Sergeant Umala <Thick Leather Collector>
						["coord"] = { 34.0, 72.7, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 4304, 10 },	-- Thick Leather
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21512),	-- Ahn'Qiraj War Effort Supplies [Level 40]
						},
					}),
					q(8591, {	-- The Horde Needs More Thick Leather!
						["qg"] = 15522,	-- Sergeant Umala <Thick Leather Collector>
						["sourceQuest"] = 8590,	-- The Horde Needs Thick Leather!
						["coord"] = { 34.0, 72.7, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 4304, 10 },	-- Thick Leather
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21512),	-- Ahn'Qiraj War Effort Supplies [Level 40]
						},
					}),
					q(8542, {	-- The Horde Needs Tin Bars!
						["qg"] = 15460,	-- Grunt Maug <Tin Bar Collector>
						["coord"] = { 30.9, 65.4, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 3576, 20 },	-- Tin Bar
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21510),	-- Ahn'Qiraj War Effort Supplies [Level 20]
						},
					}),
					q(8543, {	-- The Horde Needs More Tin Bars!
						["qg"] = 15460,	-- Grunt Maug <Tin Bar Collector>
						["sourceQuest"] = 8542,	-- The Horde Needs Tin Bars!
						["coord"] = { 30.9, 65.4, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 3576, 20 },	-- Tin Bar
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21510),	-- Ahn'Qiraj War Effort Supplies [Level 20]
						},
					}),
					q(8604, {	-- The Horde Needs Wool Bandages!
						["qg"] = 15528,	-- Healer Longrunner <Wool Bandage Collector>
						["coord"] = { 31.2, 74.1, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 3530, 20 },	-- Wool Bandage
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21510),	-- Ahn'Qiraj War Effort Supplies [Level 20]
						},
					}),
					q(8605, {	-- The Horde Needs More Wool Bandages!
						["qg"] = 15528,	-- Healer Longrunner <Wool Bandage Collector>
						["sourceQuest"] = 8604,	-- The Horde Needs Wool Bandages!
						["coord"] = { 31.2, 74.1, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 3530, 20 },	-- Wool Bandage
						},
						["groups"] = {
							i(21438),	-- Horde Commendation Signet
							i(21510),	-- Ahn'Qiraj War Effort Supplies [Level 20]
						},
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
				},
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