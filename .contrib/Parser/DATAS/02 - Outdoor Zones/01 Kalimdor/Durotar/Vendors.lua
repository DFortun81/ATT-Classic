---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(DUROTAR, {	-- Durotar
			n(-2, {	-- Vendors
				n(3881, {	-- Grimtak <Butcher>
					["groups"] = {
						i(5483),	-- Recipe: Scorpid Surprise
					},
				}),
				n(5942, {	-- Zansoa <Fishing Supplies>
					["groups"] = {
						i(6326),	-- Recipe: Slitherskin Mackerel
						i(6368),	-- Recipe: Rainbow Fin Albacore
					},
				}),
			}),	
		}),
	}),
};