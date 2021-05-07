---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(STRANGLETHORN_VALE, {
			o(179697, {	-- Arena Treasure Chest
				["description"] = "Chest is dropped in arena every 3 hours.",
				["groups"] = {
					{
						["itemID"] = 18706,	-- Arena Master
						["questID"] = 7810,	-- Arena Master
					},
					i(18711),	-- Arena Bands
					i(18710),	-- Arena Bracers
					i(18712),	-- Arena Vambraces
					i(18709),	-- Arena Wristguards
				},
			}),
		}),
	}),
};