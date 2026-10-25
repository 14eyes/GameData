local Q74001ClientConfig = {
    MainID = 74001,
    ActorAlias = "74001",
    SubIDs = {
        q7400101 = 7400101,
        q7400139 = 7400139,
        q7400140 = 7400140,
        q7400102 = 7400102,
        q7400133 = 7400133,
        q7400103 = 7400103,
        q7400104 = 7400104,
        q7400105 = 7400105,
        q7400106 = 7400106,
        q7400145 = 7400145,
        q7400141 = 7400141,
        q7400108 = 7400108,
        q7400109 = 7400109,
        q7400110 = 7400110,
        q7400111 = 7400111,
        q7400123 = 7400123,
        q7400142 = 7400142,
        q7400143 = 7400143,
        q7400112 = 7400112,
        q7400144 = 7400144,
        q7400113 = 7400113,
        q7400114 = 7400114,
        q7400115 = 7400115,
        q7400116 = 7400116,
        q7400117 = 7400117,
        q7400118 = 7400118,
        q7400119 = 7400119,
        q7400120 = 7400120,
        q7400121 = 7400121,
        q7400122 = 7400122,
        q7400146 = 7400146,
        q7400124 = 7400124,
        q7400125 = 7400125,
        q7400126 = 7400126,
        q7400127 = 7400127,
        q7400129 = 7400129,
        q7400128 = 7400128,
        q7400130 = 7400130,
        q7400131 = 7400131,
        q7400138 = 7400138,
        q7400132 = 7400132,
        q7400135 = 7400135,
        q7400107 = 7400107,
        q7400136 = 7400136
    },
    Npcs = {
        Npc20995Data = {
            id = 20995,
            alias = "Npc20995",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20996Data = {
            id = 20996,
            alias = "Npc20996",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20997Data = {
            id = 20997,
            alias = "Npc20997",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20998Data = {
            id = 20998,
            alias = "Npc20998",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21000Data = {
            id = 21000,
            alias = "Npc21000",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20999Data = {
            id = 20999,
            alias = "Npc20999",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21146Data = {
            id = 21146,
            alias = "Npc21146",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21001Data = {
            id = 21001,
            alias = "Npc21001",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21120Data = {
            id = 21120,
            alias = "Npc21120",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21119Data = {
            id = 21119,
            alias = "Npc21119",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7400135Trigger = {pos = {x = 3765.531, y = 267.7771, z = 4983.252}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400127Trigger = {pos = {x = 3662.74, y = 276.5, z = 5045.773}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400138Trigger = {pos = {x = 3663.002, y = 276.5, z = 5045.669}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {}

local narrator_7400101 = {
    narratorId = 7400101,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
local v = 5
local n2 = 3
local n3 = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
durationList[4] = n2
durationList[5] = n3
narrator_7400101.durationList = durationList
datas.Narrator_7400101 = narrator_7400101

local narrator_7400102 = {
    narratorId = 7400102,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local n4 = 3
tbl[1] = 5
tbl[2] = n4
narrator_7400102.durationList = tbl
datas.Narrator_7400102 = narrator_7400102

local narrator_7400103 = {
    narratorId = 7400103,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList2 = {}
local n5 = 3
local n6 = 5
local n7 = 3
local n8 = 3
local n9 = 3
local n10 = 3
local n11 = 3
local n12 = 3
durationList2[1] = 5
durationList2[2] = n5
durationList2[3] = n6
durationList2[4] = n7
durationList2[5] = n8
durationList2[6] = n9
durationList2[7] = n10
durationList2[8] = n11
durationList2[9] = n12
narrator_7400103.durationList = durationList2
datas.Narrator_7400103 = narrator_7400103
Q74001ClientConfig.Datas = datas
return Q74001ClientConfig
