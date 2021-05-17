---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(DUSKWOOD, {
			n(VENDORS, {
				n(844, {	-- Antonio Perelli <Traveling Salesman>
					["coords"] = {
						{ 19.6, 60.6, DUSKWOOD },
						{ 50.8, 66.6, DUSKWOOD },
						{ 75.0, 46.4, DUSKWOOD },
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4817),	-- Blessed Claymore
						i(4818),	-- Executioner's Sword
						i(4778),	-- Heavy Spiked Mace
						i(4777),	-- Ironwood Maul
						i(4795),	-- Bear Bracers
						i(4796),	-- Owl Bracers
						i(4794),	-- Wolf Bracers
					},
				}),
				n(228, {	-- Avette Fellwood <Bowyer>
					["coord"] = { 73.2, 44.8, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11304),	-- Fine Longbow
					},
				}),
				n(274, {	-- Barkeep Hann <Bartender>
					["coord"] = { 73.8, 44.2, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						{
							["itemID"] = 1942,	-- Bottle of Moonshine
							["questID"] = 116,	-- Dry Times
							["races"] = ALLIANCE_ONLY,
						},
					},
				}),
				n(2481, {	-- Bliztik <Alchemy Supplies>
					["coord"] = { 18.0, 54.4, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6068),	-- Recipe: Shadow Oil
					},
				}),
				n(2668, {	-- Danielle Zipstitch <Tailoring Supplies>
					["coord"] = { 75.8, 45.4, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(14627),	-- Pattern: Bright Yellow Shirt
					},
				}),
				n(225, {	-- Gavin Gnarltree <Weaponsmith>
					["coord"] = { 73.7, 49.9, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12247),	-- Broad Bladed Knife
						i(12249),	-- Merciless Axe
					},
				}),
				n(3134, {	-- Kzixx <Rare Goods>
					["coord"] = { 81.8, 19.8, DUSKWOOD },
					["groups"] = {
						i(4836),	-- Fireproof Orb
						i(4838),	-- Orb of Power
						i(4837),	-- Strength of Will
						i(4829),	-- Dreamer's Belt
						i(4828),	-- Nightwind Belt
						i(4827),	-- Wizard's Belt
						i(6053),	-- Recipe: Holy Protection Potion
						i(7561),	-- Schematic: Goblin Jumper Cables
					},
				}),
				n(226, {	-- Morg Gnarltree <Armorer>
					["coord"] = { 73.9, 48.9, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4797),	-- Fiery Cloak
						i(4798),	-- Heavy Runed Cloak
						i(4799),	-- Antiquated Cloak
						i(4800),	-- Mighty Chain Pants
						i(4816),	-- Legionnaire's Leggings
					},
				}),
				n(2669, {	-- Sheri Zipstitch <Tailoring Supplies>
					["coord"] = { 75.6, 45.4, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6401),	-- Pattern: Dark Silk Shirt
						i(6275),	-- Pattern: Greater Adept's Robe
					},
				}),
			}),
		}),
	}),
};