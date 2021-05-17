---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(MULGORE, {
			n(VENDORS, {
				n(5940, {	-- Harn Longcast <Fishing Supplies>
					["coord"] = { 47.6, 55.0, MULGORE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6328),	-- Recipe: Longjaw Mud Snapper
					},
				}),
				n(3081, {	-- Wunna Darkmane <Trade Goods>
					["coord"] = { 46.2, 58.2, MULGORE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5484),	-- Recipe: Roasted Kodo Mea
					},
				}),
				n(3685, {	-- Harb Clawhoof <Kodo Mounts>
					["coord"] = { 47.6, 58.4, MULGORE },
					["races"] = HORDE_ONLY,
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