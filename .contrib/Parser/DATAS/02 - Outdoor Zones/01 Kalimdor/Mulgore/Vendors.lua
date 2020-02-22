---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(MULGORE, {
			n(VENDORS, {
				n(5940, {	-- Harn Longcast <Fishing Supplies>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6328),	-- Recipe: Longjaw Mud Snapper
					},
				}),
				n(3081, {	-- Wunna Darkmane <Trade Goods>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5484),	-- Recipe: Roasted Kodo Mea
					},
				}),
				n(3685, {	-- Harb Clawhoof <Kodo Mounts>
					["races"] = HORDE_ONLY,
					["coord"] = { 47.6, 58.4, MULGORE },
					["maps"] = { MULGORE },
					["groups"] = {
						i(15277),	-- Gray Kodo
						i(15290),	-- Brown Kodo
						i(18793),	-- Great White Kodo
						i(18794),	-- Great Brown Kodo
						i(18795),	-- Great Gray Kodo
					},
				}),
			}),	
		}),
	}),
};