local Q73225ClientConfig = {
    MainID = 73225,
    ActorAlias = "73225",
    SubIDs = {
        q7322501 = 7322501,
        q7322517 = 7322517,
        q7322518 = 7322518,
        q7322519 = 7322519,
        q7322512 = 7322512,
        q7322526 = 7322526,
        q7322527 = 7322527,
        q7322502 = 7322502,
        q7322513 = 7322513,
        q7322503 = 7322503,
        q7322504 = 7322504,
        q7322505 = 7322505,
        q7322506 = 7322506,
        q7322514 = 7322514,
        q7322507 = 7322507,
        q7322523 = 7322523,
        q7322508 = 7322508,
        q7322509 = 7322509,
        q7322510 = 7322510,
        q7322521 = 7322521,
        q7322522 = 7322522,
        q7322515 = 7322515,
        q7322516 = 7322516,
        q7322520 = 7322520,
        q7322524 = 7322524,
        q7322525 = 7322525,
        q7322511 = 7322511
    },
    Npcs = {
        Npc4291Data = {
            id = 4291,
            alias = "Npc4291",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4296Data = {
            id = 4296,
            alias = "Npc4296",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20932Data = {
            id = 20932,
            alias = "Npc20932",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4298Data = {
            id = 4298,
            alias = "Npc4298",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4299Data = {
            id = 4299,
            alias = "Npc4299",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {TextmapId = {"Quest_Black_Q7322507"}}

local narratorWithId7322512 = {
    narratorId = 7322512,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 4
local v = 5
local n2 = 4
local n3 = 4
local n4 = 4
durationList[1] = 5
durationList[2] = n
durationList[3] = v
durationList[4] = n2
durationList[5] = n3
durationList[6] = n4
narratorWithId7322512.durationList = durationList
datas.NarratorWithId7322512 = narratorWithId7322512

datas.NarratorWithId7322501 = {
    narratorId = 7322501,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

datas.TextmapId7322520 = {"Quest_Black_Q7322520"}

local narratorWithId7322524 = {
    narratorId = 7322524,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local n5 = 5
local n6 = 4
local n7 = 5
local n8 = 3
local n9 = 5
tbl[1] = 4
tbl[2] = n5
tbl[3] = n6
tbl[4] = n7
tbl[5] = n8
tbl[6] = n9
narratorWithId7322524.durationList = tbl
datas.NarratorWithId7322524 = narratorWithId7322524

datas.RoutePointsData = {
    {x = -1478.61, y = -38.88, z = 5361.6},
    {x = -1475.33, y = -47.443, z = 5386.24},
    {x = -1473.299, y = -50.711, z = 5404.294}
}

datas.NarratorWithId7322502 = {
    narratorId = 7322502,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

datas.NarratorWithId7322513 = {
    narratorId = 7322513,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

Q73225ClientConfig.Datas = datas
return Q73225ClientConfig
