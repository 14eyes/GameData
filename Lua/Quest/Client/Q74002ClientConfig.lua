local Q74002ClientConfig = {
    MainID = 74002,
    ActorAlias = "74002",
    SubIDs = {
        q7400201 = 7400201,
        q7400202 = 7400202,
        q7400220 = 7400220,
        q7400203 = 7400203,
        q7400204 = 7400204,
        q7400205 = 7400205,
        q7400206 = 7400206,
        q7400207 = 7400207,
        q7400221 = 7400221,
        q7400208 = 7400208,
        q7400219 = 7400219,
        q7400210 = 7400210,
        q7400227 = 7400227,
        q7400226 = 7400226,
        q7400211 = 7400211,
        q7400222 = 7400222,
        q7400213 = 7400213,
        q7400229 = 7400229,
        q7400214 = 7400214,
        q7400215 = 7400215,
        q7400223 = 7400223,
        q7400216 = 7400216,
        q7400217 = 7400217,
        q7400218 = 7400218,
        q7400228 = 7400228,
        q7400225 = 7400225
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
        Npc20999Data = {
            id = 20999,
            alias = "Npc20999",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21000Data = {
            id = 21000,
            alias = "Npc21000",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21146Data = {
            id = 21146,
            alias = "Npc21146",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7400217Trigger = {pos = {x = 3904.324, y = -120.8612, z = 4945.491}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {}

local narrator_7400201 = {
    narratorId = 7400201,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
local v = 3
local n2 = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
durationList[4] = n2
narrator_7400201.durationList = durationList
datas.Narrator_7400201 = narrator_7400201

local narrator_7400202 = {
    narratorId = 7400202,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local n3 = 3
local n4 = 3
local n5 = 3
local n6 = 3
local n7 = 3
local n8 = 3
tbl[1] = 3
tbl[2] = n3
tbl[3] = n4
tbl[4] = n5
tbl[5] = n6
tbl[6] = n7
tbl[7] = n8
narrator_7400202.durationList = tbl
datas.Narrator_7400202 = narrator_7400202

datas.Narrator_7400203 = {
    narratorId = 7400203,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

Q74002ClientConfig.Datas = datas
return Q74002ClientConfig
