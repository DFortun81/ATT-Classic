-- Localization for Korean (Korea) Clients.
if GetLocale() ~= "koKR" then return; end
local app = select(2, ...);
local L = app.L;

-- TODO

-- Dungeons
L.ZONE_TEXT_TO_MAP_ID["검은심연 나락"] = 221;	-- BFD
L.ZONE_TEXT_TO_MAP_ID["검은바위 나락"] = 242;	-- BRD
L.ZONE_TEXT_TO_MAP_ID["죽음의 폐광"] = 291;	-- DM/VC
L.ZONE_TEXT_TO_MAP_ID["놈리건"] = 226;	-- Gnomer
L.ZONE_TEXT_TO_MAP_ID["마라우돈"] = 280;	-- Maraudon
L.ZONE_TEXT_TO_MAP_ID["성난불길 협곡"] = 213;	-- RFC
L.ZONE_TEXT_TO_MAP_ID["가시덩굴 구릉"] = 300;	-- RFD
L.ZONE_TEXT_TO_MAP_ID["가시덩굴 우리"] = 301;	-- RFK
L.ZONE_TEXT_TO_MAP_ID["그림자송곳니 성채"] = 310;	-- SFK
L.ZONE_TEXT_TO_MAP_ID["붉은십자군 수도원"] = 435;	-- SM
L.ZONE_TEXT_TO_MAP_ID["아탈학카르 신전"] = 220;	-- ST
L.ZONE_TEXT_TO_MAP_ID["울다만"] = 230;	-- ULDA
L.ZONE_TEXT_TO_MAP_ID["통곡의 동굴"] = 279;	-- WC
L.ZONE_TEXT_TO_MAP_ID["줄파락"] = 219;	-- ZF

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