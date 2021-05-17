-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
_.Instances = { tier(2, {	-- Burning Crusade
	map(COILFANG_RESERVOIR_UNDERBOG, { 	-- The Underbog
		["description"] = "Underbog is the 2nd 5-man instance within the Coilfang Reservoir found on the east side of the naga invested complex. The Underbog is home to the last vestiges of natural life left within Coilfang Reservoir that has not been completely stamped out by the Naga incursion. The only Naga presence in this section defends the structure they built to house their hydra god, Ghaz'an. The rest of the Underbog is a natural habitat, home to the most powerful species of animal life in Zangarmarsh.",
		["coord"] = { 54.24, 34.45, ZANGARMARSH },	-- The Underbog, Zangarmarsh
		["lvl"] = 60,
		["groups"] = {
			n(QUESTS, {
				q(9715, {	-- Bring Me A Shrubbery!
					["qg"] = 17856,	-- Gzhun'tt
					["coord"] = { 19.4, 50.0, ZANGARMARSH },
					["maps"] = { ZANGARMARSH },
					["lvl"] = 63,
					["cost"] = {
						{ "i", 24246, 5 },	-- Sanguine Hibiscus
					},
				}),
				q(9714, {	-- Bring Me Another Shrubbery!
					["qg"] = 17856,	-- Gzhun'tt
					["sourceQuest"] = 9715,	-- Bring Me A Shrubbery!
					["coord"] = { 19.4, 50.0, ZANGARMARSH },
					["maps"] = { ZANGARMARSH },
					["repeatable"] = true,
					["lvl"] = 63,
					["cost"] = {
						{ "i", 24246, 5 },	-- Sanguine Hibiscus
					},
				}),
				q(9738, {	-- Lost in Action
					["qg"] = 17884,	-- Watcher Jhang
					["coord"] = { 52.3, 36.0, ZANGARMARSH },
					["maps"] = { COILFANG_RESERVOIR_SLAVEPENS, ZANGARMARSH },
					["lvl"] = 62,
					["groups"] = {
						i(25541),	-- Cenarion Ring of Casting
						i(28029),	-- Goldenvine Wraps
						i(25540),	-- Dark Cloak of the Marsh
					},
				}),
				q(9717, {	-- Oh, It's On!
					["qg"] = 17857,	-- T'shu
					["coord"] = { 19.4, 49.8, ZANGARMARSH },
					["maps"] = { ZANGARMARSH },
					["lvl"] = 63,
					["cost"] = {
						{ "i", 24247, 1 },	-- Underspore Frond
					},
					["groups"] = {
						{
							["itemID"] = 24247,	-- Underspore Frond
							["questID"] = 9717,	-- Oh, It's On!
							["coord"] = { 71.5, 86.9, COILFANG_RESERVOIR_UNDERBOG },
						},
						i(28111),	-- Everlasting Underspore Frond
					},
				}),
				q(9719, {	-- Stalk the Stalker
					["qg"] = 17866,	-- Khn'nix
					["coord"] = { 19.6, 49.8, ZANGARMARSH },
					["maps"] = { ZANGARMARSH },
					["lvl"] = 63,
					["cost"] = {
						{ "i", 24248, 1 },	-- Brain of the Black Stalker
					},
					["groups"] = {
						i(24248, {	-- Brain of the Black Stalker
							["questID"] = 9719,	-- Stalk the Stalker
							["cr"] = 17882,	-- The Black Stalker
						}),
						i(28109),	-- Essence Infused Mushroom
						i(28108),	-- Power Infused Mushroom
					},
				}),
			}),
			n(ZONEDROPS, {
				i(24246),	-- Sanguine Hibiscus
			}),
			d(1, {	-- Normal
				n(17770, {	-- Hungarfen
					i(27631),	-- Needle Shrike
					i(24451),	-- Lykul Bloodbands
					i(24450),	-- Manaspark Gloves
					i(24452),	-- Starlight Gauntlets
					i(24413),	-- Totem of the Thunderhead
				}),
				n(18105, {	-- Ghaz'an
					i(24461),	-- Hatebringer
					i(24462),	-- Luminous Pearls of Insight
					i(24460),	-- Talisman of Tenacity
					i(24459),	-- Cloak of Healing Rays
					i(24458),	-- Studded Girdle of Virtue
				}),
				n(17826, {	-- Swamplord Musel'ek
					i(24453),	-- Zangartooth Shortblade
					i(24457),	-- Truth Bearer Shoulderguards
					i(24454),	-- Cloak of Enduring Swiftness
					i(24455),	-- Tunic of the Nightwatcher
					i(24456),	-- Greaves of the Iron Guardian
				}),
				n(17882, {	-- The Black Stalker
					ach(650),	-- Underbog
					i(24464),	-- The Stalker's Fangs
					i(24463),	-- Pauldrons of Brute Force
					i(24481),	-- Robes of the Augurer
					i(24465),	-- Shamblehide Chestguard
					i(24466),	-- Skulldugger's Leggings
				}),
			}),
			d(2, {	-- Heroic
				["cost"] = {
					{ "i", 30623, 1 },	-- Reservoir Key
				},
				["lvl"] = 70,
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							17770,	-- Hungarfen
							18105,	-- Ghaz'an
							17826,	-- Swamplord Musel'ek
							17882,	-- The Black Stalker
						},
						["groups"] = {
							i(29434),	-- Badge of Justice
							i(30606),	-- Lambent Chrysoprase
							i(30608),	-- Radiant Chrysoprase
							i(30607),	-- Splendid Fire Opal
						},
					}),
					n(17770, {	-- Hungarfen
						i(27747),	-- Boggspine Knuckles
						i(27746),	-- Arcanium Signet Bands
						i(27745),	-- Hungarhide Gauntlets
						i(27743),	-- Girdle of Living Flame
						i(27748),	-- Cassock of the Loyal
						i(27744),	-- Idol of Ursoc
					}),
					n(18105, {	-- Ghaz'an
						i(27757),	-- Greatstaff of the Leviathan
						i(27759),	-- Headdress of the Tides
						i(27758),	-- Hydra-Fang Necklace
						i(27760),	-- Dunewind Sash
						i(27755),	-- Girdle of Gallantry
						i(27761),	-- Ring of the Shadow Deeps
					}),
					n(17826, {	-- Swamplord Musel'ek
						i(27767),	-- Bogreaver
						i(27763),	-- Crown of the Forest Lord
						i(27766),	-- Swampstone Necklace
						i(27765),	-- Armwraps of Disdain
						i(27764),	-- Hands of the Sun
						i(27762),	-- Weathered Band of the Swamplord
					}),
					n(17882, {	-- The Black Stalker
						ach(670),	-- Heroic: Underbog
						i(27769),	-- Endbringer
						i(29350),	-- The Black Stalk
						i(27772),	-- Stormshield of Renewal
						i(27781),	-- Demonfang Ritual Helm
						i(27938),	-- Savage Mask of the Lynx Lord
						i(27779),	-- Bone Chain Necklace
						i(27771),	-- Doomplate Shoulderguards
						i(27768),	-- Oracle Belt of Timeless Mystery
						i(27773),	-- Barbaric Legstraps
						i(27907),	-- Mana-Etched Pantaloons
						i(30541),	-- Stormsong Kilt
						i(29265),	-- Barkchip Boots
						i(32081),	-- Eye of the Stalker
						i(27780),	-- Ring of Fabled Hope
						i(27896),	-- Alembic of Infernal Power
						i(27770),	-- Argussian Compass
						{
							["itemID"] = 33826,	-- Black Stalker Egg
							["questID"] = 11369,	-- Wanted: A Black Stalker Egg
							["isDaily"] = true,
						},
					}),
				},
			}),
		},
	}),
})};