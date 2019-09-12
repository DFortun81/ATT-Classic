---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(WINTERSPRING, {	-- Winterspring
			n(-17, {	-- Quests
				q(6606, {	-- A Little Luck
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
				}),
				q(6605, {	-- A Strange One
					["lvl"] = 49,
				}),
				q(8798, {	-- A Yeti of Your Own
					["lvl"] = 55,
					["qg"] = 10305,	-- Umi Rumplesnicker
				}),
				q(3783, {	-- Are We There, Yeti?
					["lvl"] = 52,
					["qg"] = 10305,	-- Umi Rumplesnicker
				}),
				q(977, {	-- Are We There, Yeti?
					["lvl"] = 52,
					["races"] = HORDE_ONLY,
				}),
				q(5163, {	-- Are We There, Yeti?
					["lvl"] = 52,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(15778),	-- Mechanical Yeti
					},
				}),
				q(5068, {	-- Breastplate of Bloodthirst
					["lvl"] = 57,
					--["objectID"] = 175927,	-- Malyfous's Catalogue
					["g"] = {
						i(12757),	-- Breastplate of Bloodthirst
					},
				}),
				q(5055, {	-- Brumeran of the Chillwind
					["lvl"] = 53,
				}),
				q(975, {	-- Cache of Mau'ari
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(12384),	-- Cache of Mau'ari
					},
				}),
				q(5063, {	-- Cap of the Scarlet Savant
					["lvl"] = 57,
					--["objectID"] = 175927,	-- Malyfous's Catalogue
					["g"] = {
						i(12752),	-- Cap of the Scarlet Savant
					},
				}),
				q(4804, {	-- Chillwind E'ko
					["lvl"] = 55,
					["g"] = {
						i(12457),	-- Juju Chill
					},
				}),
				q(4809, {	-- Chillwind Horns
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
				}),
				q(6502, {	-- Drakefire Amulet
					["lvl"] = 50,
					["qg"] = 10929,	-- Haleh
					["g"] = {
						i(16309),	-- Drakefire Amulet
					},
				}),
				q(6030, {	-- Duke Nicholas Zverenhoff
					["lvl"] = 50,
				}),
				q(4861, {	-- Enraged Wildkin
					["lvl"] = 53,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10301,	-- Jaron Stoneshaper <Explorers' League>
				}),
				q(4864, {	-- Enraged Wildkin
					["lvl"] = 53,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10301,	-- Jaron Stoneshaper <Explorers' League>
				}),
				q(6604, {	-- Enraged Wildkin
					["lvl"] = 53,
					["races"] = ALLIANCE_ONLY,
				}),
				q(4863, {	-- Enraged Wildkin
					["lvl"] = 53,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 175587,	-- Damaged Crate
				}),
				q(5084, {	-- Falling to Corruption
					["lvl"] = 52,
					["qg"] = 9298,	-- Donova Snowden
				}),
				q(5124, {	-- Fiery Plate Gauntlets
					["lvl"] = 55,
					["g"] = {
						i(12699),	-- Plans: Fiery Plate Gauntlets
						i(12631),	-- Fiery Plate Gauntlets
					},
				}),
				q(979, {	-- Find Ranshalla
					["lvl"] = 52,
					["races"] = ALLIANCE_ONLY,
				}),
				q(4806, {	-- Frostmaul E'ko
					["lvl"] = 55,
					["g"] = {
						i(12460),	-- Juju Might
					},
				}),
				q(4801, {	-- Frostsaber E'ko
					["lvl"] = 55,
					["g"] = {
						i(12450),	-- Juju Flurry
					},
				}),
				q(4970, {	-- Frostsaber Provisions
					["lvl"] = 58,
					["qg"] = 10618,	-- Rivern Frostwind
				}),
				q(4901, {	-- Guardians of the Altar
					["lvl"] = 52,
				}),
				q(4882, {	-- Guarding Secrets
					["lvl"] = 52,
				}),
				q(4883, {	-- Guarding Secrets
					["lvl"] = 52,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(15796),	-- Seaspray Bracers
						i(15797),	-- Shining Armplates
					},
				}),
				q(5121, {	-- High Chief Winterfall
					["lvl"] = 52,
					["races"] = HORDE_ONLY,
					["qg"] = 9298,	-- Donova Snowden
					["g"] = {
						i(15784),	-- Crystal Breeze Mantle
						i(15786),	-- Fernpulse Jerkin
						i(15787),	-- Willow Band Hauberk
					},
				}),
				q(4805, {	-- Ice Thistle E'ko
					["lvl"] = 55,
					["g"] = {
						i(12459),	-- Juju Escape
					},
				}),
				q(5067, {	-- Leggings of Arcana
					["lvl"] = 57,
					--["objectID"] = 175927,	-- Malyfous's Catalogue
					["g"] = {
						i(12756),	-- Leggings of Arcana
					},
				}),
				q(969, {	-- Luck Be With You
					["lvl"] = 55,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
				}),
				q(5085, {	-- Mystery Goo
					["lvl"] = 52,
					--["objectID"] = 176091,	-- Deadwood Cauldron
				}),
				q(5057, {	-- Past Endeavors
					["lvl"] = 53,
					["qg"] = 10303,	-- Storm Shadowhoof
					["g"] = {
						i(15704),	-- Hunter's Insignia Medal
					},
				}),
				q(5981, {	-- Rampaging Giants
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10618,	-- Rivern Frostwind
				}),
				q(5252, {	-- Remorseful Highborne
					["lvl"] = 53,
				}),
				q(4810, {	-- Return to Tinkee
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(15862),	-- Blitzcleaver
						i(15863),	-- Grave Scepter
					},
				}),
				q(4803, {	-- Shardtooth E'ko
					["lvl"] = 55,
					["g"] = {
						i(12455),	-- Juju Ember
					},
				}),
				q(5056, {	-- Shy-Rotam
					["lvl"] = 53,
					["g"] = {
						i(15783),	-- Beasthunter Dagger
						i(15782),	-- Beaststalker Blade
						i(12733),	-- Sacred Frostsaber Meat
					},
				}),
				q(4842, {	-- Strange Sources
					["lvl"] = 51,
					["races"] = HORDE_ONLY,
					["qg"] = 9298,	-- Donova Snowden
					["g"] = {
						i(15789),	-- Deep River Cloak
					},
				}),
				q(5253, {	-- The Crystal of Zin-Malor
					["lvl"] = 53,
					["g"] = {
						i(15791),	-- Turquoise Sash
						i(15792),	-- Plow Wood Spaulders
						i(15795),	-- Emerald Mist Gauntlets
					},
				}),
				q(6029, {	-- The Everlook Report
					["lvl"] = 50,
				}),
				q(6028, {	-- The Everlook Report
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
				}),
				q(5123, {	-- The Final Piece
					["lvl"] = 52,
				}),
				q(8481, {	-- The Root of All Evil
					["lvl"] = 40,
					["qg"] = 11555,	-- Gorn One Eye
					["g"] = {
						i(21326),	-- Defender of the Timbermaw
					},
				}),
				q(5244, {	-- The Ruins of Kel'Theril
					["lvl"] = 53,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11079,	-- Wynd Nightchaser
				}),
				q(5082, {	-- Threat of the Winterfall
					["lvl"] = 52,
					["qg"] = 9298,	-- Donova Snowden
				}),
				q(5086, {	-- Toxic Horrors
					["lvl"] = 52,
					["qg"] = 9298,	-- Donova Snowden
				}),
				q(6603, {	-- Trouble in Winterspring!
					["lvl"] = 52,
				}),
				q(5245, {	-- Troubled Spirits of Kel'Theril
					["lvl"] = 49,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10301,	-- Jaron Stoneshaper
				}),
				q(5054, {	-- Ursius of the Shardtooth
					["lvl"] = 53,
				}),
				q(4807, {	-- Wildkin E'ko
					["lvl"] = 55,
					["g"] = {
						i(12458),	-- Juju Guile
					},
				}),
				q(4902, {	-- Wildkin of Elune
					["lvl"] = 52,
					["g"] = {
						i(16622),	-- Thornflinger
						i(16623),	-- Opaline Medallion
					},
				}),
				q(4802, {	-- Winterfall E'ko
					["lvl"] = 55,
					["g"] = {
						i(12451),	-- Juju Power
					},
				}),
				q(5087, {	-- Winterfall Runners
					["lvl"] = 52,
					["races"] = HORDE_ONLY,
					["qg"] = 9298,	-- Donova Snowden
				}),
				q(5083, {	-- Winterfall Firewater
					["lvl"] = 52,
				}),
				q(5201, {	-- Winterfall Intrusion
					["lvl"] = 58,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10618,	-- Rivern Frostwind
				}),
				q(8471, {	-- Winterfall Ritual Totem
					["lvl"] = 50,
					["g"] = {
						i(13446),	-- Major Healing Potion
						i(13444),	-- Major Mana Potion
					},
				}),
				q(5128, {	-- Words of the High Chief
					["lvl"] = 52,
					["races"] = HORDE_ONLY,
					["qg"] = 9298,	-- Donova Snowden
				}),
				q(5161, {	-- Wrath of the Blue Flight
					["lvl"] = 57,
				}),
			}),
		}),
	}),
};