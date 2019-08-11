-----------------------------------------------------
--   S O U R C E   D A T A B A S E   M O D U L E   --
-----------------------------------------------------
--   WARNING: This file is dynamically generated   --
-- UPDATED: Sunday, August 11, 2019 @ 10:29 AM     --
-----------------------------------------------------
local _ = AllTheThings;
local g = function(t,g) t.g = g; return t; end
local i,m,n,q,t=_.CreateItem,_.CreateMap,_.CreateNPC,_.CreateQuest,_.CreateTier;

_.Categories={};
local l={};_.Categories.Instances=l;
tinsert(l,m(225,g({description="The Stockade is a high-security prison complex, hidden beneath the canal district of Stormwind city. Presided over by Warden Thelwater, the Stockade is home to petty crooks, political insurgents, murderers and a score of the most dangerous criminals in the land. Recently, a prisoner-led revolt has resulted in a state of pandemonium within the stockade - where the guards have been driven out and the convicts roam free. Warden Thelwater has managed to escape the holding area and is currently enlisting brave thrill-seekers to venture into the prison and kill the uprising's mastermind - the cunning felon, Bazil Thredd.",coords={{39.77,54.21,1453}},lvl=15},{n(0,{i(1076)}),n(1720,g({description="This is a rare that was not always present."},{i(2942),i(3228),i(2941),i(4306)})),n(1666,{i(3640),i(2280),i(4306)}),n(1663,{i(3628),i(2909),i(4306)}),n(1717,{i(4306)}),n(1696,{i(3630),i(2592)}),n(1716,{i(2926),i(2909),i(4306)})})));
l={};_.Categories.Zones=l;
tinsert(l,m(1414,{maps={1464},description="|cff66ccffKalimdor is home to the night elves, orcs, tauren, trolls, and draenei. Other races present include the ogres, centaur, naga, demons, and other, more minor races. |r"}));
tinsert(l,m(1415,g({maps={1463},description="The Eastern Kingdoms are the eastern continents on the world of Azeroth. The Eastern Kingdoms is made up from a group of smaller continents (Azeroth, Khaz Modan and Lordaeron) formed from the original continent of Kalimdor following the Great Sundering. The Eastern Kingdoms lie to the east of the Great Sea and to the west of the Forbidding Sea. The central part of the Eastern Kingdoms is dominated by the Khaz Mountains and the Redridge Mountains. Both cover several zones."},{m(1453,{q(332,{sourceQuests={61}}),q(333),q(334,{sourceQuests={333},qgs={1428}}),q(353,{sourceQuests={1097},qgs={1416}})}),m(1429,{q(7),q(3100),q(33),q(15),q(21),q(18,{i(2224),i(5580),i(1161),i(5579),i(1159)}),q(3903,{sourceQuests={18}}),q(6,{sourceQuests={18}}),q(3904,{sourceQuests={3903}}),q(3905,{sourceQuests={3904}}),q(54),q(2158),q(47,{sourceQuests={54}}),q(60,{sourceQuests={54}}),q(62,{sourceQuests={54}}),q(76,{sourceQuests={62}}),q(239,{sourceQuests={76},qgs={240}}),q(11,{sourceQuests={239},qgs={963}}),q(176,g({sourceQuests={239}},{i(6084)})),q(61,{sourceQuests={47}}),q(40,{lvl=7}),q(35,{sourceQuests={40},lvl=7}),q(52),q(37,{sourceQuests={35},lvl=7}),q(45,{sourceQuests={37},lvl=7}),q(71,{sourceQuests={45},lvl=7}),q(39,{sourceQuests={71},lvl=7}),q(5545),q(83),q(59,{sourceQuests={83},qgs={240}}),i(1307,{q(123)}),q(109,{lvl=9}),q(147,{sourceQuests={123}}),q(1097),q(46,{qgs={261}})})})));
l={};_.Categories.Unsorted=l;
