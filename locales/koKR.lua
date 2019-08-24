-- Localization for Korean (Korea) Clients.
if GetLocale() ~= "koKR" then return; end
local app = select(2, ...);
local L = app.L;

-- TODO

-- Dungeons
L.ZONE_TEXT_TO_MAP_ID["성난불길 협곡"] = 213;	-- RFC
L.ZONE_TEXT_TO_MAP_ID["그림자송곳니 성채"] = 310;	-- SFK
L.ZONE_TEXT_TO_MAP_ID["통곡의 동굴"] = 279;	-- WC

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