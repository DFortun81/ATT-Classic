---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(1415, {	-- Eastern Kingdoms
		m(-3, {	-- Blackrock Mountain
			n(-16, {	-- Rares
				n(9046, {	-- Scarshield Quartermaster <Scarshield Legion>
					["coords"] = {
						--{ , BLACKROCK_MOUNTAIN },	-- TODO: Blackrock Mountain MapID and location
						{ 34.9, 27.9, BURNING_STEPPES },	-- TODO: Burning Steppes MapID and location
					},
					["groups"] = {
						{
							["itemID"] = 18987,	-- Blackhand's Command
							["questID"] = 7761,	-- Blackhand's Command
						},
						i(12219),	-- Unadorned Seal of Ascension
						i(13248),	-- Burstshot Harquebus
						i(13254),	-- Astral Guard
					},
				}),
			}),
		}),
	}),
};