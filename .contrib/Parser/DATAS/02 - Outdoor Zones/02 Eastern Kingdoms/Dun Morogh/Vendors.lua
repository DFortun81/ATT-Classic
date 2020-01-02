---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(DUN_MOROGH, {	-- Dun Morogh
			n(-2, {	-- Vendors
				n(8508, {	-- Gretta Ganter <Fisherman Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
					},
				}),	
				n(7955, {	-- Milli Featherwhistle <Mechanostrider Merchant>
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 49.0, 48.0, DUN_MOROGH },
					["maps"] = { DUN_MOROGH },
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
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 63.4, 50.6, DUN_MOROGH },
					["maps"] = { DUN_MOROGH },
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