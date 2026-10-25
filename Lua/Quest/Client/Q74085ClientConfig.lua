local Q74085ClientConfig = {
    MainID = 74085,
    ActorAlias = "74085",
    SubIDs = {
        q7408501 = 7408501,
        q7408502 = 7408502,
        q7408522 = 7408522,
        q7408521 = 7408521,
        q7408520 = 7408520,
        q7408503 = 7408503,
        q7408504 = 7408504,
        q7408505 = 7408505,
        q7408509 = 7408509,
        q7408510 = 7408510,
        q7408511 = 7408511,
        q7408512 = 7408512,
        q7408513 = 7408513,
        q7408514 = 7408514,
        q7408515 = 7408515,
        q7408516 = 7408516,
        q7408517 = 7408517,
        q7408523 = 7408523,
        q7408518 = 7408518,
        q7408519 = 7408519,
        q7408506 = 7408506
    },
    Npcs = {
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5325Data = {
            id = 5325,
            alias = "Npc5325",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21113Data = {
            id = 21113,
            alias = "Npc21113",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5108Data = {
            id = 5108,
            alias = "Npc5108",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5109Data = {
            id = 5109,
            alias = "Npc5109",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7408501EnterTriggerin = {pos = {x = 3746.35, y = 480.35, z = 3683.501}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7408505EnterTriggerin = {pos = {x = 3745.717, y = 457.1, z = 3683.475}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7408506EnterTriggerin = {pos = {x = 3688.341, y = 399.021, z = 3484.519}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7408509EnterTriggerin = {pos = {x = 3699.805, y = 410.833, z = 3461.727}, rot = {x = 0.0, y = 125.02, z = 0.0}}
    }
}

local datas = {
    NarratorWithId7408501 = {
        narratorId = 7408501,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {5}
    }
}

local narratorWithId7408502 = {
    narratorId = 7408502,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
local v = 7
local n2 = 5
local n3 = 5
local n4 = 5
local n5 = 3
local n6 = 4
local n7 = 4
durationList[1] = 4
durationList[2] = n
durationList[3] = v
durationList[4] = n2
durationList[5] = n3
durationList[6] = n4
durationList[7] = n5
durationList[8] = n6
durationList[9] = n7
narratorWithId7408502.durationList = durationList
datas.NarratorWithId7408502 = narratorWithId7408502

local narratorWithId7408503 = {
    narratorId = 7408503,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local n8 = 4
tbl[1] = 5
tbl[2] = n8
narratorWithId7408503.durationList = tbl
datas.NarratorWithId7408503 = narratorWithId7408503
Q74085ClientConfig.Datas = datas
return Q74085ClientConfig
