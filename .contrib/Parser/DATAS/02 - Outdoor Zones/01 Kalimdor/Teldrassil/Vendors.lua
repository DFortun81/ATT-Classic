---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(TELDRASSIL, {	-- Teldrassil
			n(-2, {	-- Vendors
				n(10118, {	-- Nessa Shadowsong <Fishing Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6326),	-- Recipe: Slitherskin Mackerel
						i(6368),	-- Recipe: Rainbow Fin Albacore				
					},
					["coord"] = { 56.3, 92.4, TELDRASSIL },
				}),
				n(4265, {	-- Nyoma <Cooking Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6328),	-- Recipe: Longjaw Mud Snapper
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
					["coord"] = { 57.2, 61.3, TELDRASSIL },
				}),
			}),	
		}),
	}),
};