_.PvP = 
{
	n(-304, {	-- Battlegrounds
		m(1461, {	-- Arathi Basin
			["maps"] = { ARATHI_HIGHLANDS },
			["description"] = "Arathi Basin is a 15v15 battleground located in Arathi Highlands. Players fight over five bases (Stables, Mines, Blacksmith, Lumber Mill, and Farm) which reward teams with resources. The more bases a team controls, the faster they accumulate resources. A team with all five bases captured will gain 30 resources per second.\n\nThe game is won when one team reaches 1,600 resources. The most common way of winning is to hold three bases and defend, with the Blacksmith being a key base.",
			["groups"] = {
				faction(510, {	-- The Defilers
					["icon"] = "Interface\\Icons\\spell_shadow_psychichorrors",
					["races"] = HORDE_ONLY,
					["groups"] = {
						n(QUESTS, {
							q(8265, {	-- Defiler's Advanced Care Package
								["qg"] = 15126,	-- Rutherford Twing
								["minReputation"] = { 510, FRIENDLY },	-- The Defilers, Friendly.
								["coord"] = { 73.4, 29.8, ARATHI_HIGHLANDS },
								["races"] = HORDE_ONLY,
								["lvl"] = 45,
								["groups"] = {
									i(20228),	-- Defiler's Advanced Care Package
								},
							}),
							q(8263, {	-- Defiler's Basic Care Package
								["qg"] = 15126,	-- Rutherford Twing
								["minReputation"] = { 510, FRIENDLY },	-- The Defilers, Friendly.
								["coord"] = { 73.4, 29.8, ARATHI_HIGHLANDS },
								["races"] = HORDE_ONLY,
								["lvl"] = 25,
								["groups"] = {
									i(20229),	-- Defiler's Basic Care Package
								},
							}),
							q(8264, {	-- Defiler's Standard Care Package
								["qg"] = 15126,	-- Rutherford Twing
								["minReputation"] = { 510, FRIENDLY },	-- The Defilers, Friendly.
								["coord"] = { 73.4, 29.8, ARATHI_HIGHLANDS },
								["races"] = HORDE_ONLY,
								["lvl"] = 35,
								["groups"] = {
									i(20230),	-- Defiler's Standard Care Package
								},
							}),
						}),
						n(VENDORS, {
							n(15126, {	-- Rutherford Twing
								["coord"] = { 73.4, 29.8, ARATHI_HIGHLANDS },
								["groups"] = {
									-- Tabard & Weapons
									i(20131),	-- Battle Tabard of the Defilers
									i(20220),	-- Ironbark Staff
									i(20214),	-- Mindfang
									
									-- Cloak
									i(20068),	-- Deathguard's Cloak
									
									-- Cloth
									i(20161),	-- Defiler's Cloth Boots
									i(20160),	-- Defiler's Cloth Boots
									i(20159),	-- Defiler's Cloth Boots
									i(20162),	-- Defiler's Cloth Boots
									i(20163),	-- Defiler's Cloth Girdle
									i(20164),	-- Defiler's Cloth Girdle
									i(20165),	-- Defiler's Cloth Girdle
									i(20166),	-- Defiler's Cloth Girdle
									i(20176),	-- Defiler's Epaulets

									-- Leather
									i(20152),	-- Defiler's Chain Girdle
									i(20157),	-- Defiler's Chain Greaves
									i(20187),	-- Defiler's Leather Boots
									i(20189),	-- Defiler's Leather Boots
									i(20186),	-- Defiler's Leather Boots
									i(20188),	-- Defiler's Leather Boots
									i(20193),	-- Defiler's Leather Girdle
									i(20191),	-- Defiler's Leather Girdle
									i(20190),	-- Defiler's Leather Girdle
									i(20192),	-- Defiler's Leather Girdle
									i(20194),	-- Defiler's Leather Shoulders
									i(20170),	-- Defiler's Lizardhide Boots
									i(20169),	-- Defiler's Lizardhide Boots
									i(20168),	-- Defiler's Lizardhide Boots
									i(20167),	-- Defiler's Lizardhide Boots
									i(20171),	-- Defiler's Lizardhide Girdle
									i(20174),	-- Defiler's Lizardhide Girdle
									i(20173),	-- Defiler's Lizardhide Girdle
									i(20172),	-- Defiler's Lizardhide Girdle
									i(20175),	-- Defiler's Lizardhide Shoulders
									i(20197),	-- Defiler's Mail Girdle
									i(20201),	-- Defiler's Mail Greaves

									-- Mail
									i(20150),	-- Defiler's Chain Girdle
									i(20151),	-- Defiler's Chain Girdle
									i(20153),	-- Defiler's Chain Girdle
									i(20154),	-- Defiler's Chain Greaves
									i(20156),	-- Defiler's Chain Greaves
									i(20155),	-- Defiler's Chain Greaves
									i(20158),	-- Defiler's Chain Pauldrons
									i(20178),	-- Defiler's Lamellar Girdle
									i(20182),	-- Defiler's Lamellar Greaves
									i(20196),	-- Defiler's Mail Girdle
									i(20198),	-- Defiler's Mail Girdle
									i(20195),	-- Defiler's Mail Girdle
									i(20202),	-- Defiler's Mail Greaves
									i(20200),	-- Defiler's Mail Greaves
									i(20199),	-- Defiler's Mail Greaves
									i(20203),	-- Defiler's Mail Pauldrons
									i(20207),	-- Defiler's Plate Girdle
									i(20210),	-- Defiler's Plate Greaves

									-- Plate
									i(20180),	-- Defiler's Lamellar Girdle
									i(20179),	-- Defiler's Lamellar Girdle
									i(20177),	-- Defiler's Lamellar Girdle
									i(20181),	-- Defiler's Lamellar Greaves
									i(20183),	-- Defiler's Lamellar Greaves
									i(20185),	-- Defiler's Lamellar Greaves
									i(20184),	-- Defiler's Lamellar Spaulders
									i(20204),	-- Defiler's Plate Girdle
									i(20205),	-- Defiler's Plate Girdle
									i(20206),	-- Defiler's Plate Girdle
									i(20209),	-- Defiler's Plate Greaves
									i(20208),	-- Defiler's Plate Greaves
									i(20211),	-- Defiler's Plate Greaves
									i(20212),	-- Defiler's Plate Spaulders
									
									-- Trinkets
									i(20072),	-- Defiler's Talisman
									i(21115),	-- Defiler's Talisman
									i(21116),	-- Defiler's Talisman
									i(21120),	-- Defiler's Talisman
								},
							}),
						}),
					},
				}),
				faction(509, {	-- The League of Arathor
					["icon"] = "Interface\\Icons\\ability_warrior_rallyingcry",
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						n(QUESTS, {
							q(8262, {	-- Arathor Advanced Care Package
								["qg"] = 15127,	-- Samuel Hawke
								["minReputation"] = { 509, FRIENDLY },	-- The League of Arathor, Friendly.
								["coord"] = { 46.0, 45.2, ARATHI_HIGHLANDS },
								["races"] = ALLIANCE_ONLY,
								["lvl"] = 45,
								["groups"] = {
									i(20231),	-- Arathor Advanced Care Package
								},
							}),
							q(8260, {	-- Arathor Basic Care Package
								["qg"] = 15127,	-- Samuel Hawke
								["minReputation"] = { 509, FRIENDLY },	-- The League of Arathor, Friendly.
								["coord"] = { 46.0, 45.2, ARATHI_HIGHLANDS },
								["races"] = ALLIANCE_ONLY,
								["lvl"] = 25,
								["groups"] = {
									i(20233),	-- Arathor Basic Care Package
								},
							}),
							q(8261, {	-- Arathor Standard Care Package
								["qg"] = 15127,	-- Samuel Hawke
								["minReputation"] = { 509, FRIENDLY },	-- The League of Arathor, Friendly.
								["coord"] = { 46.0, 45.2, ARATHI_HIGHLANDS },
								["races"] = ALLIANCE_ONLY,
								["lvl"] = 35,
								["groups"] = {
									i(20236),	-- Arathor Standard Care Package
								},
							}),
						}),
						n(VENDORS, {
							n(15127, {	-- Samuel Hawke <League of Arathor Supply Officer>
								["coord"] = { 46.0, 45.2, ARATHI_HIGHLANDS },
								["groups"] = {
									-- Tabard & Weapons
									i(20132),	-- Arathor Battle Tabard
									i(20069),	-- Ironbark Staff
									i(20070),	-- Sageclaw
									-- Cloak
									i(20073),	-- Cloak of the Honor Guard
									-- Cloth
									i(20096),	-- Highlander's Cloth Boots
									i(20054),	-- Highlander's Cloth Boots
									i(20094),	-- Highlander's Cloth Boots
									i(20095),	-- Highlander's Cloth Boots
									i(20097),	-- Highlander's Cloth Girdle
									i(20098),	-- Highlander's Cloth Girdle
									i(20047),	-- Highlander's Cloth Girdle
									i(20099),	-- Highlander's Cloth Girdle
									i(20061),	-- Highlander's Epaulets

									-- Leather
									i(20112),	-- Highlander's Leather Boots
									i(20113),	-- Highlander's Leather Boots
									i(20114),	-- Highlander's Leather Boots
									i(20052),	-- Highlander's Leather Boots
									i(20116),	-- Highlander's Leather Girdle
									i(20117),	-- Highlander's Leather Girdle
									i(20115),	-- Highlander's Leather Girdle
									i(20045),	-- Highlander's Leather Girdle
									i(20059),	-- Highlander's Leather Shoulders
									i(20053),	-- Highlander's Lizardhide Boots
									i(20102),	-- Highlander's Lizardhide Boots
									i(20101),	-- Highlander's Lizardhide Boots
									i(20100),	-- Highlander's Lizardhide Boots
									i(20103),	-- Highlander's Lizardhide Girdle
									i(20046),	-- Highlander's Lizardhide Girdle
									i(20105),	-- Highlander's Lizardhide Girdle
									i(20104),	-- Highlander's Lizardhide Girdle
									i(20060),	-- Highlander's Lizardhide Shoulders
									i(20120),	-- Highlander's Mail Girdle
									i(20123),	-- Highlander's Mail Greaves

									-- Mail
									i(20108),	-- Highlander's Lamellar Girdle
									i(20111),	-- Highlander's Lamellar Greaves
									i(20044),	-- Highlander's Mail Girdle
									i(20119),	-- Highlander's Mail Girdle
									i(20118),	-- Highlander's Mail Girdle
									i(20051),	-- Highlander's Mail Greaves
									i(20121),	-- Highlander's Mail Greaves
									i(20122),	-- Highlander's Mail Greaves
									i(20056),	-- Highlander's Mail Pauldrons
									i(20126),	-- Highlander's Plate Girdle
									i(20129),	-- Highlander's Plate Greaves

									-- Plate
									i(20042),	-- Highlander's Lamellar Girdle
									i(20106),	-- Highlander's Lamellar Girdle
									i(20107),	-- Highlander's Lamellar Girdle
									i(20110),	-- Highlander's Lamellar Greaves
									i(20109),	-- Highlander's Lamellar Greaves
									i(20049),	-- Highlander's Lamellar Greaves
									i(20058),	-- Highlander's Lamellar Spaulders
									i(20125),	-- Highlander's Plate Girdle
									i(20041),	-- Highlander's Plate Girdle
									i(20124),	-- Highlander's Plate Girdle
									i(20128),	-- Highlander's Plate Greaves
									i(20048),	-- Highlander's Plate Greaves
									i(20127),	-- Highlander's Plate Greaves
									i(20057),	-- Highlander's Plate Spaulders
									
									-- Trinkets
									i(20071),	-- Talisman of Arathor
									i(21117),	-- Talisman of Arathor
									i(21118),	-- Talisman of Arathor
									i(21119),	-- Talisman of Arathor
								},
							}),
						}),
					},
				}),
			},
		}),
	}),
};