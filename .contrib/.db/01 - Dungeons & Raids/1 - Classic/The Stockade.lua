-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
_.Instances = { tier(1, {	-- Classic
	map(THE_STOCKADE, {
		["description"] = "The Stockade is a high-security prison complex, hidden beneath the canal district of Stormwind city. Presided over by Warden Thelwater, the Stockade is home to petty crooks, political insurgents, murderers and a score of the most dangerous criminals in the land. Recently, a prisoner-led revolt has resulted in a state of pandemonium within the stockade - where the guards have been driven out and the convicts roam free. Warden Thelwater has managed to escape the holding area and is currently enlisting brave thrill-seekers to venture into the prison and kill the uprising's mastermind - the cunning felon, Bazil Thredd.",
		["coord"] = { 39.77, 54.21, STORMWIND_CITY },
		["lvl"] = 15,
		["g"] = {
			n(QUESTS, {
				q(377, {	-- Crime and Punishment
					["qg"] = 270,	-- Councilman Millstipe
					["coord"] = { 72.0, 46.8, DUSKWOOD },
					["maps"] = { DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3628, 1 },	-- Hand of Dextren Ward
					},
					["lvl"] = 24,
					["g"] = {
						i(2906),	-- Darkshire Mail Leggings
						i(2033),	-- Ambassador's Boots
					},
				}),
				q(387, {	-- Quell The Uprising
					["qg"] = 1719,	-- Warden Thelwater
					["coord"] = { 39.77, 54.21, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(388, {	-- The Color of Blood
					["qg"] = 1721,	-- Nikova Raskol
					["coord"] = { 73.2, 55.2, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2909, 10 },	-- Red Wool Bandana
					},
					["lvl"] = 22,
				}),
				q(378, {	-- The Fury Runs Deep
					["qg"] = 1074,	-- Motley Garmason
					["sourceQuest"] = 303,	-- The Dark Iron War
					["coord"] = { 49.8, 18.2, WETLANDS },
					["maps"] = { WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3640, 1 },	-- Head of Deepfury
					},
					["lvl"] = 25,
					["g"] = {
						i(1264),	-- Headbasher
						i(3562),	-- Belt of Vindication
					},
				}),
				q(391, {	-- The Stockade Riots
					["qg"] = 1719,	-- Warden Thelwater
					["sourceQuest"] = 389,	-- Bazil Thredd
					["coord"] = { 39.77, 54.21, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2926, 1 },	-- Head of Bazil Thredd
					},
					["lvl"] = 16,
					["cost"] = {
						{ "i", 2926, 1 },	-- Head of Bazil Thredd
					},
				}),
				q(386, { 	-- What Comes Around...
					["qg"] = 859,	-- Guard Berton
					["coord"] = { 26, 43, REDRIDGE_MOUNTAINS },
					["maps"] = { REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3630, 1 },	-- Head of Targorr
					},
					["lvl"] = 22,
					["g"] = {
						i(1317),	-- Hardened Root Staff
						i(3400),	-- Lucine Longsword
					},
				}),
			}),
			n(ZONEDROPS, {
				i(1076),	-- Defias Renegade Ring
				{
					["itemID"] = 2909,	-- Red Wool Bandana
					["questID"] = 388,	-- The Color of Blood
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						1716,	-- Bazil Thredd
						1720,	-- Bruegal Ironknuckle
						1707,	-- Defias Captive
						1711,	-- Defias Convict
						1708,	-- Defias Inmate
						1715,	-- Defias Insurgent
						1706,	-- Defias Prisoner
						1663,	-- Dextren Ward
					},
				},
			}),
			n(1720, {	-- Bruegal Ironknuckle
				["description"] = "This is a rare that was not always present.",
				["g"] = {
					i(2942),	-- Iron Knuckles
					i(3228),	-- Jimmied Handcuffs
					i(2941),	-- Prison Shank
				},
			}),
			n(1666, { 	-- Kam Deepfury
				{
					["itemID"] = 3640,	-- Head of Deepfury
					["questID"] = 378,	-- The Fury Runs Deep
					["races"] = ALLIANCE_ONLY,
				},
				i(2280),	-- Kam's Walking Stick
			}),
			n(1663, {	-- Dextren Ward
				{
					["itemID"] = 3628,	-- Hand of Dextren Ward
					["questID"] = 377,	-- Crime and Punishment
					["races"] = ALLIANCE_ONLY,
				},
			}),
			n(1717),	-- Hamhock
			n(1696, {	-- Targorr the Dread
				{
					["itemID"] = 3630,	-- Head of Targorr
					["questID"] = 386,	-- What Comes Around...
					["races"] = ALLIANCE_ONLY,
				},
			}),
			n(1716, {	-- Bazil Thredd
				{
					["itemID"] = 2926,	-- Head of Bazil Thredd
					["questID"] = 391,	-- The Stockade Riots
					["races"] = ALLIANCE_ONLY,
				},
			}),
		},
	}),
})};