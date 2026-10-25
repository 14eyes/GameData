local Q74045ClientConfig = {
    MainID = 74045,
    ActorAlias = "74045",
    SubIDs = {
        q7404501 = 7404501,
        q7404502 = 7404502,
        q7404505 = 7404505,
        q7404504 = 7404504,
        q7404506 = 7404506,
        q7404507 = 7404507,
        q7404508 = 7404508,
        q7404509 = 7404509,
        q7404510 = 7404510,
        q7404511 = 7404511,
        q7404503 = 7404503
    },
    Npcs = {
        Npc5322Data = {
            id = 5322,
            alias = "Npc5322",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21093Data = {
            id = 21093,
            alias = "Npc21093",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5096Data = {
            id = 5096,
            alias = "Npc5096",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local paim7404502 = {
    narratorId = 740459901,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 6
local v = 5
local n2 = 7
durationList[1] = 4
durationList[2] = n
durationList[3] = v
durationList[4] = n2
paim7404502.durationList = durationList
datas.paim7404502 = paim7404502

local paim7404504 = {
    narratorId = 740459801,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local n3 = 5
local n4 = 3
tbl[1] = 7
tbl[2] = n3
tbl[3] = n4
paim7404504.durationList = tbl
datas.paim7404504 = paim7404504

datas.paim7404507 = {
    narratorId = 740459701,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

datas.paim7404508 = {
    narratorId = 740459601,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

datas.paim7404510 = {
    narratorId = 740459501,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

Q74045ClientConfig.Datas = datas
return Q74045ClientConfig
