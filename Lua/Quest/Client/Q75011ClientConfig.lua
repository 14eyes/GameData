local Q75011ClientConfig = {
    MainID = 75011,
    ActorAlias = "75011",
    SubIDs = {
        q7501105 = 7501105,
        q7501101 = 7501101,
        q7501103 = 7501103,
        q7501107 = 7501107,
        q7501118 = 7501118,
        q7501109 = 7501109,
        q7501120 = 7501120,
        q7501102 = 7501102,
        q7501104 = 7501104,
        q7501106 = 7501106,
        q7501110 = 7501110,
        q7501123 = 7501123,
        q7501124 = 7501124,
        q7501121 = 7501121,
        q7501113 = 7501113,
        q7501114 = 7501114,
        q7501112 = 7501112,
        q7501116 = 7501116,
        q7501108 = 7501108,
        q7501117 = 7501117,
        q7501115 = 7501115,
        q7501119 = 7501119,
        q7501122 = 7501122,
        q7501111 = 7501111
    },
    Npcs = {
        Npc21474Data = {
            id = 21474,
            alias = "Npc21474",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local n7501101 = {narratorId = 7501101, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 3
local v = 3
local n2 = 3
local n3 = 3
local n4 = 3
local n5 = 3
local n6 = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
durationList[4] = n2
durationList[5] = n3
durationList[6] = n4
durationList[7] = n5
durationList[8] = n6
n7501101.durationList = durationList
datas.N7501101 = n7501101
local n7501102 = {narratorId = 7501102, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local tbl = {}
local n7 = 3
local n8 = 3
local n9 = 3
tbl[1] = 2
tbl[2] = n7
tbl[3] = n8
tbl[4] = n9
n7501102.durationList = tbl
datas.N7501102 = n7501102
local n7501103 = {narratorId = 7501103, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList2 = {}
local n10 = 3
local n11 = 4
durationList2[1] = 3
durationList2[2] = n10
durationList2[3] = n11
n7501103.durationList = durationList2
datas.N7501103 = n7501103
Q75011ClientConfig.Datas = datas
return Q75011ClientConfig
