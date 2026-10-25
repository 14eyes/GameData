local Q74006ClientConfig = {
    MainID = 74006,
    ActorAlias = "74006",
    SubIDs = {
        q7400624 = 7400624,
        q7400601 = 7400601,
        q7400602 = 7400602,
        q7400603 = 7400603,
        q7400604 = 7400604,
        q7400605 = 7400605,
        q7400606 = 7400606,
        q7400607 = 7400607,
        q7400608 = 7400608,
        q7400609 = 7400609,
        q7400622 = 7400622,
        q7400610 = 7400610,
        q7400612 = 7400612,
        q7400613 = 7400613,
        q7400614 = 7400614,
        q7400615 = 7400615,
        q7400616 = 7400616,
        q7400617 = 7400617,
        q7400625 = 7400625,
        q7400618 = 7400618,
        q7400619 = 7400619,
        q7400620 = 7400620,
        q7400621 = 7400621,
        q7400626 = 7400626,
        q7400623 = 7400623,
        q7400611 = 7400611
    },
    Npcs = {
        Npc5301Data = {
            id = 5301,
            alias = "Npc5301",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21024Data = {
            id = 21024,
            alias = "Npc21024",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21025Data = {
            id = 21025,
            alias = "Npc21025",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21026Data = {
            id = 21026,
            alias = "Npc21026",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20985Data = {
            id = 20985,
            alias = "Npc20985",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5317Data = {
            id = 5317,
            alias = "Npc5317",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5322Data = {
            id = 5322,
            alias = "Npc5322",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7400606Trigger = {pos = {x = 2471.641, y = 247.875, z = 4801.005}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400607Trigger = {pos = {x = 2449.919, y = 237.003, z = 4734.114}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400608Trigger = {pos = {x = 2399.177, y = 233.48, z = 4706.237}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400610Trigger = {pos = {x = 2285.199, y = 192.681, z = 4738.03}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400615Trigger = {pos = {x = 2386.977, y = 182.98, z = 4918.074}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400622Trigger = {pos = {x = 2331.726, y = 182.384, z = 4725.717}, rot = {x = 0, y = 249.315, z = 0}},
        TPos_Q7400618Trigger = {pos = {x = 2638.791, y = 215.683, z = 4998.283}, rot = {x = 0, y = 218.102, z = 0}}
    }
}

local datas = {}
local narratorWithId = {narratorId = 7400601, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 5
durationList[1] = 4
durationList[2] = n
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId

local narratorWithId_dogencounter = {
    narratorId = 7400602,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local v = 5
tbl[1] = 4
tbl[2] = v
narratorWithId_dogencounter.durationList = tbl
datas.NarratorWithId_dogencounter = narratorWithId_dogencounter

datas.NarratorWithId_whynomelusine = {
    narratorId = 7400603,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

local narratorWithId_foundmelusine = {
    narratorId = 7400604,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList2 = {}
local n2 = 4
local n3 = 3
local n4 = 4
durationList2[1] = 3
durationList2[2] = n2
durationList2[3] = n3
durationList2[4] = n4
narratorWithId_foundmelusine.durationList = durationList2
datas.NarratorWithId_foundmelusine = narratorWithId_foundmelusine

local narratorWithId_breakrock = {
    narratorId = 7400605,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList3 = {}
local n5 = 3
local n6 = 5
durationList3[1] = 3
durationList3[2] = n5
durationList3[3] = n6
narratorWithId_breakrock.durationList = durationList3
datas.NarratorWithId_breakrock = narratorWithId_breakrock

datas.NarratorWithId_melusineguide = {
    narratorId = 7400606,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

Q74006ClientConfig.Datas = datas
return Q74006ClientConfig
