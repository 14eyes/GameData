local Q73281ClientConfig = {
    MainID = 73281,
    ActorAlias = "73281",
    SubIDs = {
        q7328126 = 7328126,
        q7328101 = 7328101,
        q7328128 = 7328128,
        q7328104 = 7328104,
        q7328129 = 7328129,
        q7328140 = 7328140,
        q7328132 = 7328132,
        q7328105 = 7328105,
        q7328106 = 7328106,
        q7328108 = 7328108,
        q7328127 = 7328127,
        q7328109 = 7328109,
        q7328107 = 7328107,
        q7328110 = 7328110,
        q7328134 = 7328134,
        q7328138 = 7328138,
        q7328111 = 7328111,
        q7328112 = 7328112,
        q7328113 = 7328113,
        q7328115 = 7328115,
        q7328116 = 7328116,
        q7328114 = 7328114,
        q7328117 = 7328117,
        q7328139 = 7328139,
        q7328118 = 7328118,
        q7328119 = 7328119,
        q7328120 = 7328120,
        q7328135 = 7328135,
        q7328121 = 7328121,
        q7328122 = 7328122,
        q7328123 = 7328123,
        q7328124 = 7328124,
        q7328141 = 7328141,
        q7328125 = 7328125,
        q7328103 = 7328103,
        q7328130 = 7328130,
        q7328131 = 7328131,
        q7328133 = 7328133,
        q7328136 = 7328136,
        q7328137 = 7328137,
        q7328102 = 7328102
    },
    Npcs = {
        Npc20842Data = {
            id = 20842,
            alias = "Npc20842",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4292Data = {
            id = 4292,
            alias = "Npc4292",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narratorWithId04 = {
    narratorId = 7328101,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 2.5
local v = 2
local n2 = 2
durationList[1] = 3.5
durationList[2] = n
durationList[3] = v
durationList[4] = n2
narratorWithId04.durationList = durationList
datas.NarratorWithId04 = narratorWithId04

local narratorWithId29 = {
    narratorId = 7328102,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local n3 = 3
tbl[1] = 4
tbl[2] = n3
narratorWithId29.durationList = tbl
datas.NarratorWithId29 = narratorWithId29

local narratorWithId37 = {
    narratorId = 7328103,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList2 = {}
local n4 = 4
durationList2[1] = 4
durationList2[2] = n4
narratorWithId37.durationList = durationList2
datas.NarratorWithId37 = narratorWithId37

datas.NarratorWithId27 = {
    narratorId = 7328104,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {4}
}

local narratorWithId34 = {
    narratorId = 7328105,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList3 = {}
local n5 = 3
local n6 = 4
local n7 = 4
local n8 = 3
durationList3[1] = 4
durationList3[2] = n5
durationList3[3] = n6
durationList3[4] = n7
durationList3[5] = n8
narratorWithId34.durationList = durationList3
datas.NarratorWithId34 = narratorWithId34

local narratorWithId18 = {
    narratorId = 7328106,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList4 = {}
local n9 = 4
local n10 = 2.5
local n11 = 4
local n12 = 2.5
durationList4[1] = 2.5
durationList4[2] = n9
durationList4[3] = n10
durationList4[4] = n11
durationList4[5] = n12
narratorWithId18.durationList = durationList4
datas.NarratorWithId18 = narratorWithId18

local narratorWithId25 = {
    narratorId = 7328108,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList5 = {}
local n13 = 3
local n14 = 2.5
local n15 = 3.5
local n16 = 2
local n17 = 3
local n18 = 2.5
local n19 = 3.5
durationList5[1] = 2
durationList5[2] = n13
durationList5[3] = n14
durationList5[4] = n15
durationList5[5] = n16
durationList5[6] = n17
durationList5[7] = n18
durationList5[8] = n19
narratorWithId25.durationList = durationList5
datas.NarratorWithId25 = narratorWithId25

datas.NarratorWithId05 = {
    narratorId = 7328109,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

Q73281ClientConfig.Datas = datas
return Q73281ClientConfig
