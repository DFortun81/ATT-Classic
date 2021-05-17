---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(ARATHI_HIGHLANDS, {
			n(VENDORS, {
				n(2816, {	-- Androd Fadran <Leatherworking Supplies>
					["coord"] = { 45.1, 46.8, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(13288),	-- Pattern: Raptor Hide Belt
					},
				}),
				n(2805, {	-- Deneb Walker <Scrolls & Potions>
					["coord"] = { 27.0, 58.8, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						{
							["itemID"] = 16084,	-- Expert First Aid - Under Wraps
							--["spellID"] = 7924,	-- Expert First Aid
							["requireSkill"] = FIRST_AID,
						},
						{
							["itemID"] = 16112,	-- Manual: Heavy Silk Bandage
							["spellID"] = 7929,	-- Heavy Silk Bandage
							["requireSkill"] = FIRST_AID,
						},
						{
							["itemID"] = 16113,	-- Manual: Mageweave Bandage
							["spellID"] = 10840,	-- Mageweave Bandage
							["requireSkill"] = FIRST_AID,
						},
					},
				}),
				n(2812, {	-- Drovnar Strongbrew <Alchemy Supplies>
					["coord"] = { 46.4, 47.0, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6056),	-- Recipe: Frost Protection Potion
					},
				}),
				n(2810, {	-- Hammon Karwn <Superior Tradesman>
					["coord"] = { 46.5, 47.4, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21942, {	-- Design: Ruby Crown of Restoration
							["u"] = TBC_PHASE_ONE,
						}),
						i(5973),	-- Pattern: Barbaric Leggings
						i(12228),	-- Recipe: Roast Raptor
					},
				}),
				n(1471, {	-- Jannos Ironwill <Superior Macecrafter>
					["coord"] = { 46.0, 47.7, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(10858),	-- Plans: Solid Iron Maul
					},
				}),
				n(6574, {	-- Jun'ha <Tailoring Supplies>
					["coord"] = { 72.8, 36.6, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(7089),	-- Pattern: Azure Silk Cloak
					},
				}),
				n(2821, {	-- Keena <Trade Goods>
					["coord"] = { 74.0, 32.6, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21942, {	-- Design: Ruby Crown of Restoration
							["u"] = TBC_PHASE_ONE,
						}),
						i(3682),	-- Recipe: Curiously Tasty Omelet
						i(5973),	-- Pattern: Barbaric Leggings
						i(11163),	-- Formula: Enchant Bracer - Lesser Deflection
						i(12228),	-- Recipe: Roast Raptor
					},
				}),
				n(9555, {	-- Mu'uta <Bowyer>
					["coord"] = { 72.6, 33.6, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11305),	-- Dense Shortbow
					},
				}),
				n(2814, {	-- Narj Deepslice <Butcher>
					["coord"] = { 45.6, 47.6, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4609),	-- Recipe: Barbecued Buzzard Wing
					},
				}),
				n(2819, {	-- Tunkk <Leatherworking Supplies>
					["coord"] = { 74.8, 34.6, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(13287),	-- Pattern: Raptor Hide Harness
					},
				}),
			}),
		}),
	}),
};