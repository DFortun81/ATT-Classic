---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DUROTAR, {	-- Durotar
			n(-2, {	-- Vendors
				n(3881, {	-- Grimtak <Butcher>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5483),	-- Recipe: Scorpid Surprise
					},
				}),
				n(5942, {	-- Zansoa <Fishing Supplies>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6326),	-- Recipe: Slitherskin Mackerel
						i(6368),	-- Recipe: Rainbow Fin Albacore
					},
				}),
				n(7952, {	-- Zjolnir <Raptor Handler>
					["races"] = HORDE_ONLY,
					["coord"] = { 55.2, 75.6, DUROTAR },
					["maps"] = { DUROTAR },
					["groups"] = {
						i(8588),	-- Whistle of the Emerald Raptor
						i(8591),	-- Whistle of the Turquoise Raptor
						i(8592),	-- Whistle of the Violet Raptor
						i(18788),	-- Swift Blue Raptor
						i(18789),	-- Swift Olive Raptor
						i(18790),	-- Swift Orange Raptor
					},
				}),
			}),
		}),
	}),
};