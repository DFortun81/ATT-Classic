---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(AZSHARA, {	-- Azshara
			n(-2, {	-- Vendor
				n(12957, {	-- Blimo Gadgetspring <Trade Supplier>
					["groups"] = {
						i(15729),	-- Pattern: Chimeric Gloves
						i(15751),	-- Pattern: Blue Dragonscale Breastplate
					},
				}),
				n(14301, {	-- Brinna Valanaar <Bowyer>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11305),	-- Dense Shortbow
					},
					["coord"] = { 12.0, 78.4, AZSHARA },
				}),
				n(8678, {	-- Jubie Gadgetspring <Engineering Supplier>
					["groups"] = {
						i(10607),	-- Schematic: Deepdive Helmet
					},
				}),
			}),
		}),
	}),
};