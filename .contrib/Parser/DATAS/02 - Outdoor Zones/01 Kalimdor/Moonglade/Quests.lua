---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(MOONGLADE, {	-- Moonglade
			n(-17, {	-- Quests
				q(5527, {	-- A Reliquary of Purity
					["lvl"] = 56,
				}),
				q(5526, {	-- Shards of the Felvine
					["lvl"] = 56,
					["g"] = {
						i(18535),	-- Milli's Shield
						i(18536),	-- Milli's Lexicon
						i(18501),	-- Felvine Shard
					},
				}),
				q(8741, {	-- The Champion Returns
					["lvl"] = 60,
					["qg"] = 11832,	-- Keeper Remulos
				}),
				q(8736, {	-- The Nightmare Manifests
					["lvl"] = 60,
					["qg"] = 11832,	-- Keeper Remulos
					["g"] = {
						i(21531),	-- Drake Tooth Necklace
						i(21532),	-- Drudge Boots
					},
				}),
				q(8735, {	-- The Nightmare's Corruption
					["lvl"] = 60,
				}),
				q(6845, {	-- Uncovering Past Secrets
					["lvl"] = 54,
					["races"] = HORDE_ONLY,
					["qg"] = 11939,	-- Umber
					["g"] = {
						i(18400),	-- Ring of Living Stone
						i(18402),	-- Glowing Crystal Ring
					},
				}),
				q(1185, {	-- Under the Chitin Was...
					["lvl"] = 54,
					["races"] = HORDE_ONLY,
					["qg"] = 11939,	-- Umber
				}),
				q(1124, {	-- Wasteland
					["lvl"] = 54,
					["races"] = HORDE_ONLY,
				}),
			}),
		}),
	}),
};