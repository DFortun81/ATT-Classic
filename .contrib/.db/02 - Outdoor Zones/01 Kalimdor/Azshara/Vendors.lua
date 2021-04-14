---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(AZSHARA, {
			n(VENDORS, {
				n(12957, {	-- Blimo Gadgetspring <Trade Supplier>
					["coord"] = { 45.2, 90.8, AZSHARA },
					["groups"] = {
						i(15729),	-- Pattern: Chimeric Gloves
						i(15751),	-- Pattern: Blue Dragonscale Breastplate
					},
				}),
				n(14301, {	-- Brinna Valanaar <Bowyer>
					["coord"] = { 12.0, 78.4, AZSHARA },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11305),	-- Dense Shortbow
					},
				}),
				n(8678, {	-- Jubie Gadgetspring <Engineering Supplier>
					["coord"] = { 45.2, 90.8, AZSHARA },
					["groups"] = {
						i(10607),	-- Schematic: Deepdive Helmet
					},
				}),
			}),
		}),
	}),
};