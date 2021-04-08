-- Localization for Chinese (Simplified, PRC) Clients.
if GetLocale() ~= "zhCN" then return; end
local app = select(2, ...);
local L = app.L;

--TODO: L.FACTION_MODE_TOOLTIP = "Turn this setting on if you want to see Account Mode data only for races and classes of your current faction.";

--TODO: L.TOGGLE_FACTION_MODE = "Toggle Faction Mode";

-- Dungeons
L.ZONE_TEXT_TO_MAP_ID["黑暗深渊"] = 221;	-- BFD
L.ZONE_TEXT_TO_MAP_ID["黑石深渊"] = 242;	-- BRD
L.ZONE_TEXT_TO_MAP_ID["黑石山"] = 35;	-- BRM
L.ZONE_TEXT_TO_MAP_ID["黑石塔"] = 250;	-- BRS
L.ZONE_TEXT_TO_MAP_ID["死亡矿井"] = 291;	-- DM/VC
L.ZONE_TEXT_TO_MAP_ID["厄运之槌"] = 234;	-- Dire Maul
L.ZONE_TEXT_TO_MAP_ID["诺莫瑞根"] = 226;	-- Gnomer
L.ZONE_TEXT_TO_MAP_ID["玛拉顿"] = 280;	-- Maraudon
L.ZONE_TEXT_TO_MAP_ID["怒焰裂谷"] = 213;	-- RFC
L.ZONE_TEXT_TO_MAP_ID["剃刀高地"] = 300;	-- RFD
L.ZONE_TEXT_TO_MAP_ID["剃刀沼泽"] = 301;	-- RFK
L.ZONE_TEXT_TO_MAP_ID["通灵学院"] = 310;	-- SCHOLO
L.ZONE_TEXT_TO_MAP_ID["影牙城堡"] = 310;	-- SFK
L.ZONE_TEXT_TO_MAP_ID["血色修道院"] = 435;	-- SM
L.ZONE_TEXT_TO_MAP_ID["斯坦索姆"] = 317;	-- STRATH
L.ZONE_TEXT_TO_MAP_ID["阿塔哈卡神庙"] = 220;	-- ST
L.ZONE_TEXT_TO_MAP_ID["奥达曼"] = 230;	-- ULDA
L.ZONE_TEXT_TO_MAP_ID["哀嚎洞穴"] = 279;	-- WC
L.ZONE_TEXT_TO_MAP_ID["祖尔法拉克"] = 219;	-- ZF

L.ZONE_TEXT_TO_MAP_ID["Magister's Terrace"] = 348;	-- MGT
L.ZONE_TEXT_TO_MAP_ID["Karazhan"] = 350;	-- KARA
L.ZONE_TEXT_TO_MAP_ID["Gruul's Lair"] = 330;	-- GRUL
L.ZONE_TEXT_TO_MAP_ID["Magtheridon's Lair"] = 331;	-- MAG
L.ZONE_TEXT_TO_MAP_ID["Serpentshrine Cavern"] = 332;	-- SSC
L.ZONE_TEXT_TO_MAP_ID["风暴要塞"] = 334;	-- TK
L.ZONE_TEXT_TO_MAP_ID["The Battle for Mount Hyjal"] = 329;	-- HYJAL
L.ZONE_TEXT_TO_MAP_ID["The Black Temple"] = 340;	-- BT
L.ZONE_TEXT_TO_MAP_ID["Sunwell Plataeu"] = 335;	-- SWP
L.ZONE_TEXT_TO_MAP_ID["Zul'Aman"] = 333;	-- ZA

L.ALT_ZONE_TEXT_TO_MAP_ID["奥金尼地穴"] = 256;	-- CRYPTS
L.ALT_ZONE_TEXT_TO_MAP_ID["法力陵墓"] = 272;	-- MT
L.ALT_ZONE_TEXT_TO_MAP_ID["塞泰克大厅"] = 258;	-- SETH
L.ALT_ZONE_TEXT_TO_MAP_ID["暗影迷宫"] = 260;	-- SLABS
L.ALT_ZONE_TEXT_TO_MAP_ID["黑色沼泽"] = 273;	-- BLKM
L.ALT_ZONE_TEXT_TO_MAP_ID["Old Hillsbrad Foothills"] = 274;	-- OHF
L.ALT_ZONE_TEXT_TO_MAP_ID["The Slave Pens"] = 265;	-- SPENS
L.ALT_ZONE_TEXT_TO_MAP_ID["The Steamvault"] = 263;	-- SVALT
L.ALT_ZONE_TEXT_TO_MAP_ID["The Underbog"] = 262;	-- UNBOG
L.ALT_ZONE_TEXT_TO_MAP_ID["The Blood Furnace"] = 261;	-- BF
L.ALT_ZONE_TEXT_TO_MAP_ID["Hellfire Ramparts"] = 347;	-- RAMPS
L.ALT_ZONE_TEXT_TO_MAP_ID["The Shattered Halls"] = 246;	-- SHALLS
L.ALT_ZONE_TEXT_TO_MAP_ID["The Arcatraz"] = 269;	-- ARCA
L.ALT_ZONE_TEXT_TO_MAP_ID["The Botanica"] = 266;	-- BOT
L.ALT_ZONE_TEXT_TO_MAP_ID["The Mechanar"] = 267;	-- MECH

local a = L.HEADER_NAMES
for key, value in pairs({}) do
    a[key] = value
end

local a = L.OBJECT_ID_NAMES
for key, value in pairs({}) do
    a[key] = value
end

