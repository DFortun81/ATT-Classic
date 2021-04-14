---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(SEARING_GORGE, {
			n(ZONEDROPS, {
				i(10511, {	-- Golem Oil
					["questID"] = 3442,	-- The Flawless Flame
					["crs"] = {
						5854,	-- Heavy War Golem
						5855,	-- Magma Elemental
						5853,	-- Tempered War Golem
					},
				}),
				i(11818, {	-- Grimesilt Outhouse Key
					["questID"] = 4451,	-- The Key to Freedom
					["crs"] = {
						15692,	-- Dark Iron Kidnapper
						8566,	-- Dark Iron Lookout
						8504,	-- Dark Iron Sentry
						5844,	-- Dark Iron Slaver
						5840,	-- Dark Iron Steamsmith
						5846,	-- Dark Iron Taskmaster
					},
				}),
				i(10509, {	-- Heart of Flame
					["questID"] = 3442,	-- The Flawless Flame
					["crs"] = {
						5850,	-- Blazing Elemental
						5852,	-- Inferno Elemental
						5855,	-- Magma Elemental
						8281,	-- Scald
					},
				}),
				i(18944, {	-- Incendosaur Scale
					["cr"] = 9318,	-- Incendosaur
				}),
				i(18960, {	-- Lookout's Spyglass
					["questID"] = 7728,	-- STOLEN: Smithing Tuyere and Lookout's Spyglass
					["cr"] = 8566,	-- Dark Iron Lookout
				}),
				i(10000, {	-- Margol's Horn
					["questID"] = 3181,	-- The Horn of the Beast
					["coord"] = { 73.6, 82.6, SEARING_GORGE },
					["cr"] = 5833,	-- Margol the Rager
					["races"] = ALLIANCE_ONLY,
				}),
				i(14476, {	-- Pattern: Cindercloth Gloves
					["cr"] = 5861,	-- Twilight Fire Guard
				}),
				i(14471, {	-- Pattern: Cindercloth Vest
					["cr"] = 5861,	-- Twilight Fire Guard
				}),
				i(10458, {	-- Prayer to Elune
					["questID"] = 3378,	-- Prayer to Elune
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						5860,	-- Twilight Dark Shaman
						5861,	-- Twilight Fire Guard
						5862,	-- Twilight Geomancer
						8419,	-- Twilight Idolater
					},
				}),
				un(PHASE_FIVE, i(21547, {	-- Recipe: Elixir of Greater Firepower
					["crs"] = {
						5844,	-- Dark Iron Slaver
						5846,	-- Dark Iron Taskmaster
						8637,	-- Dark Iron Watchman
					},
				})),
				i(18959, {	-- Smithing Tuyere
					["questID"] = 7728,	-- STOLEN: Smithing Tuyere and Lookout's Spyglass
					["cr"] = 5840,	-- Dark Iron Steamsmith
				}),
				i(11725, {	-- Solid Crystal Leg Shaft
					["questID"] = 4450,	-- Ledger from Tanaris
					["cr"] = 5856,	-- Glassweb Spider
				}),
				i(10552, {	-- Symbol of Ragnaros
					["questID"] = 3452,	-- The Flame's Casing
					["crs"] = {
						5860,	-- Twilight Dark Shaman
						5861,	-- Twilight Fire Guard
						5862,	-- Twilight Geomancer
						8419,	-- Twilight Idolater
					},
				}),
				i(10551, {	-- Thorium Plated Dagger
					["questID"] = 3443,	-- Forging the Shaft
					["crs"] = {
						5839,	-- Dark Iron Geologist
						15692,	-- Dark Iron Kidnapper
						8566,	-- Dark Iron Lookout
						8504,	-- Dark Iron Sentry
						5844,	-- Dark Iron Slaver
						5840,	-- Dark Iron Steamsmith
						8337,	-- Dark Iron Steelshifter
						5846,	-- Dark Iron Taskmaster
						8637,	-- Dark Iron Watchman
						5843,	-- Slave Worker
					},
				}),
			}),
		}),
	}),
};