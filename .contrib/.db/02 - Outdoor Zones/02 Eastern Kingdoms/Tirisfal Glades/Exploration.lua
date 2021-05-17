---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if ANYCLASSIC
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(TIRISFAL_GLADES, {
			n(EXPLORATION, {
				exploration(157, "256:210:335:139"),	-- Agamand Mills
				exploration(165, "216:179:630:326"),	-- Balnir Farmstead
				exploration(162, "201:288:587:139"),	-- Brightwater Lake
				-- #if AFTER TBC
				exploration(159, "128:256:537:299"),	-- Brill [TBC]
				-- #else
				exploration(159, "128:158:537:299"),	-- Brill [Classic]
				-- #endif
				exploration(166, "150:128:474:327"),	-- Cold Hearth Manor
				exploration(167, "173:128:694:289"),	-- Crusader Outpost
				exploration(154, "245:205:227:328"),	-- Deathknell
				exploration(164, "174:220:497:145"),	-- Garren's Haunt
				exploration(811, "243:199:363:349"),	-- Nightmare Vale
				exploration(459, "175:247:689:104"),	-- Scarlet Watch Post
				exploration(156, "256:156:239:250"),	-- Solliden Farmstead
				exploration(810, "186:128:395:277"),	-- Stillwater Pond
				exploration(152, "230:205:698:362"),	-- The Bulwark
				exploration(812, "237:214:757:205"),	-- Venomweb Vale
				exploration(160, "211:189:746:125"),	-- Whispering Gardens
				exploration(1497, "315:235:463:361"),	-- Undercity
				--[[
				exploration(158, ""),	-- Agamand Family Crypt
				exploration(153, ""),	-- Ruins of Lordaeron
				exploration(155, ""),	-- Night Web's Hollow
				exploration(161, ""),	-- Terrace of Repose
				exploration(163, ""),	-- Gunther's Retreat
				exploration(168, ""),	-- The North Coast
				exploration(169, ""),	-- Whispering Shore
				exploration(173, ""),	-- Faol's Rest
				exploration(2117, ""),	-- Shadow Grave
				exploration(2118, ""),	-- Brill Town Hall
				exploration(2119, ""),	-- Gallows' End Tavern
				exploration(2399, ""),	-- The Great Sea
				]]--
			}),
		}),
	}),
};
-- #endif