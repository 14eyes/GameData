local Q74014ClientConfig = {
    MainID = 74014,
    ActorAlias = "74014",
    SubIDs = {
        q7401401 = 7401401,
        q7401402 = 7401402,
        q7401403 = 7401403,
        q7401405 = 7401405,
        q7401410 = 7401410,
        q7401412 = 7401412,
        q7401413 = 7401413,
        q7401414 = 7401414,
        q7401416 = 7401416,
        q7401417 = 7401417,
        q7401411 = 7401411,
        q7401415 = 7401415
    },
    Npcs = {
        Npc5224Data = {
            id = 5224,
            alias = "Npc5224",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5282Data = {
            id = 5282,
            alias = "Npc5282",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q74014Trigger = {pos = {x = 4503.807, y = 400.633, z = 4396.03}, rot = {x = 0.0, y = 359.912, z = 0.0}},
        TPos_Q74014Trigger1 = {pos = {x = 4488.946, y = 364.808, z = 4383.869}, rot = {x = 0.0, y = 0.0, z = 316.293}}
    }
}

local datas = {
    NarratorWithId = {
        narratorId = 740140601,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {3}
    },
    NarratorWithId_01 = {
        narratorId = 740140602,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {6}
    }
}

local narratorWithId_02 = {
    narratorId = 740140603,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 6
durationList[1] = 5
durationList[2] = n
narratorWithId_02.durationList = durationList
datas.NarratorWithId_02 = narratorWithId_02
Q74014ClientConfig.Datas = datas
return Q74014ClientConfig
