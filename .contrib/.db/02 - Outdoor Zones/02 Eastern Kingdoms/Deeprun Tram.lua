---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(DEEPRUN_TRAM, {
			["description"] = "The Deeprun Tram is a long, fully enclosed, underground (and partially underwater) set of double tracks upon which rolls two sets of three wagons, all credited to the gnomes' technical engineering. The service is fast and smooth, and is provided free of charge to travelers between the Alliance-aligned cities of Ironforge and Stormwind City.",
			["g"] = {
				n(QUESTS, {
					q(6661, {	-- Deeprun Rat Roundup
						["qg"] = 12997,	-- Monty
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 17117, 1 },	-- Rat Catcher's Flute
						},
						["lvl"] = 10,
					}),
					q(6662, {	-- Me Brother, Nipsy
						["qg"] = 12997,	-- Monty
						["sourceQuest"] = 6661, -- Deeprun Rat Roundup
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 17118, 1 },	-- Crate of Mystery Meat
						},
						["lvl"] = 10,
						["groups"] = {
							i(17119),	-- Deeprun Rat Kabob
						},
					}),
				}),
			},
		}),
	}),
};