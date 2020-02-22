---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(THOUSAND_NEEDLES, {
			n(VENDORS, {
				n(4877, {	-- Jandia <Trade Supplies>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5973),	-- Pattern: Barbaric Leggings				
					},
				}),
				n(6730, {	-- Jinky Twizzlefixxit <Engineering Supplies>
					["groups"] = {
						i(7560),	-- Schematic: Gnomish Universal Remote
						i(13309),	-- Schematic: Lovingly Crafted Boomstick					
					},
					["coord"] = { 77.7, 77.8, THOUSAND_NEEDLES },
				}),
				n(9551, {	-- Starn <Gunsmith & Bowyer>
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