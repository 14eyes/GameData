local Q71127ClientConfig = {
    MainID = 71127,
    ActorAlias = "71127",
    IgnoreDoReturnNpcForDaily = true,
    SubIDs = {
        q7112701 = 7112701,
        q7112702 = 7112702,
        q7112705 = 7112705,
        q7112703 = 7112703,
        q7112707 = 7112707,
        q7112706 = 7112706,
        q7112704 = 7112704,
        q7112708 = 7112708,
        q7112709 = 7112709,
        q7112710 = 7112710,
        q7112711 = 7112711,
        q7112712 = 7112712,
        q7112713 = 7112713
    },
    Npcs = {
        Npc21307Data = {
            id = 21307,
            alias = "Npc21307",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2498Data = {
            id = 2498,
            alias = "Npc2498",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21094Data = {
            id = 21094,
            alias = "Npc21094",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2501Data = {
            id = 2501,
            alias = "Npc2501",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7112707Trigger = {pos = {x = 1572.923, y = 13.264, z = 2872.436}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7112706Trigger = {pos = {x = 1531.666, y = -25.885, z = 2786.134}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7112702Trigger = {pos = {x = 1493.597, y = 443.529, z = 2844.945}, rot = {x = 0.0, y = 203.013, z = 0.0}},
        TPos_Q7112703Trigger = {pos = {x = 1568.15, y = 10.38, z = 2898.041}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {}
local narratorWithId = {narratorId = 7112707, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local durationList = {}
local n = 3
local v = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId

datas.NarratorWithId_02 = {
    narratorId = 7112702,
    tag = "StoryInMainPage",
    startCheckPause = true,
    resumeReminder = -1,
    durationList = {3}
}

local narratorWithId_01 = {narratorId = 7112701, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local tbl = {}
local n2 = 3
local n3 = 3
tbl[1] = 3
tbl[2] = n2
tbl[3] = n3
narratorWithId_01.durationList = tbl
datas.NarratorWithId_01 = narratorWithId_01
Q71127ClientConfig.Datas = datas
return Q71127ClientConfig
