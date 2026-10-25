local Q74075ClientConfig = {
    MainID = 74075,
    ActorAlias = "74075",
    SubIDs = {
        q7407501 = 7407501,
        q7407506 = 7407506,
        q7407502 = 7407502,
        q7407509 = 7407509,
        q7407503 = 7407503,
        q7407504 = 7407504,
        q7407507 = 7407507,
        q7407508 = 7407508,
        q7407510 = 7407510,
        q7407505 = 7407505,
        q7407511 = 7407511
    },
    Npcs = {
        Npc21127Data = {
            id = 21127,
            alias = "Npc21127",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21316Data = {
            id = 21316,
            alias = "Npc21316",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q74075TriggerGuide = {pos = {x = 2430.729, y = 440.0, z = 3915.693}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {}

local narratorWithId1 = {
    narratorId = 7407501,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narratorWithId1.durationList = durationList
datas.NarratorWithId1 = narratorWithId1

datas.NarratorWithId2 = {
    narratorId = 7407502,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

datas.NarratorWithId3 = {
    narratorId = 7407503,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

datas.NarratorWithIdNear = {
    narratorId = 7407505,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

Q74075ClientConfig.Datas = datas
return Q74075ClientConfig
