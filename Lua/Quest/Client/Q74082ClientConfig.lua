local Q74082ClientConfig = {
    MainID = 74082,
    ActorAlias = "74082",
    SubIDs = {
        q7408201 = 7408201,
        q7408214 = 7408214,
        q7408209 = 7408209,
        q7408202 = 7408202,
        q7408208 = 7408208,
        q7408215 = 7408215,
        q7408205 = 7408205,
        q7408213 = 7408213,
        q7408206 = 7408206,
        q7408207 = 7408207,
        q7408204 = 7408204,
        q7408210 = 7408210,
        q7408211 = 7408211,
        q7408212 = 7408212
    },
    Npcs = {
        Npc5325Data = {
            id = 5325,
            alias = "Npc5325",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5263Data = {
            id = 5263,
            alias = "Npc5263",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21112Data = {
            id = 21112,
            alias = "Npc21112",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7408202EnterTriggerin = {pos = {x = 3259.963, y = 444.327, z = 3474.953}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7408203EnterTriggerin = {pos = {x = 3307.89, y = 445.073, z = 3314.834}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {
    NarratorWithId02 = {
        narratorId = 7408204,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {6}
    },
    NarratorWithId08 = {
        narratorId = 7408202,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {6}
    },
    NarratorWithId05 = {
        narratorId = 7408203,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {5}
    }
}

local narratorWithId03 = {
    narratorId = 7408201,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 5
durationList[1] = 6
durationList[2] = n
narratorWithId03.durationList = durationList
datas.NarratorWithId03 = narratorWithId03

local narratorWithId01 = {
    narratorId = 7408205,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local v = 4
tbl[1] = 5
tbl[2] = v
narratorWithId01.durationList = tbl
datas.NarratorWithId01 = narratorWithId01
Q74082ClientConfig.Datas = datas
return Q74082ClientConfig
