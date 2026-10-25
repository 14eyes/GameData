local Q74042ClientConfig = {
    MainID = 74042,
    ActorAlias = "74042",
    SubIDs = {
        q7404201 = 7404201,
        q7404217 = 7404217,
        q7404202 = 7404202,
        q7404215 = 7404215,
        q7404203 = 7404203,
        q7404204 = 7404204,
        q7404205 = 7404205,
        q7404206 = 7404206,
        q7404207 = 7404207,
        q7404208 = 7404208,
        q7404209 = 7404209,
        q7404210 = 7404210,
        q7404211 = 7404211,
        q7404213 = 7404213,
        q7404214 = 7404214,
        q7404216 = 7404216,
        q7404212 = 7404212
    },
    Npcs = {
        Npc21046Data = {
            id = 21046,
            alias = "Npc21046",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narratorWithId = {
    narratorId = 740429910,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 4
durationList[1] = 4
durationList[2] = n
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId

datas.NarratorWithId_01 = {
    narratorId = 740429915,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {4}
}

local narratorWithId_02 = {
    narratorId = 740429900,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local v = 5
tbl[1] = 3
tbl[2] = v
narratorWithId_02.durationList = tbl
datas.NarratorWithId_02 = narratorWithId_02

local narratorWithId_03 = {
    narratorId = 740429905,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList2 = {}
local n2 = 3
durationList2[1] = 4
durationList2[2] = n2
narratorWithId_03.durationList = durationList2
datas.NarratorWithId_03 = narratorWithId_03
Q74042ClientConfig.Datas = datas
return Q74042ClientConfig
