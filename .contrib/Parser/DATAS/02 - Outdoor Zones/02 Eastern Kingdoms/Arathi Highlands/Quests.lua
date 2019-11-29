---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(ARATHI_HIGHLANDS, {	-- Arathi Highlands
			n(-17, {	-- Quests
				q(695, {	-- An Apprentice's Enchantment
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2788,	-- Apprentice Kryten
					["coord"] = { 46.2, 47.8, ARATHI_HIGHLANDS },
				}),
				q(696, {	-- Attack on the Tower
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
				}),
				q(652, {	-- Breaking the Keystone
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 2702,	-- Stone of Inner Binding
				}),
				q(677, {	-- Call to Arms
					["qg"] = 2771,	-- Drum Fel
					["sourceQuest"] = 676,	-- The Hammer May Fall
					["coord"] = { 74.24, 33.91, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(678, {	-- Call to Arms
					["qg"] = 2771,	-- Drum Fel
					["sourceQuest"] = 677,	-- Call to Arms
					["coord"] = { 74.24, 33.91, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(679, {	-- Call to Arms
					["qg"] = 2771,	-- Drum Fel
					["sourceQuest"] = 678,	-- Call to Arms
					["coord"] = { 74.24, 33.91, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["g"] = {
						i(9520),	-- Silent Hunter
						i(9521),	-- Skullsplitter
					},
				}),
				q(8384, {	-- Claiming Arathi Basin
					["u"] = 3,	-- Added in later phase
					["lvl"] = 20,
				}),
				q(8438, {	-- Conquering Arathi Basin
					["u"] = 3,	-- Added in later phase
					["lvl"] = 50,
				}),
				q(635, {	-- Crystal in the Mountains
					["lvl"] = 30,
					["altQuests"] = {
						642,	-- The Princess Trapped
					},
				}),
				q(667, {	-- Death From Below
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(4550),	-- Coldwater Ring
						i(4549),	-- Seafire Band
					},
				}),
				q(662, {	-- Deep Sea Salvage
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2767,	-- First Mate Nilzlix
					["g"] = {
						i(4511),	-- Black Water Hammer
					},
				}),
				q(664, {	-- Drowned Sorrows
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2769,	-- Captain Steelgut
					["g"] = {
						i(4509),	-- Seawolf Gloves
					},
				}),
				q(671, {	-- Foul Magics
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 2706,	-- Tor'gan
				}),
				q(673, {	-- Foul Magics
					["lvl"] = 35,
					["races"] = HORDE_ONLY,
					["qg"] = 2706,	-- Tor'gan
					["g"] = {
						i(4543),	-- White Drakeskin Cap
						i(4545),	-- Radiant Silver Bracers
					},
				}),
				q(847, {	-- Guile of the Raptor
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["qg"] = 2792,	-- Gor'mul
					["g"] = {
						i(4546),	-- Call of the Raptor
					},
				}),
				q(702, {	-- Guile of the Raptor
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["qg"] = 2706,	-- Tor'gan
				}),
				q(701, {	-- Guile of the Raptor
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["qg"] = 2706,	-- Tor'gan
				}),
				q(655, {	-- Hammerfall
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["qg"] = 2792,	-- Gor'mul
				}),
				q(663, {	-- Land Ho!
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2766,	-- Lolo the Lookout
				}),
				q(690, {	-- Malin's Request
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2708, -- Archmage Malin
					["maps"] = { STORMWIND },
				}),
				q(697, {	-- Malin's Request
					["lvl"] = 30,
					["g"] = {
						i(4975),	-- Vigilant Buckler
						i(15104),	-- Wingborne Boots
					},
				}),
				q(653, {	-- Myzrael's Allies
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 2688,	-- Keystone
				}),
				q(688, {	-- Myzrael's Allies
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					--["objectID"] = 2688,	-- Keystone
				}),
				q(681, {	-- Northfold Manor
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2700,	-- Captain Nials
					["coord"] = { 45.9, 47.5, ARATHI_HIGHLANDS },
				}),
				q(674, {	-- Raising Spirits
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["qg"] = 2706,	-- Tor'gan
				}),
				q(675, {	-- Raising Spirits
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["qg"] = 2792,	-- Gor'mul
				}),
				q(672, {	-- Raising Spirits
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["qg"] = 2706,	-- Tor'gan
				}),
				q(643, {	-- Sigil of Arathor
					["lvl"] = 32,
					["races"] = HORDE_ONLY,
				}),
				q(639, {	-- Sigil of Strom
					["lvl"] = 32,
					["races"] = HORDE_ONLY,
					["qg"] = 2703,	-- Zengu
				}),
				q(641, {	-- Sigil of Thoradin
					["lvl"] = 32,
					["races"] = HORDE_ONLY,
				}),
				q(644, {	-- Sigil of Trollbane
					["lvl"] = 32,
					["races"] = HORDE_ONLY,
				}),
				q(651, {	-- Stones of Binding
					["lvl"] = 30,
					--["objectID"] = 2701,	-- Iridescent Shards
				}),
				q(682, {	-- Stromgarde Badges
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2700,	-- Captain Nials
					["g"] = {
						i(4741),	-- Stromgarde Cavalry Leggings
					},
					["coord"] = { 45.9, 47.5, ARATHI_HIGHLANDS },
				}),
				q(656, {	-- Summoning the Princess
					["lvl"] = 30,
					["g"] = {
						i(4743),	-- Pulsating Crystalline Shard
					},
				}),
				q(669, {	-- Sunken Treasure
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2610,	-- Shakes O'Breen
				}),
				q(668, {	-- Sunken Treasure
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2774,	-- Doctor Draxlegauge
				}),
				q(670, {	-- Sunken Treasure
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
				}),
				q(665, {	-- Sunken Treasure
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2768,	-- Professor Phizzlethorpe
				}),
				q(666, {	-- Sunken Treasure
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(4547),	-- Gnomish Zapper
						i(4548),	-- Servomechanic Sledgehammer
					},
				}),
				q(640, {	-- The Broken Sigil
					["lvl"] = 32,
					["races"] = HORDE_ONLY,
					["qg"] = 2703,	-- Zengu
				}),
				q(642, {	-- The Princess Trapped
					["lvl"] = 30,
					--["objectID"] = 138492,	-- Shards of Myzrael
				}),
				q(680, {	-- The Real Threat
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(4976),	-- Mistspray Kilt
						i(4977),	-- Sword of Hammerfall
					},
				}),
				q(687, {	-- Theldurin the Lost
					["lvl"] = 30,
					["qgs"] = {
						2786,	-- Gerrig Bonegrip
						2787,	-- Zaruk
					},
				}),
				q(694, {	-- Trelane's Defenses
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2789,	-- Skuerto
					["coord"] = { 46.6, 47.0, ARATHI_HIGHLANDS },
				}),
				q(6622, {	-- Triage
					["qg"] = 12920,	-- Doctor Gregory Victor
					["coord"] = { 73.40, 36.89, ARATHI_HIGHLANDS },
					["requireSkill"] = 129,	-- First Aid
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
				q(645, {	-- Trol'kalar
					["lvl"] = 32,
					["races"] = HORDE_ONLY,
				}),
				q(646, {	-- Trol'kalar
					["lvl"] = 32,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(4508),	-- Blood-tinged Armor
						i(4507),	-- Pit Fighter's Shield
					},
				}),
				q(693, {	-- Wand over Fist
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2789,	-- Skuerto
					["coord"] = { 46.6, 47.0, ARATHI_HIGHLANDS },
				}),
				q(684, {	-- Wanted! Marez Cowl
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 2713,	-- Wanted Board
					["g"] = {
						i(4744),	-- Arcane Runed Bracers
					},
					["provider"] = { "o", 2713 },
					["coord"] = { 46.0, 47.7, ARATHI_HIGHLANDS },
				}),
				q(685, {	-- Wanted! Otto and Falconcrest
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 2713,	-- Wanted Board
					["g"] = {
						i(5247),	-- Rod of Sorrow
						i(4745),	-- War Rider Bracers
					},
					["provider"] = { "o", 2713 },
					["coord"] = { 46.0, 47.7, ARATHI_HIGHLANDS },
				}),
				q(691, {	-- Worth Its Weight in Gold
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2788,	-- Apprentice Kryten
					["coord"] = { 46.2, 47.8, ARATHI_HIGHLANDS },
				}),
			}),
		}),
	}),
};