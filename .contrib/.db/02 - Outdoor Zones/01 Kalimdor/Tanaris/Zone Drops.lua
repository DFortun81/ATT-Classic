---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(TANARIS, {
			n(ZONEDROPS, {
				i(11206, {	-- Formula: Enchant Cloak - Lesser Agility
					["crs"] = {
						5623,	-- Wastewander Assassin
						7805,	-- Wastewander Scofflaw
					},
				}),
				i(8399, {	-- Pattern: Tough Scorpid Boots
					["cr"] = 5615,	-- Wastewander Rogue
				}),
				i(8397, {	-- Pattern: Tough Scorpid Bracers
					["cr"] = 5617,	-- Wastewander Shadow Mage
				}),
				i(8395, {	-- Pattern: Tough Scorpid Breastplate
					["cr"] = 5618,	-- Wastewander Bandit
				}),
				i(8398, {	-- Pattern: Tough Scorpid Gloves
					["cr"] = 5616,	-- Wastewander Thief
				}),
				i(8402, {	-- Pattern: Tough Scorpid Helm
					["crs"] = {
						7883,	-- Andre Firebeard
						5623,	-- Wastewander Assassin
						7805,	-- Wastewander Scofflaw
					},
				}),
				i(8401, {	-- Pattern: Tough Scorpid Leggings
					["cr"] = 5615,	-- Wastewander Rogue
				}),
				i(8400, {	-- Pattern: Tough Scorpid Shoulders
					["crs"] = {
						7883,	-- Andre Firebeard
						5623,	-- Wastewander Assassin
						7805,	-- Wastewander Scofflaw
					},
				}),
				i(9276, {	-- Pirate's Footlocker
					["crs"] = {
						7857,	-- Southsea Dock Worker
						7856,	-- Southsea Freebooter
						15685,	-- Southsea Kidnapper
						7855,	-- Southsea Pirate
						7858,	-- Southsea Swashbuckler
					},
					["groups"] = {
						i(9359),	-- Wirt's Third Leg
						i(9250, {	-- Ship Schedule
							["questID"] = 2876,	-- Ship Schedules
						}),
						i(9251, {	-- Upper Map Fragment
							["questID"] = 2882,	-- Cuergo's Gold
							["repeatable"] = true,
						}),
						i(9253, {	-- Middle Map Fragment
							["questID"] = 2882,	-- Cuergo's Gold
							["repeatable"] = true,
						}),
						i(9252, {	-- Lower Map Fragment
							["questID"] = 2882,	-- Cuergo's Gold
							["repeatable"] = true,
						}),
						i(9249, {	-- Captain's Key
							["description"] = "Unlocks the Captain's Chest located in the ship at the docks.",
							["coord"] = { 76.5, 45.8, TANARIS },
							["groups"] = {
								i(9359),	-- Wirt's Third Leg
							},
						}),
					},
				}),
				i(6257, {	-- Roc Gizzard
					["questID"] = 1452,	-- Rhapsody's Kalimdor Kocktail
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						5429,	-- Fire Roc
						5428,	-- Roc
						5430,	-- Searing Roc
					},
				}),
				i(20519, {	-- Southsea Pirate Hat
					["questID"] = 8365,	-- Pirate Hats Ahoy!
					["crs"] = {
						7883,	-- Andre Firebeard
						8203,	-- Kregg Keelhaul
						7857,	-- Southsea Dock Worker
						7856,	-- Southsea Freebooter
						15685,	-- Southsea Kidnapper
						7855,	-- Southsea Pirate
						7858,	-- Southsea Swashbuckler
					},
				}),
				i(9437, {	-- Untested Basilisk Sample
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8523, 1 },	-- Field Testing Kit
					},
					["crs"] = {
						5419,	-- Glasshide Basilisk
						5420,	-- Glasshide Gazer
						5421,	-- Glasshide Petrifier
					},
					["groups"] = {
						{
							["itemID"] = 9440,	-- Acceptable Basilisk Sample
							["questID"] = 654,	-- Tanaris Field Sampling
						},
					},
				}),
				i(9439, {	-- Untested Hyena Sample
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8523, 1 },	-- Field Testing Kit
					},
					["crs"] = {
						5426,	-- Blisterpaw Hyena
						8208,	-- Murderous Blisterpaw
						5427,	-- Rabid Blisterpaw
						5425,	-- Starving Blisterpaw
					},
					["groups"] = {
						{
							["itemID"] = 9441,	-- Acceptable Hyena Sample
							["questID"] = 654,	-- Tanaris Field Sampling
						},
					},
				}),
				i(9442, {	-- Untested Scorpid Sample
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8523, 1 },	-- Field Testing Kit
					},
					["crs"] = {
						7803,	-- Scorpid Duneburrower
						5424,	-- Scorpid Dunestalker
						5422,	-- Scorpid Hunter
						5423,	-- Scorpid Tail Lasher
					},
					["groups"] = {
						{
							["itemID"] = 9438,	-- Acceptable Scorpid Sample
							["questID"] = 654,	-- Tanaris Field Sampling
						},
					},
				}),
			}),
		}),
	}),
};