local Q73238ClientConfig = {
    MainID = 73238,
    ActorAlias = "73238",
    SubIDs = {
        q7323840 = 7323840,
        q7323842 = 7323842,
        q7323841 = 7323841,
        q7323801 = 7323801,
        q7323803 = 7323803,
        q7323833 = 7323833,
        q7323804 = 7323804,
        q7323838 = 7323838,
        q7323837 = 7323837,
        q7323806 = 7323806,
        q7323807 = 7323807,
        q7323830 = 7323830,
        q7323808 = 7323808,
        q7323831 = 7323831,
        q7323809 = 7323809,
        q7323816 = 7323816,
        q7323817 = 7323817,
        q7323820 = 7323820,
        q7323821 = 7323821,
        q7323822 = 7323822,
        q7323835 = 7323835,
        q7323836 = 7323836,
        q7323823 = 7323823,
        q7323824 = 7323824,
        q7323826 = 7323826,
        q7323827 = 7323827,
        q7323839 = 7323839,
        q7323829 = 7323829,
        q7323832 = 7323832,
        q7323825 = 7323825,
        q7323834 = 7323834
    },
    Npcs = {
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20987Data = {
            id = 20987,
            alias = "Npc20987",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4283Data = {
            id = 4283,
            alias = "Npc4283",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20927Data = {
            id = 20927,
            alias = "Npc20927",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4284Data = {
            id = 4284,
            alias = "Npc4284",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4019Data = {
            id = 4019,
            alias = "Npc4019",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7323839Trigger = sceneData:GetDummyPoint(3, "Q7323839_guide"),
        TPos_Q7323840Trigger = {pos = {x = -316.792, y = 138.1, z = 5986.81}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7323826Trigger = sceneData:GetDummyPoint(3, "guide_Q7323826"),
        TPos_Q7323832Trigger = {pos = {x = 569.715, y = 310.487, z = 5713.536}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7323833Trigger = sceneData:GetDummyPoint(3, "guide_Q7323833"),
        TPos_Q7323835Trigger = {pos = {x = 667.0912, y = 157.5577, z = 6690.562}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7323836Trigger = {pos = {x = 678.3937, y = 154.775, z = 6696.192}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7323822Trigger = sceneData:GetDummyPoint(3, "guide_Q7323822"),
        TPos_Q7323816Trigger = sceneData:GetDummyPoint(3, "guide_Q7323816"),
        TPos_Q7323841Trigger = {pos = {x = -316.792, y = 138.1, z = 5986.81}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7323803Trigger = sceneData:GetDummyPoint(3, "guide_Q7323803"),
        TPos_Q7323806Trigger = sceneData:GetDummyPoint(3, "guide_Q7323806"),
        TPos_Q7323825Trigger = {pos = {x = 491.2858, y = 220.1501, z = 6453.695}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {
    NarratorTable03 = {{dialogID = 732389920, audioEvtName = "", duration = 3}},
    NarratorTable33 = {{dialogID = 732389922, audioEvtName = "", duration = 3}},
    NarratorTable06 = {{dialogID = 732389903, audioEvtName = "", duration = 3}},
    NarratorTable04 = {{dialogID = 732389901, audioEvtName = "", duration = 3}},
    NarratorTable34 = {{dialogID = 732389906, audioEvtName = "", duration = 3}},
    NarratorTable07 = {{dialogID = 732389910, audioEvtName = "", duration = 3}},
    NarratorTable09 = {{dialogID = 732389913, audioEvtName = "", duration = 3}}
}

local narrator_732389920 = {narratorId = 732389920, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narrator_732389920.durationList = durationList
datas.Narrator_732389920 = narrator_732389920
local narrator_732389903 = {narratorId = 732389903, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local tbl = {}
local v = 3
local n2 = 3
tbl[1] = 3
tbl[2] = v
tbl[3] = n2
narrator_732389903.durationList = tbl
datas.Narrator_732389903 = narrator_732389903
local narrator_732389906 = {narratorId = 732389906, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList2 = {}
local n3 = 3
local n4 = 3
local n5 = 3
durationList2[1] = 3
durationList2[2] = n3
durationList2[3] = n4
durationList2[4] = n5
narrator_732389906.durationList = durationList2
datas.Narrator_732389906 = narrator_732389906

datas.Narrator_732389910 = {
    narratorId = 732389910,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

datas.Narrator_732389913 = {
    narratorId = 732389913,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {}
}

datas.Narrator_732389916 = {
    narratorId = 732389916,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

local narrator_732389922 = {narratorId = 732389922, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList3 = {}
local n6 = 2
local n7 = 3
durationList3[1] = 1
durationList3[2] = n6
durationList3[3] = n7
narrator_732389922.durationList = durationList3
datas.Narrator_732389922 = narrator_732389922
local narrator_732389901 = {narratorId = 732389901, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList4 = {}
local n8 = 3
durationList4[1] = 3
durationList4[2] = n8
narrator_732389901.durationList = durationList4
datas.Narrator_732389901 = narrator_732389901
local narrator_732389925 = {narratorId = 732389925, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList5 = {}
local n9 = 3
local n10 = 3
durationList5[1] = 3
durationList5[2] = n9
durationList5[3] = n10
narrator_732389925.durationList = durationList5
datas.Narrator_732389925 = narrator_732389925
local narrator_732389927 = {narratorId = 732389927, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList6 = {}
local n11 = 3
local n12 = 3
local n13 = 3
durationList6[1] = 3
durationList6[2] = n11
durationList6[3] = n12
durationList6[4] = n13
narrator_732389927.durationList = durationList6
datas.Narrator_732389927 = narrator_732389927
local narrator_732389931 = {narratorId = 732389931, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList7 = {}
local n14 = 3
local n15 = 3
durationList7[1] = 3
durationList7[2] = n14
durationList7[3] = n15
narrator_732389931.durationList = durationList7
datas.Narrator_732389931 = narrator_732389931

datas.Narrator_732389934 = {
    narratorId = 732389934,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

local narrator_732389935 = {narratorId = 732389935, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList8 = {}
local n16 = 3
local n17 = 3
durationList8[1] = 3
durationList8[2] = n16
durationList8[3] = n17
narrator_732389935.durationList = durationList8
datas.Narrator_732389935 = narrator_732389935
local narrator_732389945 = {narratorId = 732389945, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList9 = {}
local n18 = 3
local n19 = 3
durationList9[1] = 3
durationList9[2] = n18
durationList9[3] = n19
narrator_732389945.durationList = durationList9
datas.Narrator_732389945 = narrator_732389945
Q73238ClientConfig.Datas = datas
return Q73238ClientConfig
