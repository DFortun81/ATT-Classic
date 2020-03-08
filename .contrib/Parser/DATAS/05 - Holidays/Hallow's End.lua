--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays =
{
	n(-58, {	-- Hallow's End
		n(QUESTS, {
			q(8311, {	-- Hallow's End Treats for Jesper!
				["lvl"] = 10,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 15310,	-- Jesper
				["repeatable"] = true,
			}),
			q(8312, {	-- Hallow's End Treats for Spoops!
				["lvl"] = 10,
				["races"] = HORDE_ONLY,
				["qg"] = 15309,	-- Spoops
				["repeatable"] = true,
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
};