---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(TELDRASSIL, {	-- Teldrassil
			n(-2, {	-- Vendors
				n(10118, {	-- Nessa Shadowsong <Fishing Supplies>
					["groups"] = {
						i(6326),	-- Recipe: Slitherskin Mackerel
						i(6368),	-- Recipe: Rainbow Fin Albacore				
					},
				}),
				n(4265, {	-- Nyoma <Cooking Supplies>
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6328),	-- Recipe: Longjaw Mud Snapper
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
			}),	
		}),
	}),
};