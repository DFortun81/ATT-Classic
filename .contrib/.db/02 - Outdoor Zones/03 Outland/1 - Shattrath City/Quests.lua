---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(OUTLAND, {
		m(SHATTRATH_CITY, {
			n(QUESTS, {
				-- TODO: https://wowwiki-archive.fandom.com/wiki/Wind_Trader_Zhareem
				q(11369, {	-- WANTED: A Black Stalker Egg
					["qg"] = 24369,	-- Wind Trader Zhareem
					["coord"] = { 75, 37, SHATTRATH_CITY },
					["maps"] = { COILFANG_RESERVOIR_UNDERBOG },
					["isDaily"] = true,
					["lvl"] = 70,
					["cost"] = {
						{ "i", 33826, 1 },	-- Black Stalker Egg
					},
				}),
			}),
		}),
	}),
};
