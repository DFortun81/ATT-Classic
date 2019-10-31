---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(MULGORE, {	-- Mulgore
			n(-2, {	-- Vendors
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
			}),	
		}),
	}),
};