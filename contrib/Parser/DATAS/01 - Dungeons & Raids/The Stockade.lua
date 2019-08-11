-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = {
	{	-- The Stockade
		["lvl"] = 15,
		["mapID"] = 225,
		["coord"] = { 39.77, 54.21, 1453 },	-- The Stockade, Stormwind City
		["description"] = "The Stockade is a high-security prison complex, hidden beneath the canal district of Stormwind city. Presided over by Warden Thelwater, the Stockade is home to petty crooks, political insurgents, murderers and a score of the most dangerous criminals in the land. Recently, a prisoner-led revolt has resulted in a state of pandemonium within the stockade - where the guards have been driven out and the convicts roam free. Warden Thelwater has managed to escape the holding area and is currently enlisting brave thrill-seekers to venture into the prison and kill the uprising's mastermind - the cunning felon, Bazil Thredd.",
		["g"] = {
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
	},
};
