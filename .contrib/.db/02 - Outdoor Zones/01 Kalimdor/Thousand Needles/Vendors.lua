---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(THOUSAND_NEEDLES, {
			n(VENDORS, {
				n(4877, {	-- Jandia <Trade Supplies>
					["coord"] = { 46.0, 51.6, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5973),	-- Pattern: Barbaric Leggings
					},
				}),
				n(4878, {   -- Montarr <Lorekeeper>
					["coord"] = { 45.2, 50.6, THOUSAND_NEEDLES },
					["groups"] = {
						i(6068),  -- Recipe: Shadow Oil
					},
				}),
				n(6730, {	-- Jinky Twizzlefixxit <Engineering Supplies>
					["coord"] = { 77.7, 77.8, THOUSAND_NEEDLES },
					["groups"] = {
						i(7560),	-- Schematic: Gnomish Universal Remote
						i(13309),	-- Schematic: Lovingly Crafted Boomstick
					},
				}),
				n(6548, {	-- Magus Tirth
					["coord"] = { 78.30, 75.70, THOUSAND_NEEDLES },
					["groups"] = {
						i(11023),	-- Ancona Chicken
					},
				}),
				n(9551, {	-- Starn <Gunsmith & Bowyer>
					["coord"] = { 45.0, 50.6, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11304),	-- Fine Longbow
						i(11305),	-- Dense Shortbow
					},
				}),
			}),
		}),
	}),
};