-- General Text
L["TITLE"] = "|cffb4b4ffALL THE THINGS|r"
L["AUCTION_TAB"] = "|cffb4b4ffATT|r"
L["DESCRIPTION"] = '"你愚蠢地寻求自己的终结，厚颜无耻地无视了你无法理解的力量。你入侵了收集者的领域并为此努力。现在只有一条路可走了——这条孤独的路……该死的路。"'

-- Instructional Text 指引
L["MINIMAP_MOUSEOVER_TEXT"] = "右键：改变设置\n左键：打开主列表\nCtrl + 左键：打开迷你列表\nShift + 左键：刷新收藏"
L["TOP_ROW_INSTRUCTIONS"] = "|cff3399ff按住并拖拽左键：移动|r\n|cff3399ff右键：打开设置|r\n|cff3399ffShift + 左键：刷新收藏|r"
L["OTHER_ROW_INSTRUCTIONS"] = "|cff3399ff左键：展开／折叠|r\n|cff3399ff右键：弹出迷你列表|r\n|cff3399ffShift + 左键：刷新收藏|r\n|cff3399ffAlt + 右键：设置路径点|r"
L["TOP_ROW_INSTRUCTIONS_AH"] = "|cff3399ff按住并拖拽左键：移动|r\n|cff3399ff右键：打开设置|r\n|cff3399ffShift + 左键：Search the Auction House|r"
L["OTHER_ROW_INSTRUCTIONS_AH"] = "|cff3399ff左键：展开／折叠|r\n|cff3399ff右键：弹出迷你列表|r\n|cff3399ffShift + 左键：Search the Auction House|r"

-- Binding Localizations 按键设置
L["TOGGLE_ACCOUNT_MODE"] = "切换账号模式"
L["TOGGLE_DEBUG_MODE"] = "切换调试模式"
L["PREFERENCES"] = "偏好"
L["TOGGLE_COMPLETEDTHINGS"] = "Toggle Completed Things (Both)"
L["TOGGLE_COMPLETEDGROUPS"] = "Toggle Completed Groups"
L["TOGGLE_COLLECTEDTHINGS"] = "Toggle Collected Things"
L["TOGGLE_BOEITEMS"] = "切换装绑/账号绑定物品"
L["TOGGLE_SOURCETEXT"] = "Toggle Source Locations"
L["MODULES"] = "模块"
L["TOGGLE_MAINLIST"] = "打开关闭主列表"
L["TOGGLE_MINILIST"] = "打开关闭迷你列表"
L["TOGGLE_PROFESSION_LIST"] = "Toggle ATT Profession List"
L["TOGGLE_RAID_ASSISTANT"] = "Toggle ATT Raid Assistant"
L["TOGGLE_RANDOM"] = "Toggle ATT Random"
L["REROLL_RANDOM"] = "Reroll the Random Selection"

-- Event Text 事件
L["ITEM_ID_ADDED"] = "%s (%d) 已加入收藏。"
L["ITEM_ID_ADDED_RANK"] = "%s (%d) [等级%d] 已加入收藏。"
L["ITEM_ID_ADDED_MISSING"] = "%s (%d) 已加入收藏。在数据库中未找到，请向作者提交报告！"
L["ITEM_ID_ADDED_SHARED"] = "%s (%d) [+%d] 已加入收藏。"
L["ITEM_ID_ADDED_SHARED_MISSING"] = "%s (%d) [+%d] 已加入收藏。在数据库中未找到，请向作者提交报告！"
L["ITEM_ID_REMOVED"] = "%s (%d) 已从收藏中移除。"
L["ITEM_ID_REMOVED_SHARED"] = "%s (%d) [+%d] 已从收藏中移除。"

-- Tooltip Text 鼠标提示
L["DROP_RATE"] = "掉率"
L["QUEST_GIVER"] = "任务发放者"
L["LOCKOUT"] = "Lockout"
L["REQUIRES"] = "要求"
L["REQUIRES_LEVEL"] = "要求等级"

-- Filter Text
L["CREATURE_ID"] = "生物ID"
L["CURRENCY_ID"] = "货币ID"
L["FILTER_ID"] = "过滤器ID"
L["ITEM_ID"] = "物品ID"
L["FACTION_ID"] = "阵营ID"
L["MAP_ID"] = "地图ID"
L["NPC_ID"] = "NPC ID"
L["OBJECT_ID"] = "Object ID"
L["QUEST_ID"] = "任务ID"
L["SPELL_ID"] = "法术ID"
L["iLvl"] = "物品等级"

-- Icons and Collection Text
L["COLLECTED"] = "|T" .. app.asset("known") .. ":0|t |cff15abff已收集|r" -- Acquired the colors and icon from CanIMogIt.
L["COLLECTED_APPEARANCE"] = "|T" .. app.asset("known_circle") .. ":0|t |cff15abff已收集*|r" -- Acquired the colors and icon from CanIMogIt.
L["NOT_COLLECTED"] = "|T" .. app.asset("unknown") .. ":0|t |cffff9333未收集|r" -- Acquired the colors and icon from CanIMogIt.
L["COMPLETE"] = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47已完成|r" -- Acquired the colors and icon from CanIMogIt.
L["INCOMPLETE"] = "|T" .. app.asset("unknown") .. ":0|t |cffff9333未完成|r" -- Acquired the colors and icon from CanIMogIt.
L["KNOWN_ON_CHARACTER"] = "|T" .. app.asset("known") .. ":0|t |cff15abff当前角色已知|r"
L["UNKNOWN_ON_CHARACTER"] = "|T" .. app.asset("unknown") .. ":0|t |cffff9333当前角色未知|r"
