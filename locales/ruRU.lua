-- Localization for Russian Clients.
if GetLocale() ~= "ruRU" then return; end
local L = ATTC.L;

-- TODO

-- Dungeons
L.ZONE_TEXT_TO_MAP_ID["Огненная пропасть"] = 213;	-- RFC
L.ZONE_TEXT_TO_MAP_ID["Крепость Темного Клыка"] = 310;	-- SFK

local a = L.NPC_ID_NAMES;
for key,value in pairs({
	-- Enter translated NPCID's here
})
do a[key] = value; end

local a = L.OBJECT_ID_NAMES;
for key,value in pairs({
	-- Enter translated OBJECTID's here
})
do a[key] = value; end