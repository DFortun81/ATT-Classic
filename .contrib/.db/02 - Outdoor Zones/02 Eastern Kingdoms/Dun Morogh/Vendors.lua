---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(DUN_MOROGH, {
			n(VENDORS, {
				n(8508, {	-- Gretta Ganter <Fisherman Supplies>
					["coord"] = { 31.6, 44.6, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
					},
				}),
				n(1247, {	-- Innkeeper Belm <Innkeeper>
					["coord"] = { 47.4, 52.6, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2894),	-- Rhapsody Malt
						i(2686),	-- Thunder Ale
					},
				}),
				n(7955, {	-- Milli Featherwhistle <Mechanostrider Merchant>
					["coord"] = { 49.0, 48.0, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8563),	-- Red Mechanostrider
						i(8595),	-- Blue Mechanostrider
						i(13321),	-- Green Mechanostrider
						i(13322),	-- Unpainted Mechanostrider
						i(18772),	-- Swift Green Mechanostrider
						i(18773),	-- Swift White Mechanostrider
						i(18774),	-- Swift Yellow Mechanostrider
					},
				}),
				n(1261, {	-- Veron Amberstill <Ram Breeder>
					["coord"] = { 63.4, 50.6, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5864),	-- Gray Ram
						i(5872),	-- Brown Ram
						i(5873),	-- White Ram
						i(18785),	-- Swift White Ram
						i(18786),	-- Swift Brown Ram
						i(18787),	-- Swift Gray Ram
					},
				}),
			}),
		}),
	}),
};