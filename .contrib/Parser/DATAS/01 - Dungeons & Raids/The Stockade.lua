-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = {
	map(THE_STOCKADE, {	-- The Stockade
		["description"] = "The Stockade is a high-security prison complex, hidden beneath the canal district of Stormwind city. Presided over by Warden Thelwater, the Stockade is home to petty crooks, political insurgents, murderers and a score of the most dangerous criminals in the land. Recently, a prisoner-led revolt has resulted in a state of pandemonium within the stockade - where the guards have been driven out and the convicts roam free. Warden Thelwater has managed to escape the holding area and is currently enlisting brave thrill-seekers to venture into the prison and kill the uprising's mastermind - the cunning felon, Bazil Thredd.",
		["coord"] = { 39.77, 54.21, STORMWIND_CITY },
		["lvl"] = 15,
		["g"] = {
			n(-17, {	-- Quests
				q(377, {	-- Crime and Punishment
					["qg"] = 270,	-- Councilman Millstipe
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 72.0, 46.8, DUSKWOOD },
					["maps"] = { DUSKWOOD },
					["lvl"] = 26,
					["g"] = {
						i(2906),	-- Darkshire Mail Leggings
						i(2033),	-- Ambassador's Boots
					},
				}),
				q(387, {	-- Quell The Uprising
					["qg"] = 1719,	-- Warden Thelwater
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 39.77, 54.21, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["lvl"] = 22,
				}),
				q(388, {	-- The Color of Blood
					["qg"] = 1721,	-- Nikova Raskol
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 73.2, 55.2, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["lvl"] = 22,
				}),
				q(378, {	-- The Fury Runs Deep
					["qg"] = 1074,	-- Motley Garmason
					["sourceQuest"] = 303,	-- The Dark Iron War
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 49.8, 18.2, WETLANDS },
					["maps"] = { WETLANDS },
					["lvl"] = 25,
					["g"] = {
						i(1264),	-- Headbasher
						i(3562),	-- Belt of Vindication
					},
				}),
				q(391, {	-- The Stockade Riots
					["qg"] = 1719,	-- Warden Thelwater
					["sourceQuest"] = 389,	-- Bazil Thredd
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 39.77, 54.21, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["lvl"] = 16,
				}),
				q(386, { 	-- What Comes Around...
					["qg"] = 859,	-- Guard Berton
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 26, 43, REDRIDGE_MOUNTAINS },
					["maps"] = { REDRIDGE_MOUNTAINS },
					["lvl"] = 22,
					["g"] = {
						i(1317),	-- Hardened Root Staff
						i(3400),	-- Lucine Longsword
					},
				}),
			}),
			n(0, {	-- Zone Drop
				i(1076),	-- Defias Renegade Ring
			}),
			n(1720, {	-- Bruegal Ironknuckle
				["description"] = "This is a rare that was not always present.",
				["g"] = {
					i(2942),	-- Iron Knuckles
					i(3228),	-- Jimmied Handcuffs
					i(2941),	-- Prison Shank
					i(4306),	-- Silk Cloth
				},
			}),
			n(1666, { 	-- Kam Deepfury
				i(3640),	-- Head of Deepfury
				i(2280),	-- Kam's Walking Stick
				i(4306),	-- Silk Cloth
			}),
			n(1663, {	-- Dextren Ward
				i(3628),	-- Hand of Dextren Ward
				i(2909),	-- Red Wool Bandana
				i(4306),	-- Silk Cloth
			}),
			n(1717, {	-- Hamhock
				i(4306),	-- Silk Cloth
			}),
			n(1696, {	-- Targorr the Dread
				i(3630),	-- Head of Targorr
				i(2592),	-- Wool Cloth
			}),
			n(1716, {	-- Bazil Thredd
				i(2926),	-- Head of Bazil Thredd
				i(2909),	-- Red Wool Bandana
				i(4306),	-- Silk Cloth
			}),
		},
	}),
};
