---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(SILVERPINE_FOREST, {
			n(QUESTS, {
				q(530, {	-- A Husband's Revenge
					["qg"] = 2050,	-- Raleigh Andrean
					["sourceQuest"] = 441,	-- Raleigh and the Undercity
					["coord"] = { 62, 43, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3613, 1 },	-- Valdred's Hands
					},
					["lvl"] = 10,
					["g"] = {
						{
							["itemID"] = 3613,	-- Valdred's Hands
							["questID"] = 530,	-- A Husband's Revenge
							["cr"] = 2332,	-- Valdred Moray
							["coord"] = { 46.4, 84.6, SILVERPINE_FOREST },
						},
						i(3235),	-- Ring of Scorn
					},
				}),
				q(447, {	-- A Recipe For Death
					["qg"] = 1937,	-- Apothecary Renferrel
					["coord"] = { 42.8, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3253, 6 },	-- Grizzled Bear Heart
						{ "i", 3254, 6 },	-- Skittering Blood
					},
					["lvl"] = 9,
					["g"] = {
						i(3448),	-- Senggin Root
					},
				}),
				q(450, {	-- A Recipe For Death
					["qg"] = 2055,	-- Master Apothecary Faranell
					["sourceQuest"] = 447,	-- A Recipe For Death
					["coord"] = { 48.6, 69.4, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(451, {	-- A Recipe For Death
					["qg"] = 1937,	-- Apothecary Renferrel
					["sourceQuest"] = 450,	-- A Recipe For Death
					["coord"] = { 42.8, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3257, 6 },	-- Lake Creeper Moss
						{ "i", 3256, 6 },	-- Lake Skulker Moss
						{ "i", 3258, 1 },	-- Hardened Tumor
					},
					["lvl"] = 9,
					["g"] = {
						i(3451),	-- Nightglow Concoction
						i(3582),	-- Acidproof Cloak
						i(2458),	-- Elixir of Minor Fortitude
						i(2459),	-- Swiftness Potion
					},
				}),
				q(479, {	-- Ambermill Investigations
					["qg"] = 2121,	-- Shadow Priest Allister
					["sourceQuest"] = 482,	-- Dalaran's Intentions
					["coord"] = { 44, 41, SILVERPINE_FOREST },
					["cost"] = {
						{ "i", 3354, 8 },	-- Dalaran Pendant
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(422, {	-- Arugal's Folly
					["qg"] = 1938,	-- Dalar Dawnweaver
					["sourceQuest"] = 421,	-- Prove Your Worth
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3155, 1 },	-- Remedy of Arugal
					},
					["lvl"] = 9,
					["groups"] = {
						{
							["itemID"] = 3155,	-- Remedy of Arugal
							["questID"] = 422,	-- Arugal's Folly
							["coord"] = { 52.8, 28.4, SILVERPINE_FOREST },
						},
					},
				}),
				q(423, {	-- Arugal's Folly
					["qg"] = 1938,	-- Dalar Dawnweaver
					["sourceQuest"] = 422,	-- Arugal's Folly
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3157, 3 },	-- Darksoul Shackle
						{ "i", 3156, 6 },	-- Glutton Shackle
					},
					["lvl"] = 9,
				}),
				q(424, {	-- Arugal's Folly
					["qg"] = 1938,	-- Dalar Dawnweaver
					["sourceQuest"] = 423,	-- Arugal's Folly
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3634, 1 },	-- Head of Grimson
					},
					["lvl"] = 9,
					["groups"] = {
						{
							["itemID"] = 3634,	-- Head of Grimson
							["questID"] = 424,	-- Arugal's Folly
							["cr"] = 1972,	-- Grimson the Pale
							["coord"] = { 58.6, 44.8, SILVERPINE_FOREST },
						},
					},
				}),
				q(99, {	-- Arugal's Folly
					["qg"] = 1938,	-- Dalar Dawnweaver
					["sourceQuest"] = 424,	-- Arugal's Folly
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3218, 6 },	-- Pyrewood Shackle
					},
					["lvl"] = 9,
					["g"] = {
						i(3586),	-- Logsplitter
						i(3570),	-- Bonegrinding Pestle
						i(5242),	-- Cinder Wand
					},
				}),
				q(442, {	-- Assault on Fenris Isle
					["qg"] = 1952,	-- High Executor Hadrec
					["sourceQuest"] = 448,	-- Report to Hadrec
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3623, 1 },	-- Thule's Head
					},
					["lvl"] = 10,
					["g"] = {
						{
							["itemID"] = 3623,	-- Thule's Head
							["questID"] = 442,	-- Assault on Fenris Isle
							["cr"] = 1947,	-- Thule Ravenclaw
							["coord"] = { 65.6, 24.6, SILVERPINE_FOREST },
						},
						i(3461),	-- High Robe of the Adjudicator
						i(3462),	-- Talonstrike
					},
				}),
				q(516, {	-- Beren's Peril
					["qg"] = 2121,	-- Shadow Priest Allister
					["coord"] = { 44, 41, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 16,
					["g"] = {
						i(5252),	-- Wand of Decay
					},
				}),
				q(477, {	-- Border Crossings
					["qg"] = 2121,	-- Shadow Priest Allister
					["coord"] = { 44, 41, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(481, {	-- Dalar's Analysis
					["qg"] = 2121,	-- Shadow Priest Allister
					["sourceQuest"] = 478,	-- Maps and Runes
					["coord"] = { 44, 41, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(482, {	-- Dalaran's Intentions
					["qg"] = 1938,	-- Dalar Dawnweaver
					["sourceQuest"] = 481,	-- Dalar's Analysis
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(435, {	-- Escorting Erland
					["qg"] = 1978,	-- Deathstalker Erland
					["coord"] = { 56.2, 9.2, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["g"] = {
						i(3455),	-- Deathstalker Shortsword
					},
				}),
				q(425, {	-- Ivar the Foul
					["qg"] = 1950,	-- Rane Yorick
					["coord"] = { 53.4, 13.4, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3621, 1 },	-- Ivar's Head
					},
					["lvl"] = 10,
					["g"] = {
						{
							["itemID"] = 3621,	-- Ivar's Head
							["questID"] = 425,	-- Ivar the Foul
							["cr"] = 1971,	-- Ivar the Foul
							["coord"] = { 51.8, 13.8, SILVERPINE_FOREST },
						},
						i(3453),	-- Quilted Bracers
						i(3583),	-- Weathered Belt
					},
				}),
				q(493, {	-- Journey to Hillsbrad Foothills
					["qg"] = 1937,	-- Apothecary Renferrel
					["coord"] = { 42.8, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(428, {	-- Lost Deathstalkers
					["qg"] = 1952,	-- High Executor Hadrec
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(478, {	-- Maps and Runes
					["provider"] = { "o", 1627 },	-- Dalaran Crate
					["sourceQuest"] = 477,	-- Border Crossings
					["coord"] = { 49.9, 60.4, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(421, {	-- Prove Your Worth
					["qg"] = 1938,	-- Dalar Dawnweaver
					["cr"] = 1769,	-- Moonrage Whitescalp
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(452, {	-- Pyrewood Ambush
					["qg"] = 2058,	-- Deathstalker Faerleia
					["coord"] = { 46.4, 74.2, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
					["g"] = {
						i(3450),	-- Faerleia's Shield
						i(2818),	-- Stretched Leather Trousers
						i(3449),	-- Mystic Shawl
					},
				}),
				q(441, {	-- Raleigh and the Undercity
					["qg"] = 1499,	-- Magistrate Sevren
					["sourceQuest"] = 440,	-- The Engraved Ring
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(448, {	-- Report to Hadrec
					["qg"] = 1937,	-- Apothecary Renferrel
					["sourceQuest"] = 446,	-- Thule Ravenclaw
					["coord"] = { 42.8, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["g"] = {
						i(3240),	-- Coarse Weightstone
						i(2863),	-- Coarse Sharpening Stone
						i(2313),	-- Medium Armor Kit
					},
				}),
				q(460, {	-- Resting in Pieces
					["provider"] = { "i", 3317 },	-- A Talking Head
					["coord"] = { 65.2, 32.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(430, {	-- Return to Quinn
					["qg"] = 1937,	-- Apothecary Renferrel
					["sourceQuest"] = 429,	-- Wild Hearts
					["coord"] = { 53.4, 13.4, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(6323, {	-- Ride to the Undercity
					["qg"] = 2226,	-- Karos Razok
					["sourceQuest"] = 6321,	-- Supplying the Sepulcher
					["coord"] = { 45.6, 42.4, SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["cost"] = {
						{ "i", 16209, 1 },	-- Podrig's Order
					},
					["lvl"] = 10,
				}),
				q(439, {	-- Rot Hide Clues
					["provider"] = { "o", 1593 },	-- Corpse Laden Boat
					["sourceQuest"] = 438,	-- The Decrepit Ferry
					["coord"] = { 58.4, 34.9, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(443, {	-- Rot Hide Ichor
					["qg"] = 1952,	-- High Executor Hadrec
					["sourceQuest"] = 439,	-- Rot Hide Clues
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3236, 8 },	-- Rot Hide Ichor
					},
					["lvl"] = 10,
				}),
				q(444, {	-- Rot Hide Origins
					["qg"] = 1937,	-- Apothecary Renferrel
					["sourceQuest"] = 443,	-- Rot Hide Ichor
					["coord"] = { 42.8, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(3221, {	-- Speak with Renferrel
					["qg"] = 1952,	-- High Executor Hadrec
					["sourceQuest"] = 449,	-- The Deathstalkers' Report
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(6321, {	-- Supplying the Sepulcher
					["qgs"] = {
						1745,	-- Deathguard Morris
						6389,	-- Deathguard Podrig
					},
					["coords"] = {
						{ 43.4, 41.6, SILVERPINE_FOREST },
						{ 60.2, 52.2, TIRISFAL_GLADES },
					},
					["maps"] = { TIRISFAL_GLADES },
					["races"] = { UNDEAD },
					["cost"] = {
						{ "i", 16209, 1 },	-- Podrig's Order
					},
					["lvl"] = 10,
				}),
				q(437, {	-- The Dead Fields
					["qg"] = 1952,	-- High Executor Hadrec
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3622, 1 },	-- Essence of Nightlash
					},
					["lvl"] = 10,
					["g"] = {
						{
							["itemID"] = 3622,	-- Essence of Nightlash
							["questID"] = 437,	-- The Dead Fields
							["cr"] = 1983,	-- Nightlash
							["coord"] = { 45.8, 20.4, SILVERPINE_FOREST },
						},
						i(3454),	-- Reconnaissance Boots
					},
				}),
				q(449, {	-- The Deathstalkers' Report
					["qg"] = 1950,	-- Rane Yorick
					["sourceQuest"] = 435,	-- Escorting Erland
					["coord"] = { 53.4, 13.4, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(438, {	-- The Decrepit Ferry
					["qg"] = 1952,	-- High Executor Hadrec
					["sourceQuest"] = 437,	-- The Dead Fields
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(440, {	-- The Engraved Ring
					["qg"] = 1952,	-- High Executor Hadrec
					["sourceQuest"] = 439,	-- Rot Hide Clues
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(461, {	-- The Hidden Niche
					["provider"] = { "o", 1599 },	-- Shallow Grave
					["sourceQuest"] = 460,	-- Resting in Pieces
					["coord"] = { 67.8, 24.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3318, 1 },	-- Alaric's Remains
					},
					["lvl"] = 12,
				}),
				q(480, {	-- The Weaver
					["qg"] = 2121,	-- Shadow Priest Allister
					["coord"] = { 44, 41, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3515, 1 },	-- Ataeric's Staff
					},
					["lvl"] = 10,
					["g"] = {
						i(3452),	-- Ceranium Rod
						i(3585),	-- Camouflaged Tunic
					},
				}),
				q(446, {	-- Thule Ravenclaw
					["qg"] = 1498,	-- Bethor Iceshard
					["sourceQuest"] = 444,	-- Rot Hide Origins
					["coord"] = { 42.8, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["g"] = {
						i(3251),	-- Bethor's Potion
					},
				}),
				q(491, {	-- Wand to Bethor
					["provider"] = { "o", 112888 },	-- Dusty Shelf
					["sourceQuest"] = 461,	-- The Hidden Niche
					["coord"] = { 65.3, 24.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3425, 1 },	-- Woven Wand
					},
					["lvl"] = 12,
					["g"] = {
						i(3457),	-- Stamped Trousers
						i(3458),	-- Rugged Mail Gloves
						i(3581),	-- Serrated Knife
					},
				}),
				q(429, {	-- Wild Hearts
					["qg"] = 1950,	-- Rane Yorick
					["sourceQuest"] = 428,	-- Lost Deathstalkers
					["coord"] = { 53.4, 13.4, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3164, 6 },	-- Discolored Worg Heart
					},
					["lvl"] = 10,
					["g"] = {
						i(4597),	-- Recipe: Discolored Healing Potion
						i(4596),	-- Discolored Healing Potion
					},
				}),
				q(1359, {	-- Zinge's Delivery
					["qg"] = 1937,	-- Apothecary Renferrel
					["sourceQuest"] = 3221,	-- Speak with Renferrel
					["coord"] = { 42.8, 40.8, SILVERPINE_FOREST },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6016, 1 },	-- Wolf Heart Sample
					},
					["lvl"] = 10,
				}),
			}),
		}),
	}),
};