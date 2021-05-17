---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(ARATHI_HIGHLANDS, {
			n(QUESTS, {
				q(695, {	-- An Apprentice's Enchantment
					["qg"] = 2788,	-- Apprentice Kryten
					["sourceQuest"] = 694,	-- Trelane's Defenses
					["coord"] = { 46.2, 47.8, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(696, {	-- Attack on the Tower
					["qg"] = 2789,	-- Skuerto
					["sourceQuest"] = 695,	-- An Apprentice's Enchantment
					["coord"] = { 46.65, 47.0, ARATHI_HIGHLANDS },
					["cost"] = {
						{ "i", 4532, 1 },	-- Trelane's Ember Agate
						{ "i", 4531, 1 },	-- Trelane's Orb
						{ "i", 4530, 1 },	-- Trelane's Phylactery
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4532,	-- Trelane's Ember Agate
							["questID"] = 696,	-- Attack on the Tower
							["coord"] = { 18.0, 67.9, ARATHI_HIGHLANDS },
						},
						{
							["itemID"] = 4531,	-- Trelane's Orb
							["questID"] = 696,	-- Attack on the Tower
							["coord"] = { 18.1, 69.1, ARATHI_HIGHLANDS },
						},
						{
							["itemID"] = 4530,	-- Trelane's Phylactery
							["questID"] = 696,	-- Attack on the Tower
							["coord"] = { 18.2, 68.2, ARATHI_HIGHLANDS },
						},
					},
				}),
				q(652, {	-- Breaking the Keystone
					["provider"] = { "o", 2702 },	-- Stone of Inner Binding
					["sourceQuest"] = 651,	-- Stones of Binding
					["cost"] = {
						{ "i", 4469, 1 },	-- Rod of Order
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4469,	-- Rod of Order
							["questID"] = 652,	-- Breaking the Keystone
							["cr"] = 2611,	-- Fozruk
						},
					},
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
				q(635, {	-- Crystal in the Mountains
					["provider"] = { "i", 4614 },  -- Pendant of Myzrael
					["description"] = "If you miss out on picking up the necklace first, you can still complete this quest even after finishing the rest of the chain.",
					["lvl"] = 30,
				}),
				q(667, {	-- Death From Below
					["qg"] = 2610,	-- Shakes O'Breen <Blackwater Raiders>
					["sourceQuest"] = 670,	-- Sunken Treasure (5/5)
					["coord"] = { 32.2, 81.6, ARATHI_HIGHLANDS },
					["lvl"] = 35,
					["g"] = {
						i(4550),	-- Coldwater Ring
						i(4549),	-- Seafire Band
					},
				}),
				q(662, {	-- Deep Sea Salvage
					["lvl"] = 35,
					["qg"] = 2767,	-- First Mate Nilzlix
					["g"] = {
						i(4511),	-- Black Water Hammer
					},
				}),
				q(664, {	-- Drowned Sorrows
					["lvl"] = 35,
					["qg"] = 2769,	-- Captain Steelgut
					["g"] = {
						i(4509),	-- Seawolf Gloves
					},
				}),
				q(671, {	-- Foul Magics
					["qg"] = 2706,	-- Tor'gan
					["coord"] = { 74.6, 36.4, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4495, 10 },	-- Bloodstone Amulet
					},
					["lvl"] = 30,
				}),
				q(673, {	-- Foul Magics
					["qg"] = 2706,	-- Tor'gan
					["sourceQuest"] = 671,	-- Foul Magics
					["coord"] = { 74.6, 36.4, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						{
							["itemID"] = 4510,	-- Befouled Bloodstone Orb
							["questID"] = 673,	-- Foul Magics
							["cr"] = 2783,	-- Marez Cowl
							["coord"] = { 29.0, 64.0, ARATHI_HIGHLANDS },
						},
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
					["qg"] = 2706,	-- Tor'gan
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4513, 12 },	-- Raptor Heart
					},
					["lvl"] = 29,
				}),
				q(655, {	-- Hammerfall
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["qg"] = 2792,	-- Gor'mul
				}),
				q(663, {	-- Land Ho!
					["lvl"] = 35,
					["qg"] = 2766,	-- Lolo the Lookout
				}),
				q(647, {	-- MacKreel's Moonshine
					["qg"] = 2696,	-- Foggy MacKreel
					["coord"] = { 43.2, 92.6, ARATHI_HIGHLANDS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4441, 1 },	-- MacKreel's Moonshine
					},
					["lvl"] = 28,
				}),
				q(690, {	-- Malin's Request
					["qg"] = 2708,	-- Archmage Malin
					["coord"] = { 39.8, 81.2, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(697, {	-- Malin's Request
					["qg"] = 2789,	-- Skuerto
					["sourceQuest"] = 696,	-- Attack on the Tower
					["coord"] = { 46.6, 47, ARATHI_HIGHLANDS },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4533, 1 },	-- Sealed Letter to Archmage Malin
					},
					["lvl"] = 30,
					["g"] = {
						i(4975),	-- Vigilant Buckler
						i(15104),	-- Wingborne Boots
					},
				}),
				{
					["provider"] = { "o", 2688 },	-- Keystone
					["allianceQuestID"] = 653,	-- Myzrael's Allies
					["hordeQuestID"] = 688,	-- Myzrael's Allies
					["sourceQuest"] = 652,	-- Breaking the Keystone
					["coord"] = { 36.1, 57.9, ARATHI_HIGHLANDS },
				},
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
					["qg"] = 2706,	-- Tor'gan
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4512, 10 },	-- Highland Raptor Eye
					},
					["lvl"] = 29,
				}),
				q(643, {	-- Sigil of Arathor
					["qg"] = 2703,	-- Zengu
					["sourceQuest"] = 641,	-- Sigil of Thoradin
					["coord"] = { 73.8, 33.8, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4458, 1 },	-- Sigil of Arathor
					},
					["lvl"] = 32,
				}),
				q(639, {	-- Sigil of Strom
					["qg"] = 2703,	-- Zengu
					["sourceQuest"] = 638,	-- Trollbane
					["coord"] = { 73.8, 33.8, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4440, 1 },	-- Sigil of Strom
					},
					["lvl"] = 32,
				}),
				q(641, {	-- Sigil of Thoradin
					["qg"] = 2706,	-- Tor'gan
					["sourceQuest"] = 640,	-- The Broken Sigil
					["coord"] = { 74.6, 36.4, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4453, 1 },	-- Sigil of Thoradin
					},
					["lvl"] = 32,
				}),
				q(644, {	-- Sigil of Trollbane
					["qg"] = 2703,	-- Zengu
					["sourceQuest"] = 643,	-- Sigil of Arathor
					["coord"] = { 73.8, 33.8, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4466, 1 },	-- Sigil of Trollbane
					},
					["lvl"] = 32,
				}),
				q(651, {	-- Stones of Binding
					["provider"] = { "o", 2701 },	-- Iridescent Shards
					["sourceQuest"] = 642,	-- The Princess Trapped
					["cost"] = {
						{ "i", 4483, 1 },	-- Burning Key
						{ "i", 4484, 1 },	-- Cresting Key
						{ "i", 4485, 1 },	-- Thundering Key
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4483,	-- Burning Key
							["questID"] = 651,	-- Stones of Binding
							["provider"] = { "o", 2689 },	-- Stone of West Binding
							["coord"] = { 25.5, 30.2, ARATHI_HIGHLANDS },
						},
						{
							["itemID"] = 4484,	-- Cresting Key
							["questID"] = 651,	-- Stones of Binding
							["provider"] = { "o", 2691 },	-- Stone of East Binding
							["coord"] = { 66.7, 29.8, ARATHI_HIGHLANDS },
						},
						{
							["itemID"] = 4485,	-- Thundering Key
							["questID"] = 651,	-- Stones of Binding
							["provider"] = { "o", 2690 },	-- Stone of Outer Binding
							["coord"] = { 52.1, 50.7, ARATHI_HIGHLANDS },
						},
					},
				}),
				q(682, {	-- Stromgarde Badges
					["qg"] = 2700,	-- Captain Nials
					["coord"] = { 45.9, 47.5, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4506, 15 },	-- Stromgarde Badge
					},
					["lvl"] = 30,
					["g"] = {
						i(4741),	-- Stromgarde Cavalry Leggings
					},
				}),
				q(637, {	-- Sully Balloo's Letter
					["provider"] = { "i", 4433 },	-- Waterlogged Envelope
					["cost"] = { { "i", 4432, 1 } },	-- Sully Balloo's Letter
					["coord"] = { 44.3, 92.9, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(656, {	-- Summoning the Princess
					["qg"] = 2785,	-- Theldurin the Lost
					["sourceQuest"] = 692,	-- The Lost Fragments
					["coord"] = { 51.4, 76.8, BADLANDS },
					["maps"] = { BADLANDS },
					["cost"] = {
						{ "i", 4472, 1 },	-- Scroll of Myzrael
						{ "i", 4473, 1 },	-- Eldritch Shackles
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4473,	-- Eldritch Shackles
							["questID"] = 656,	-- Summoning the Princess
							["cr"] = 2755,	-- Myzrael
							["coord"] = { 62.6, 34.6, ARATHI_HIGHLANDS },
						},
						i(4743),	-- Pulsating Crystalline Shard
					},
				}),
				q(665, {	-- Sunken Treasure (1/5)
					["qg"] = 2768,	-- Professor Phizzlethorpe
					["coord"] = { 33.8, 80.6, ARATHI_HIGHLANDS },
					["lvl"] = 35,
				}),
				q(666, {	-- Sunken Treasure (2/5)
					["qg"] = 2774,	-- Doctor Draxlegauge
					["sourceQuest"] = 665,	-- Sunken Treasure (1/5)
					["coord"] = { 33.8, 80.4, ARATHI_HIGHLANDS },
					["cost"] = {
						{ "i", 4491, 1 },	-- Goggles of Gem Hunting
						{ "i", 4492, 10 },	-- Elven Gem
					},
					["lvl"] = 35,
					["g"] = {
						i(4547),	-- Gnomish Zapper
						i(4548),	-- Servomechanic Sledgehammer
					},
				}),
				q(668, {	-- Sunken Treasure (3/5)
					["qg"] = 2774,	-- Doctor Draxlegauge
					["sourceQuest"] = 666,	-- Sunken Treasure (2/5)
					["coord"] = { 33.8, 80.4, ARATHI_HIGHLANDS },
					["cost"] = {
						{ "i", 4493, 1 },	-- Elven Gems
					},
					["lvl"] = 35,
				}),
				q(669, {	-- Sunken Treasure (4/5)
					["qg"] = 2610,	-- Shakes O'Breen
					["sourceQuest"] = 668,	-- Sunken Treasure (3/5)
					["coord"] = { 32.2, 81.4, ARATHI_HIGHLANDS },
					["cost"] = {
						{ "i", 4502, 1 },	-- Sample Elven Gem
					},
					["lvl"] = 35,
				}),
				q(670, {	-- Sunken Treasure (5/5)
					["qg"] = 2487,	-- Fleet Master Seahorn <Blackwater Raiders>
					["sourceQuest"] = 669,	-- Sunken Treasure (4/5)
					["coord"] = { 27.2, 77.0, STRANGLETHORN_VALE },
					["maps"] = { STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 4494, 1 },	-- Seahorn's Sealed Letter
					},
					["lvl"] = 35,
				}),
				q(640, {	-- The Broken Sigil
					["qg"] = 2703,	-- Zengu
					["sourceQuest"] = 639,	-- Sigil of Strom
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4450, 11 },	-- Sigil Fragment
					},
					["lvl"] = 32,
				}),
				q(642, {	-- The Princess Trapped
					["provider"] = { "o", 138492 },	-- Shards of Myzrael
					["cost"] = {
						{ "i", 4435, 12 },	-- Mote of Myzrael
					},
					["lvl"] = 30,
				}),
				q(680, {	-- The Real Threat
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4551, 1 },	-- Or'Kalar's Head
					},
					["lvl"] = 30,
					["g"] = {
						{
							["itemID"] = 4551,	-- Or'Kalar's Head
							["questID"] = 680,	-- The Real Threat
							["cr"] = 2773,	-- Or'Kalar
							["coord"] = { 20.8, 65.6, ARATHI_HIGHLANDS },
						},
						i(4976),	-- Mistspray Kilt
						i(4977),	-- Sword of Hammerfall
					},
				}),
				q(687, {	-- Theldurin the Lost
					["qgs"] = {
						2786,	-- Gerrig Bonegrip
						2787,	-- Zaruk
					},
					["sourceQuests"] = {
						653,	-- Myzrael's Allies
						688,	-- Myzrael's Allies
					},
					["coords"] = {
						{ 74.4, 35.6, ARATHI_HIGHLANDS },
						{ 50.6, 6.2, IRONFORGE },
					},
					["maps"] = { IRONFORGE, BADLANDS },
					["lvl"] = 30,
				}),
				q(694, {	-- Trelane's Defenses
					["qg"] = 2789,	-- Skuerto
					["sourceQuest"] = 693,	-- Wand over Fist
					["coord"] = { 46.6, 47.0, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4527, 1 },	-- Azure Agate
					},
					["lvl"] = 30,
				}),
				q(6622, {	-- Triage
					["qg"] = 12920,	-- Doctor Gregory Victor
					["coord"] = { 73.40, 36.89, ARATHI_HIGHLANDS },
					["requireSkill"] = FIRST_AID,
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
					["qg"] = 2789,	-- Skuerto
					["sourceQuest"] = 691,	-- Worth Its Weight in Gold
					["coord"] = { 46.6, 47.0, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4525,	-- Trelane's Wand of Invocation
							["questID"] = 693,	-- Wand over Fist
							["cr"] = 2793,	-- Kor'gresh Coldrage
							["coord"] = { 54.6, 81.6, ARATHI_HIGHLANDS },
						},
					},
				}),
				q(684, {	-- Wanted! Marez Cowl
					["provider"] = { "o", 2713 },	-- Wanted Board
					["coord"] = { 46.0, 47.7, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4515, 1 },	-- Marez's Head
					},
					["lvl"] = 30,
					["g"] = {
						{
							["itemID"] = 4515,	-- Marez's Head
							["questID"] = 684,	-- Wanted! Marez Cowl
							["cr"] = 2783,	-- Marez Cowl
							["coord"] = { 29.0, 64.0, ARATHI_HIGHLANDS },
						},
						i(4744),	-- Arcane Runed Bracers
					},
				}),
				q(685, {	-- Wanted! Otto and Falconcrest
					["provider"] = { "o", 2713 },	-- Wanted Board
					["coord"] = { 46.0, 47.7, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4517, 1 },	-- Falconcrest's Head
						{ "i", 4516, 1 },	-- Otto's Head
					},
					["lvl"] = 30,
					["g"] = {
						{
							["itemID"] = 4517,	-- Falconcrest's Head
							["questID"] = 685,	-- Wanted! Otto and Falconcrest
							["cr"] = 2597,	-- Lord Falconcrest <Syndicate Leader>
							["coord"] = { 26.0, 65.6, ARATHI_HIGHLANDS },
						},
						{
							["itemID"] = 4516,	-- Otto's Head
							["questID"] = 685,	-- Wanted! Otto and Falconcrest
							["cr"] = 2599,	-- Otto <Bodyguard>
							["coord"] = { 26.0, 65.6, ARATHI_HIGHLANDS },
						},
						i(5247),	-- Rod of Sorrow
						i(4745),	-- War Rider Bracers
					},
				}),
				q(691, {	-- Worth Its Weight in Gold
					["qg"] = 2788,	-- Apprentice Kryten
					["coord"] = { 46.2, 47.8, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4503, 10 },	-- Witherbark Tusk
						{ "i", 4522, 4 },	-- Witherbark Medicine Pouch
						{ "i", 5040, 1 },	-- Shadow Hunter Knife
					},
					["lvl"] = 30,
				}),
			}),
		}),
	}),
};