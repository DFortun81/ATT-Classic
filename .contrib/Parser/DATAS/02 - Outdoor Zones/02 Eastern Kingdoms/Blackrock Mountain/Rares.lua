---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(BLACKROCK_MOUNTAIN, {	-- Blackrock Mountain
			n(-16, {	-- Rares
				n(9046, {	-- Scarshield Quartermaster <Scarshield Legion>
					["coords"] = {
						--{ , BLACKROCK_MOUNTAIN },	-- TODO: Blackrock Mountain MapID and location
						{ 34.9, 27.9, BURNING_STEPPES },
					},
					["groups"] = {
						{
							["itemID"] = 18987,	-- Blackhand's Command
							["questID"] = 7761,	-- Blackhand's Command
							["u"] = 3,	-- Added in later phase
						},
						i(13248),	-- Burstshot Harquebus
						i(13254),	-- Astral Guard
					},
				}),
			}),
		}),
	}),
};