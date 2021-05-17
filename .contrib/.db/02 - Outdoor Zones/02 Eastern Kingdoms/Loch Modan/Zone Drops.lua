---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(LOCH_MODAN, {
			n(ZONEDROPS, {
				i(5319,  {	-- Bashing Pauldrons
					["cr"] = 2478,  -- Haren Swifthoof <Horde Runner>
				}),
				i(2924, {	-- Crocolisk Meat
					["questID"] = 385,	-- Crocolisk Hunting
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						5053,	-- Deviate Crocolisk
						2476,	-- Large Loch Crocolisk
						1693,	-- Loch Crocolisk
					},
				}),
				i(2925, {	-- Crocolisk Skin
					["questID"] = 385,	-- Crocolisk Hunting
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						2476,	-- Large Loch Crocolisk
						1693,	-- Loch Crocolisk
					},
				}),
				i(2939, {	-- Crocolisk Tear
					["questID"] = 278,	-- A Dark Threat Looms
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						2476,	-- Large Loch Crocolisk
						1693,	-- Loch Crocolisk
					},
				}),
				i(2606, {	-- Lurker Venom
					["questID"] = 278,	-- A Dark Threat Looms
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						1184,	-- Cliff Lurker
						1195,	-- Forest Lurker
						14266,	-- Shanda the Spinner
						1185,	-- Wood Lurker
					},
				}),
				i(2823,  {	-- Mo'grosh Can Opener
					["cr"] = 1180,  -- Mo'grosh Brute
				}),
				i(2607, {	-- Mo'grosh Crystal
					["questID"] = 278,	-- A Dark Threat Looms
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						14267,	-- Emogg the Crusher
						1180,	-- Mo'grosh Brute
						1179,	-- Mo'grosh Enforcer
						1183,	-- Mo'grosh Mystic
						1178,	-- Mo'grosh Ogre
						1181,	-- Mo'grosh Shaman
					},
				}),
				i(2821,  {	-- Mo'grosh Masher
					["crs"] = {
						14267,  -- Emogg the Crusher
						1179,  -- Mo'grosh Enforcer
					},
				}),
				i(2822,  {	-- Mo'grosh Toothpick
					["cr"] = 1178,  -- Mo'grosh Ogre
				}),
				i(4949,  {	-- Orcish Cleaver
					["cr"] = 7170,  -- Thragomm <Horde Runner>
				}),
				i(2283,  {	-- Rat Cloth Belt
					["cr"] = 1177,  -- Tunnel Rat Surveyor
				}),
				i(2281,  {	-- Rodentia Flint Axe
					["crs"] = {
						1176,  -- Tunnel Rat Forager
						1202,  -- Tunnel Rat Kobold
					},
				}),
				i(2282,  {	-- Rodentia Shortsword
					["crs"] = {
						1173,  -- Tunnel Rat Scout
						1172,  -- Tunnel Rat Vermin
					},
				}),
				i(2274,  {	-- Sapper's Gloves
					["cr"] = 1222,  -- Dark Iron Sapper
				}),
				i(2265,  {	-- Stonesplinter Axe
					["cr"] = 1163,  -- Stonesplinter Skullthumper
				}),
				i(2268,  {	-- Stonesplinter Blade
					["crs"] = {
						1162,  -- Stonesplinter Scout
						1161,  -- Stonesplinter Trogg
					},
				}),
				i(2266,  {	-- Stonesplinter Dagger
					["cr"] = 1166,  -- Stonesplinter Seer
				}),
				i(2267,  {	-- Stonesplinter Mace
					["cr"] = 1197,  -- Stonesplinter Shaman
				}),
				i(5109),	-- Stonesplinter Rags
			}),
		}),
	}),
};