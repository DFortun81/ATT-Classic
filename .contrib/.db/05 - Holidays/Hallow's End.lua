--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays = bubbleDown({ ["u"] = HALLOWS_END },
{
	n(-58, {	-- Hallow's End
		n(QUESTS, {
			q(8353, {	-- Chicken Clucking for a Mint
				["lvl"] = 10,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 5111,	-- Innkeeper Firebrew <Innkeeper>
				["repeatable"] = true,
				["g"] = {
					i(20490),	-- Ironforge Mint
				},
			}),
			q(8354, {	-- Chicken Clucking for a Mint
				["lvl"] = 10,
				["races"] = HORDE_ONLY,
				["qg"] = 6741,	-- Innkeeper Norman <Innkeeper>
				["repeatable"] = true,
				["g"] = {
					i(20491),	-- Undercity Mint
				},
			}),
			q(8357, {	-- Dancing for Marzipan
				["lvl"] = 10,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 6735,	-- Innkeeper Saelienne <Innkeeper>
				["repeatable"] = true,
				["g"] = {
					i(20496),	-- Darnassus Marzipan
				},
			}),
			q(8360, {	-- Dancing for Marzipan
				["lvl"] = 10,
				["races"] = HORDE_ONLY,
				["qg"] = 6746,	-- Innkeeper Pala <Innkeeper>
				["repeatable"] = true,
				["g"] = {
					i(20497),	-- Thunder Bluff Marzipan
				},
			}),
			q(8356, {	-- Flexing for Nougat
				["lvl"] = 10,
				["races"] = HORDE_ONLY,
				["qg"] = 6740,	-- Innkeeper Allison <Innkeeper>
				["repeatable"] = true,
				["g"] = {
					i(20492),	-- Stormwind Nougat
				},
			}),
			q(8359, {	-- Flexing for Nougat
				["lvl"] = 10,
				["races"] = HORDE_ONLY,
				["qg"] = 6929,	-- Innkeeper Gryshka <Innkeeper>
				["repeatable"] = true,
				["g"] = {
					i(20493),	-- Orgrimmar Nougat
				},
			}),
			q(8311, {	-- Hallow's End Treats for Jesper!
				["lvl"] = 10,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 15310,	-- Jesper
				["repeatable"] = true,
				["cost"] = {
					{ "i", 20492, 1 },	-- Stormwind Nougat
					{ "i", 20494, 1 },	-- Gnomeregan Gumdrop
					{ "i", 20490, 1 },	-- Ironforge Mint
					{ "i", 20496, 1 },	-- Darnassus Marzipan
				},
				["g"] = {
					i(20557),	-- Hallow's End Pumpkin Treat
				},
			}),
			q(8312, {	-- Hallow's End Treats for Spoops!
				["lvl"] = 10,
				["races"] = HORDE_ONLY,
				["qg"] = 15309,	-- Spoops
				["repeatable"] = true,
				["cost"] = {
					{ "i", 20493, 1 },	-- Orgrimmar Nougat
					{ "i", 20495, 1 },	-- Darkspear Gumdrop
					{ "i", 20491, 1 },	-- Undercity Mint
					{ "i", 20497, 1 },	-- Thunder Bluff Marzipan
				},
				["g"] = {
					i(20557),	-- Hallow's End Pumpkin Treat
				},
			}),
			q(8355, {	-- Incoming Gumdrop
				["lvl"] = 10,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 6826,	-- Talvash del Kissel
				["repeatable"] = true,
				["g"] = {
					i(20494),	-- Gnomeregan Gumdrop
				},
			}),
			q(8358, {	-- Incoming Gumdrop
				["lvl"] = 10,
				["races"] = HORDE_ONLY,
				["qg"] = 11814,	-- Kali Remik
				["repeatable"] = true,
				["g"] = {
					i(20495),	-- Darkspear Gumdrop
				},
			}),
			q(8322, {	-- Rotten Eggs
				["lvl"] = 30,
				["races"] = HORDE_ONLY,
				["qg"] = 15197,	-- Darkcaller Yanka
				["repeatable"] = true,
			}),
			q(8409, {	-- Ruined Kegs
				["lvl"] = 25,
				["races"] = HORDE_ONLY,
				["provider"] = { "o", 180570 },	-- Keg
				["sourceQuest"] = 8322,	-- Rotten Eggs
				["repeatable"] = true,
			}),
			q(1657, {	-- Stinking Up Southshore
				["lvl"] = 25,
				["races"] = HORDE_ONLY,
				["qg"] = 15197,	-- Darkcaller Yanka
				["repeatable"] = true,
			}),
			q(1658, {	-- Crashing the Wickerman Festival
				["lvl"] = 25,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 15199,	-- Sergeant Hartman
				["isYearly"] = true,
			}),
			q(8373, {	-- The Power of Pine
				["lvl"] = 25,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 15199,	-- Sergeant Hartman
				["repeatable"] = true,
			}),
		}),
		n(ZONEDROPS, {
			i(20400),	-- Pumpkin Bag
		}),
	}),
});