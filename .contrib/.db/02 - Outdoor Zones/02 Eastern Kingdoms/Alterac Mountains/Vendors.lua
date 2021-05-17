---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(ALTERAC_MOUNTAINS, {
			n(VENDORS, {
				n(2480, {	-- Bro'kin <Alchemy Supplies>
					["coord"] = { 38.0, 38.0, ALTERAC_MOUNTAINS },
					["groups"] = {
						i(14634),	-- Recipe: Frost Oil
					},
				}),
				n(2684, {	-- Rizz Loosebolt <Engineering Supplies>
					["coord"] = { 47.3, 35.2, ALTERAC_MOUNTAINS },
					["groups"] = {
						i(13308),	-- Schematic: Ice Deflector
					},
				}),
				n(6779, {	-- Smudge Thunderwood <Poison Vendor>
					["coord"] = { 86.0, 79.6, ALTERAC_MOUNTAINS },
					["classes"] = { ROGUE },
					["groups"] = {
						i(18160),	-- Recipe: Thistle Tea
					},
				}),
				n(6777, {	-- Zan Shivsproket <Speciality Engineer>
					["coord"] = { 86.0, 80.0, ALTERAC_MOUNTAINS },
					["groups"] = {
						i(7742),	-- Schematic: Gnomish Cloaking Device
					},
				}),
			}),
		}),
	}),
};