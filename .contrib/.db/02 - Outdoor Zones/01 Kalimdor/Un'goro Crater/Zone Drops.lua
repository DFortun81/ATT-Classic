---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(UNGORO_CRATER, {
			n(ZONEDROPS, {
				i(11107, {	-- A Small Pack
					["coord"] = { 63.1, 68.5, UNGORO_CRATER },
					["groups"] = {
						i(11106, {	-- Lion-headed Key
							["questID"] = 3845,	-- It's a Secret to Everybody
						}),
						i(11105, {	-- Curled Map Parchment
							["questID"] = 3845,	-- It's a Secret to Everybody
						}),
						i(11104, {	-- Large Compass
							["questID"] = 3845,	-- It's a Secret to Everybody
						}),
						i(11108),	-- Faded Photograph
						i(3108),	-- Heavy Throwing Dagger
					},
				}),
				i(11316, {	-- Bloodpetal
					["questID"] = 4141,	-- Muigin and Larion
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						6510,	-- Bloodpetal Flayer
						6511,	-- Bloodpetal Thresher
						6509,	-- Bloodpetal Lasher
						6512,	-- Bloodpetal Trapper
					},
				}),
				i(11114, {	-- Dinosaur Bone
					["questID"] = 3845,	-- It's a Secret to Everybody
					["crs"] = {
						9162,	-- Young Diemetradon
						9163,	-- Diemetradon
						9164,	-- Elder Diemetradon
						6502,	-- Plated Stegodon
						6501,	-- Stegodon
						6504,	-- Thunderstomp Stegodon
					},
				}),
				i(12809, {	-- Guardian Stone
					["cr"] = 6560,	-- Stone Guardian
				}),
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
				i(14644, {	-- Skeleton Key Mold
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
				}),
				i(11830, {	-- Webbed Diemetradon Scale
					["questID"] = 4503,	-- Shizzle's Flyer
					["crs"] = {
						9162,	-- Young Diemetradon
						9163,	-- Diemetradon
						9164,	-- Elder Diemetradon
					},
				}),
				i(11831, {	-- Webbed Pterrordax Scale
					["questID"] = 4503,	-- Shizzle's Flyer
					["crs"] = {
						9165,	-- Fledgling Pterrordax
						9166,	-- Pterrordax
						9167,	-- Frenzied Pterrordax
					},
				}),
			}),
		}),
	}),
};