---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(UNGORO_CRATER, {
			n(0, {	-- Zone Drops
				i(20768, {	-- Oozing Bag
					["crs"] = {
						9477,	-- Cloned Ooze
						6559,	-- Glutinous Ooze
						6557,	-- Primal Ooze
					},
					["groups"] = {
						i(20769),	-- Disgusting Oozeling
					},
				}),
				i(15772, {	-- Pattern: Devilsaur Leggings
					["crs"] = {
						9477,	-- Cloned Ooze
						6559,	-- Glutinous Ooze
						6556,	-- Muculent Ooze
						6557,	-- Primal Ooze
					},
				}),
				{
					["itemID"] = 14644,	-- Skeleton Key Mold
					["coord"] = { 49.6, 47.6, UNGORO_CRATER },
					["cost"] = {
						{ "i", 12359, 2 },	-- Thorium Bar
					},
					["groups"] = {
						{
							["itemID"] = 14645,	-- Unfinished Skeleton Key
							["allianceQuestID"] = 5801,	-- Fire Plume Forged (A)
							["hordeQuestID"] = 5802,	-- Fire Plume Forged (H)
						},
					},
				},
			}),
		}),
	}),
};