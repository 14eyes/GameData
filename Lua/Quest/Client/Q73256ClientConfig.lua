local Q73256ClientConfig = {
    MainID = 73256,
    ActorAlias = "73256",
    SubIDs = {
        q7325601 = 7325601,
        q7325602 = 7325602,
        q7325603 = 7325603,
        q7325620 = 7325620,
        q7325604 = 7325604,
        q7325605 = 7325605,
        q7325606 = 7325606,
        q7325607 = 7325607,
        q7325608 = 7325608,
        q7325626 = 7325626,
        q7325627 = 7325627,
        q7325609 = 7325609,
        q7325610 = 7325610,
        q7325611 = 7325611,
        q7325612 = 7325612,
        q7325621 = 7325621,
        q7325625 = 7325625,
        q7325622 = 7325622,
        q7325613 = 7325613,
        q7325623 = 7325623,
        q7325614 = 7325614,
        q7325616 = 7325616,
        q7325628 = 7325628,
        q7325619 = 7325619,
        q7325629 = 7325629,
        q7325615 = 7325615,
        q7325617 = 7325617,
        q7325630 = 7325630,
        q7325618 = 7325618,
        q7325632 = 7325632,
        q7325624 = 7325624,
        q7325631 = 7325631
    },
    Npcs = {
        Npc4283Data = {
            id = 4283,
            alias = "Npc4283",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20883Data = {
            id = 20883,
            alias = "Npc20883",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7325626Trigger = {pos = {x = 931.5077, y = 140.5445, z = 6358.904}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7325632Trigger = {pos = {x = 1222.559, y = 103.475, z = 6556.748}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7325619Trigger = {pos = {x = 1102.391, y = 102.2372, z = 6497.246}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7325611Trigger = sceneData:GetDummyPoint(3, "Q7325611_guide"),
        TPos_Q7325613Trigger = sceneData:GetDummyPoint(3, "Q7325613_guide"),
        TPos_Q7325625Trigger = {pos = {x = 890.2951, y = 107.8814, z = 6487.964}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {}
local narratorWithId05 = {narratorId = 732560501, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
local v = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
narratorWithId05.durationList = durationList
datas.NarratorWithId05 = narratorWithId05
local narratorWithId08 = {narratorId = 732560801, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local tbl = {}
local n2 = 3
tbl[1] = 3
tbl[2] = n2
narratorWithId08.durationList = tbl
datas.NarratorWithId08 = narratorWithId08

datas.NarratorWithId13 = {
    narratorId = 732560205,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

datas.NarratorWithId14 = {
    narratorId = 732561401,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

datas.NarratorWithId18 = {
    narratorId = 732561801,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

datas.NarratorWithId19 = {
    narratorId = 732561901,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

local narratorWithId02 = {narratorId = 732560201, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList2 = {}
local n3 = 3
local n4 = 3
local n5 = 3
durationList2[1] = 3
durationList2[2] = n3
durationList2[3] = n4
durationList2[4] = n5
narratorWithId02.durationList = durationList2
datas.NarratorWithId02 = narratorWithId02

datas.NarratorWithId25 = {
    narratorId = 732562501,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

datas.NarratorWithId26 = {
    narratorId = 732562502,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

datas.TextmapId = {""}
local narratorWithId21 = {narratorId = 732562101, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList3 = {}
local n6 = 3
durationList3[1] = 3
durationList3[2] = n6
narratorWithId21.durationList = durationList3
datas.NarratorWithId21 = narratorWithId21

datas.NarratorWithId12 = {
    narratorId = 732561301,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

datas.NarratorWithId31 = {
    narratorId = 732561902,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

Q73256ClientConfig.Datas = datas
return Q73256ClientConfig
