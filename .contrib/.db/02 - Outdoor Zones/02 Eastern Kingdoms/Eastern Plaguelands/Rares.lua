---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(EASTERN_PLAGUELANDS, {
			n(RARES, {
				i(12843, {	-- Corruptor's Scourgestone
					["description"] = "Can drop from any Undead rare mob or boss in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				n(10827, {  -- Deathspeaker Selendre <Cult of the Damned>
					["coords"] = {
						{ 41.4, 49.2, EASTERN_PLAGUELANDS },
						{ 82.8, 40.0, EASTERN_PLAGUELANDS },
						{ 85.8, 46.2, EASTERN_PLAGUELANDS },
					},
				}),
				n(10817, {  -- Duggan Wildhammer
					["races"] = HORDE_ONLY,
					["coords"] = {
						{ 49.4, 63.2, EASTERN_PLAGUELANDS },
						{ 41.8, 69.8, EASTERN_PLAGUELANDS },
						{ 32.8, 83.0, EASTERN_PLAGUELANDS },
						{ 25.8, 88.6, EASTERN_PLAGUELANDS },
						{ 19.8, 64.4, EASTERN_PLAGUELANDS },
						{ 15.8, 79.2, EASTERN_PLAGUELANDS },
					},
				}),
				n(10825, {  -- Gish the Unmoving
					["coords"] = {
						{ 51.6, 43.8, EASTERN_PLAGUELANDS },
						{ 53.6, 44.6, EASTERN_PLAGUELANDS },
						{ 54.8, 50.6, EASTERN_PLAGUELANDS },
						{ 57.0, 53.8, EASTERN_PLAGUELANDS },
						{ 63.0, 55.6, EASTERN_PLAGUELANDS },
						{ 67.0, 57.0, EASTERN_PLAGUELANDS },
						{ 72.6, 56.8, EASTERN_PLAGUELANDS },
					},
				}),
				n(10821, {  -- Hed'mush the Rotting
					["coords"] = {
						{ 55.6, 25.4, EASTERN_PLAGUELANDS },
						{ 67.4, 50.2, EASTERN_PLAGUELANDS },
						{ 39.0, 74.6, EASTERN_PLAGUELANDS },
					},
				}),
				n(10828, {  -- High General Abbendis
					["coords"] = {
						{ 80.6, 85.6, EASTERN_PLAGUELANDS },
						{ 88.4, 86.6, EASTERN_PLAGUELANDS },
					},
				}),
				n(10826, {  -- Lord Darkscythe
					["coords"] = {
						{ 26.0, 33.4, EASTERN_PLAGUELANDS },
						{ 35.0, 24.8, EASTERN_PLAGUELANDS },
						{ 39.2, 27.0, EASTERN_PLAGUELANDS },
						{ 43.6, 28.8, EASTERN_PLAGUELANDS },
						{ 40.0, 36.4, EASTERN_PLAGUELANDS },
					},
					["groups"] = {
						i(16039),	-- Ta'Kierthan Songblade
					},
				}),
				n(10824, {  -- Ranger Lord Hawkspear
					["coord"] = { 53.4, 16.0, EASTERN_PLAGUELANDS },
				}),
				n(10822, {  -- Warlord Thresh'jin
					["coords"] = {
						{ 65.6, 21.8, EASTERN_PLAGUELANDS },
						{ 68.8, 20.8, EASTERN_PLAGUELANDS },
						{ 70.8, 19.8, EASTERN_PLAGUELANDS },
						{ 72.4, 13.0, EASTERN_PLAGUELANDS },
					},
				}),
				n(10823, {  -- Zul'Brin Warpbranch
					["coords"] = {
						{ 68.2, 21.2, EASTERN_PLAGUELANDS },
						{ 69.4, 16.4, EASTERN_PLAGUELANDS },
						{ 72.6, 18.8, EASTERN_PLAGUELANDS },
						{ 72.6, 13.4, EASTERN_PLAGUELANDS },
					},
				}),
			}),
		}),
	}),
};