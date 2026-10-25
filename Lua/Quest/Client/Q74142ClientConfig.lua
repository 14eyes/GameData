local Q74142ClientConfig = {
    MainID = 74142,
    ActorAlias = "74142",
    SubIDs = {
        q7414201 = 7414201,
        q7414202 = 7414202,
        q7414203 = 7414203,
        q7414204 = 7414204,
        q7414205 = 7414205,
        q7414206 = 7414206,
        q7414207 = 7414207,
        q7414208 = 7414208,
        q7414209 = 7414209,
        q7414211 = 7414211,
        q7414212 = 7414212,
        q7414213 = 7414213,
        q7414215 = 7414215,
        q7414214 = 7414214,
        q7414210 = 7414210
    },
    Npcs = {
        Npc5311Data = {
            id = 5311,
            alias = "Npc5311",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21048Data = {
            id = 21048,
            alias = "Npc21048",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21147Data = {
            id = 21147,
            alias = "Npc21147",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21098Data = {
            id = 21098,
            alias = "Npc21098",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7414203Trigger = {pos = {x = 2163.139, y = -380.756, z = 4747.303}, rot = {x = 0.0, y = 66.749, z = 0.0}},
        TPos_Q7414205Trigger = {pos = {x = 2260.034, y = -402.1, z = 4830.303}, rot = {x = 0.0, y = 90.0, z = 0.0}},
        TPos_Q7414208Trigger = {pos = {x = 2231.842, y = -362.787, z = 4913.427}, rot = {x = 0.0, y = 320.0, z = 0.0}},
        TPos_Q7414211Trigger = {pos = {x = 2383.194, y = -253.167, z = 4839.391}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {
    NarratorWithId = {
        narratorId = 7414204,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {5}
    }
}

local narratorWithId_01 = {
    narratorId = 7414211,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 5
durationList[1] = 3
durationList[2] = n
narratorWithId_01.durationList = durationList
datas.NarratorWithId_01 = narratorWithId_01

datas.NarratorWithId_02 = {
    narratorId = 7414212,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

Q74142ClientConfig.Datas = datas
return Q74142ClientConfig
