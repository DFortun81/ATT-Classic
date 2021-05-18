---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(ASHENVALE, {
			n(ZONEDROPS, {
				i(16408, {	-- Befouled Water Globe
					["questID"] = 1918,	-- The Befouled Element
					["coord"] = { 50.8, 71.6, ASHENVALE },
					["cr"] = 12759,	-- Tideress
					["races"] = HORDE_ONLY,
				}),
				i(23780, {	-- Diabolical Plans [Alliance]
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["crs"] = {
						11697,	-- Mannoroc Lasher
						6115,	-- Roaming Felguard
						6073,	-- Searing Infernal
					},
				}),
				i(23798, {	-- Diabolical Plans [Horde]
					["races"] = HORDE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["crs"] = {
						11697,	-- Mannoroc Lasher
						6115,	-- Roaming Felguard
						6073,	-- Searing Infernal
					},
				}),
				i(1351, {	-- Fingerbone Bracers
					["cr"] = 3808,	-- Forsaken Dark Stalker
				}),
				i(11151, {	-- Formula: Enchant Gloves - Herbalism
					["crs"] = {
						3834,	-- Crazed Ancient
						3919,	-- Withered Ancient
					},
				}),
				i(5463, {	-- Glowing Gem
					["questID"] = 1023,	-- Raene's Cleansing
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						3740,	-- Saltspittle Muckdweller
						3742,	-- Saltspittle Oracle
						3737,	-- Saltspittle Puddlejumper
						3739,	-- Saltspittle Warrior
					},
				}),
				i(5366, {	-- Glowing Soul Gem
					["questID"] = 970,	-- The Tower of Althalaxx (4/9)
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						3728,	-- Dark Strand Adept
						3879,	-- Dark Strand Assassin
						3725,	-- Dark Strand Cultist
						3727,	-- Dark Strand Enforcer
						3730,	-- Dark Strand Excavator
					},
				}),
				i(12220, {	-- Intact Elemental Bracer
					["questID"] = 1016,	-- Elemental Bracers
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						3917,	-- Befouled Water Elemental
						12759,	-- Tideress
					},
				}),
				i(7270, {	-- Laughing Sister's Hair
					["questID"] = 1945,	-- Laughing Sisters
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["cr"] = 4054,	-- Laughing Sister
				}),
				i(16743, {	-- Logging Rope
					["questID"] = 6571,	-- Warsong Supplies
					["races"] = HORDE_ONLY,
					["crs"] = {
						3746,	-- Foulweald Den Watcher
						3745,	-- Foulweald Pathfinder
						3748,	-- Foulweald Shaman
						3750,	-- Foulweald Totemic
						3749,	-- Foulweald Ursa
						3743,	-- Foulweald Warrior
						3925,	-- Thistlefur Avenger
						3923,	-- Thistlefur Den Watcher
						3926,	-- Thistlefur Pathfinder
						3924,	-- Thistlefur Shaman
						3922,	-- Thistlefur Totemic
						3921,	-- Thistlefur Ursa
					},
				}),
				i(5481, {	-- Satyr Horns
					["allianceQuestID"] = 1032,	-- Satyr Slaying!
					["hordeQuestID"] = 6441,	-- Satyr Horns
					["crs"] = {
						3898,	-- Aligar the Tormentor
						3899,	-- Balizar the Umbrage
						3771,	-- Bleakheart Hellcaller
						3765,	-- Bleakheart Satyr
						3770,	-- Bleakheart Shadowstalker
						3767,	-- Bleakheart Trickster
						3900,	-- Caedakar the Vicious
						3762,	-- Felmusk Felsworn
						3759,	-- Felmusk Rogue
						3758,	-- Felmusk Satyr
						3763,	-- Felmusk Shadowstalker
						4619,	-- Geltharis
						10647,	-- Prince Raze
						3754,	-- Xavian Betrayer
						3755,	-- Xavian Felsworn
						3757,	-- Xavian Hellcaller
						3752,	-- Xavian Rogue
					},
				}),
				i(7128, {	-- Uncloven Satyr Hoof
					["questID"] = 1842,	-- Satyr Hooves
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["crs"] = {
						3771,	-- Bleakheart Hellcaller
						3765,	-- Bleakheart Satyr
						3770,	-- Bleakheart Shadowstalker
						3767,	-- Bleakheart Trickster
						3762,	-- Felmusk Felsworn
						3759,	-- Felmusk Rogue
						3758,	-- Felmusk Satyr
						3763,	-- Felmusk Shadowstalker
						3754,	-- Xavian Betrayer
						3755,	-- Xavian Felsworn
						3757,	-- Xavian Hellcaller
						3752,	-- Xavian Rogue
					},
				}),
				i(5475, {	-- Wooden Key
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						3834,	-- Crazed Ancient
						3919,	-- Withered Ancient
					},
					["groups"] = {
						{
							["itemID"] = 5464,	-- Iron Shaft
							["questID"] = 1026,	-- Raene's Cleansing
							["races"] = ALLIANCE_ONLY,
							["coord"] = { 54.4, 35.3, ASHENVALE },
						},
					},
				}),
				i(5490, {	-- Wrathtail Head
					["allianceQuestID"] = 1008,	-- The Zoram Strand
					["hordeQuestID"] = 6442,	-- Naga at the Zoram Strand
					["crs"] = {
						3711,	-- Wrathtail Myrmidon
						3944,	-- Wrathtail Priestess
						3712,	-- Wrathtail Razortail
						3715,	-- Wrathtail Sea Witch
						3717,	-- Wrathtail Sorceress
						3713,	-- Wrathtail Wave Rider
					},
				}),
			}),
		}),
	}),
};