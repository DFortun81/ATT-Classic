---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(SILVERPINE_FOREST, {	-- Silverpine Forest
			n(-17, {	-- Quests
				q(530, {	-- A Husband's Revenge
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 2050,	-- Raleigh Andrean
					["g"] = {
						i(3235),	-- Ring of Scorn
					},
				}),
				q(451, {	-- A Recipe For Death
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 1937,	-- Apothecary Renferrel
					["g"] = {
						i(3451),	-- Nightglow Concoction
						i(3582),	-- Acidproof Cloak
						i(2458),	-- Elixir of Minor Fortitude
						i(2459),	-- Swiftness Potion
					},
				}),
				q(450, {	-- A Recipe For Death
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 2055,	-- Master Apothecary Faranell
				}),
				q(447, {	-- A Recipe For Death
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 1937,	-- Apothecary Renferrel
					["g"] = {
						i(3448),	-- Senggin Root
					},
				}),
				q(479, {	-- Ambermill Investigations
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 2121,	-- Shadow Priest Allister
				}),
				q(423, {	-- Arugal's Folly
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 1938,	-- Dalar Dawnweaver
				}),
				q(424, {	-- Arugal's Folly
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 1938,	-- Dalar Dawnweaver
				}),
				q(422, {	-- Arugal's Folly
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 1938,	-- Dalar Dawnweaver
				}),
				q(99, {	-- Arugal's Folly
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 1938,	-- Dalar Dawnweaver
					["g"] = {
						i(3586),	-- Logsplitter
						i(3570),	-- Bonegrinding Pestle
						i(5242),	-- Cinder Wand
					},
				}),
				q(442, {	-- Assault on Fenris Isle
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 1952,	-- High Executor Hadrec
					["g"] = {
						i(3461),	-- High Robe of the Adjudicator
						i(3462),	-- Talonstrike
					},
				}),
				q(516, {	-- Beren's Peril
					["lvl"] = 16,
					["races"] = HORDE_ONLY,
					["qg"] = 2121,	-- Shadow Priest Allister
					["g"] = {
						i(5252),	-- Wand of Decay
					},
				}),
				q(477, {	-- Border Crossings
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 2121,	-- Shadow Priest Allister
				}),
				q(481, {	-- Dalar's Analysis
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 2121,	-- Shadow Priest Allister
				}),
				q(482, {	-- Dalaran's Intentions
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 1938,	-- Dalar Dawnweaver
				}),
				q(435, {	-- Escorting Erland
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 1978,	-- Deathstalker Erland
					["g"] = {
						i(3455),	-- Deathstalker Shortsword
					},
				}),
				q(425, {	-- Ivar the Foul
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 1950,	-- Rane Yorick
					["g"] = {
						i(3453),	-- Quilted Bracers
						i(3583),	-- Weathered Belt
					},
				}),
				q(493, {	-- Journey to Hillsbrad Foothills
					["lvl"] = 19,
					["races"] = HORDE_ONLY,
					["qg"] = 1937,	-- Apothecary Renferrel
				}),
				q(428, {	-- Lost Deathstalkers
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 1952,	-- High Executor Hadrec
				}),
				q(478, {	-- Maps and Runes
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					--["objectID"] = 1627,	-- Dalaran Crate
				}),
				q(6322, {	-- Michael Garrett
					["lvl"] = 10,
					["races"] = {
						5,	-- Undead
					},
					["qg"] = 4556,	-- Gordon Wendham
				}),
				q(421, {	-- Prove Your Worth
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 1938,	-- Dalar Dawnweaver
				}),
				q(452, {	-- Pyrewood Ambush
					["lvl"] = 12,
					["g"] = {
						i(3450),	-- Faerleia's Shield
						i(2818),	-- Stretched Leather Trousers
						i(3449),	-- Mystic Shawl
					},
				}),
				q(441, {	-- Raleigh and the Undercity
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 1499,	-- Magistrate Sevren
				}),
				q(448, {	-- Report to Hadrec
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 1937,	-- Apothecary Renferrel
					["g"] = {
						i(3240),	-- Coarse Weightstone
						i(2863),	-- Coarse Sharpening Stone
						i(2313),	-- Medium Armor Kit
					},
				}),
				q(460, {	-- Resting in Pieces
					["lvl"] = 12,
					["races"] = HORDE_ONLY,
				}),
				q(6324, {	-- Return to Podrig
					["lvl"] = 10,
					["races"] = {
						5,	-- Undead
					},
					["qg"] = 4551,	-- Michael Garrett
				}),
				q(430, {	-- Return to Quinn
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 1937,	-- Apothecary Renferrel
				}),
				q(6323, {	-- Ride to the Undercity
					["lvl"] = 10,
					["races"] = {
						5,	-- Undead
					},
					["qg"] = 2226,	-- Karos Razok
				}),
				q(439, {	-- Rot Hide Clues
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					--["objectID"] = 1593,	-- Corpse Laden Boat
				}),
				q(443, {	-- Rot Hide Ichor
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 1952,	-- High Executor Hadrec
				}),
				q(444, {	-- Rot Hide Origins
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 1937,	-- Apothecary Renferrel
				}),
				q(3221, {	-- Speak with Renferrel
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 1952,	-- High Executor Hadrec
				}),
				q(6321, {	-- Supplying the Sepulcher
					["lvl"] = 10,
					["races"] = {
						5,	-- Undead
					},
					["qgs"] = {
						1745,	-- Deathguard Morris
						6389,	-- Deathguard Podrig
					},
				}),
				q(437, {	-- The Dead Fields
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 1952,	-- High Executor Hadrec
					["g"] = {
						i(3454),	-- Reconnaissance Boots
					},
				}),
				q(449, {	-- The Deathstalkers' Report
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 1950,	-- Rane Yorick
				}),
				q(438, {	-- The Decrepit Ferry
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 1952,	-- High Executor Hadrec
				}),
				q(440, {	-- The Engraved Ring
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 1952,	-- High Executor Hadrec
				}),
				q(461, {	-- The Hidden Niche
					["lvl"] = 12,
					["races"] = HORDE_ONLY,
					--["objectID"] = 1599,	-- Shallow Grave
				}),
				q(480, {	-- The Weaver
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(3452),	-- Ceranium Rod
						i(3585),	-- Camouflaged Tunic
					},
				}),
				q(446, {	-- Thule Ravenclaw
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 1498,	-- Bethor Iceshard
					["g"] = {
						i(3251),	-- Bethor's Potion
					},
				}),
				q(491, {	-- Wand to Bethor
					["lvl"] = 12,
					["races"] = HORDE_ONLY,
					--["objectID"] = 112888,	-- Dusty Shelf
					["g"] = {
						i(3457),	-- Stamped Trousers
						i(3458),	-- Rugged Mail Gloves
						i(3581),	-- Serrated Knife
					},
				}),
				q(429, {	-- Wild Hearts
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 1950,	-- Rane Yorick
					["g"] = {
						i(4597),	-- Recipe: Discolored Healing Potion
						i(4596),	-- Discolored Healing Potion
					},
				}),
			}),
		}),
	}),
};