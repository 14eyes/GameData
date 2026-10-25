local Q71105ClientConfig = {
    MainID = 71105,
    ActorAlias = "71105",
    SubIDs = {
        q7110512 = 7110512,
        q7110501 = 7110501,
        q7110502 = 7110502,
        q7110503 = 7110503,
        q7110504 = 7110504,
        q7110505 = 7110505,
        q7110506 = 7110506,
        q7110507 = 7110507,
        q7110508 = 7110508,
        q7110509 = 7110509,
        q7110510 = 7110510,
        q7110511 = 7110511
    },
    Npcs = {
        Npc21219Data = {
            id = 21219,
            alias = "Npc21219",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21220Data = {
            id = 21220,
            alias = "Npc21220",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2491Data = {
            id = 2491,
            alias = "Npc2491",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7110503Trigger = {pos = {x = 1463.969, y = 236.523, z = 1596.233}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7110504Trigger = {pos = {x = 1468.82, y = 213.276, z = 1564.902}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7110506Trigger = {pos = {x = 1236.456, y = 204.63, z = 1928.63}, rot = {x = 0.0, y = 126.714, z = 0.0}},
        TPos_Q7110509Trigger = {pos = {x = 2451.332, y = 327.974, z = 1429.047}, rot = {x = 0.0, y = 88.332, z = 0.0}},
        TPos_Q7110502Trigger = {pos = {x = 1678.565, y = 285.592, z = 1708.464}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {
    Narrator_7110501 = {
        narratorId = 7110501,
        tag = "StoryInMainPage",
        startCheckPause = true,
        resumeReminder = -1,
        durationList = {4}
    }
}

local narrator_7110502 = {narratorId = 7110502, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narrator_7110502.durationList = durationList
datas.Narrator_7110502 = narrator_7110502

datas.Narrator_7110503 = {
    narratorId = 7110503,
    tag = "StoryInMainPage",
    startCheckPause = true,
    resumeReminder = -1,
    durationList = {4}
}

datas.Narrator_7110504 = {
    narratorId = 7110504,
    tag = "StoryInMainPage",
    startCheckPause = true,
    resumeReminder = -1,
    durationList = {3}
}

local narrator_7110505 = {narratorId = 7110505, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local tbl = {}
local v = 4
tbl[1] = 3
tbl[2] = v
narrator_7110505.durationList = tbl
datas.Narrator_7110505 = narrator_7110505
local narrator_7110506 = {narratorId = 7110506, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList2 = {}
local n2 = 6
local n3 = 5
local n4 = 3
local n5 = 3
local n6 = 4
local n7 = 3
durationList2[1] = 4
durationList2[2] = n2
durationList2[3] = n3
durationList2[4] = n4
durationList2[5] = n5
durationList2[6] = n6
durationList2[7] = n7
narrator_7110506.durationList = durationList2
datas.Narrator_7110506 = narrator_7110506
local narrator_7110509 = {narratorId = 7110509, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList3 = {}
local n8 = 2
durationList3[1] = 3
durationList3[2] = n8
narrator_7110509.durationList = durationList3
datas.Narrator_7110509 = narrator_7110509
Q71105ClientConfig.Datas = datas
return Q71105ClientConfig
