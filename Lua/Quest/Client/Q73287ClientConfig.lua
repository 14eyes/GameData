local Q73287ClientConfig = {
    MainID = 73287,
    ActorAlias = "73287",
    SubIDs = {
        q7328719 = 7328719,
        q7328720 = 7328720,
        q7328721 = 7328721,
        q7328722 = 7328722,
        q7328701 = 7328701,
        q7328702 = 7328702,
        q7328703 = 7328703,
        q7328704 = 7328704,
        q7328705 = 7328705,
        q7328717 = 7328717,
        q7328718 = 7328718,
        q7328706 = 7328706,
        q7328707 = 7328707,
        q7328708 = 7328708,
        q7328709 = 7328709,
        q7328710 = 7328710,
        q7328711 = 7328711,
        q7328712 = 7328712,
        q7328713 = 7328713,
        q7328714 = 7328714,
        q7328715 = 7328715,
        q7328716 = 7328716
    },
    Npcs = {
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
        },
        Npc4291Data = {
            id = 4291,
            alias = "Npc4291",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20922Data = {
            id = 20922,
            alias = "Npc20922",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20923Data = {
            id = 20923,
            alias = "Npc20923",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20921Data = {
            id = 20921,
            alias = "Npc20921",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4296Data = {
            id = 4296,
            alias = "Npc4296",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    Narrator_7328701 = {
        narratorId = 7328701,
        pauseLen = 10,
        resumeLen = 5,
        tag = "Story",
        startCheckPause = false,
        durationList = {3}
    },
    Narrator_7328702 = {
        narratorId = 7328702,
        pauseLen = 10,
        resumeLen = 5,
        tag = "Story",
        startCheckPause = false,
        durationList = {4}
    },
    Narrator_7328706 = {
        narratorId = 7328706,
        pauseLen = 10,
        resumeLen = 5,
        tag = "Story",
        startCheckPause = false,
        durationList = {3}
    }
}

local narrator_7328707 = {narratorId = 7328707, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 2
durationList[1] = 3
durationList[2] = n
narrator_7328707.durationList = durationList
datas.Narrator_7328707 = narrator_7328707
local narrator_7328708 = {narratorId = 7328708, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local tbl = {}
local v = 3
tbl[1] = 3
tbl[2] = v
narrator_7328708.durationList = tbl
datas.Narrator_7328708 = narrator_7328708
local narrator_7328709 = {narratorId = 7328709, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList2 = {}
local n2 = 3
local n3 = 3
durationList2[1] = 3
durationList2[2] = n2
durationList2[3] = n3
narrator_7328709.durationList = durationList2
datas.Narrator_7328709 = narrator_7328709
local narrator_7328710 = {narratorId = 7328710, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList3 = {}
local n4 = 4
local n5 = 3
local n6 = 4
local n7 = 2
durationList3[1] = 4
durationList3[2] = n4
durationList3[3] = n5
durationList3[4] = n6
durationList3[5] = n7
narrator_7328710.durationList = durationList3
datas.Narrator_7328710 = narrator_7328710
local narrator_7328712 = {narratorId = 7328712, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList4 = {}
local n8 = 5
local n9 = 5
local n10 = 5
local n11 = 3
durationList4[1] = 3
durationList4[2] = n8
durationList4[3] = n9
durationList4[4] = n10
durationList4[5] = n11
narrator_7328712.durationList = durationList4
datas.Narrator_7328712 = narrator_7328712
datas.DialogsId = {732879919}
Q73287ClientConfig.Datas = datas
return Q73287ClientConfig
