local Q74008ClientConfig = {
    MainID = 74008,
    ActorAlias = "74008",
    SubIDs = {
        q7400801 = 7400801,
        q7400807 = 7400807,
        q7400802 = 7400802,
        q7400803 = 7400803,
        q7400804 = 7400804,
        q7400805 = 7400805,
        q7400806 = 7400806,
        q7400808 = 7400808,
        q7400809 = 7400809,
        q7400810 = 7400810,
        q7400811 = 7400811,
        q7400825 = 7400825,
        q7400812 = 7400812,
        q7400813 = 7400813,
        q7400814 = 7400814,
        q7400815 = 7400815,
        q7400816 = 7400816,
        q7400817 = 7400817,
        q7400818 = 7400818,
        q7400830 = 7400830,
        q7400819 = 7400819,
        q7400828 = 7400828,
        q7400827 = 7400827,
        q7400826 = 7400826,
        q7400832 = 7400832,
        q7400831 = 7400831,
        q7400820 = 7400820,
        q7400821 = 7400821,
        q7400822 = 7400822,
        q7400823 = 7400823,
        q7400829 = 7400829,
        q7400824 = 7400824,
        q7400833 = 7400833
    },
    Npcs = {
        Npc21027Data = {
            id = 21027,
            alias = "Npc21027",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21030Data = {
            id = 21030,
            alias = "Npc21030",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21139Data = {
            id = 21139,
            alias = "Npc21139",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21140Data = {
            id = 21140,
            alias = "Npc21140",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21141Data = {
            id = 21141,
            alias = "Npc21141",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21142Data = {
            id = 21142,
            alias = "Npc21142",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7400812Trigger = {pos = {x = 3157.778, y = 239.55, z = 4108.146}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400815Trigger = {pos = {x = 3325.219, y = 246.2836, z = 4184.232}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400817Trigger = {pos = {x = 3273.142, y = 251.55, z = 4180.486}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {}

local narratorWithId = {
    narratorId = 7400801,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
local v = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId

local narratorWithId_01 = {
    narratorId = 7400802,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local n2 = 3
local n3 = 3
local n4 = 3
local n5 = 3
tbl[1] = 3
tbl[2] = n2
tbl[3] = n3
tbl[4] = n4
tbl[5] = n5
narratorWithId_01.durationList = tbl
datas.NarratorWithId_01 = narratorWithId_01

local narratorWithId_02 = {
    narratorId = 7400803,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList2 = {}
local n6 = 3
local n7 = 3
local n8 = 3
local n9 = 3
durationList2[1] = 3
durationList2[2] = n6
durationList2[3] = n7
durationList2[4] = n8
durationList2[5] = n9
narratorWithId_02.durationList = durationList2
datas.NarratorWithId_02 = narratorWithId_02

local narratorWithId_03 = {
    narratorId = 7400804,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList3 = {}
local n10 = 3
local n11 = 3
local n12 = 3
local n13 = 3
durationList3[1] = 3
durationList3[2] = n10
durationList3[3] = n11
durationList3[4] = n12
durationList3[5] = n13
narratorWithId_03.durationList = durationList3
datas.NarratorWithId_03 = narratorWithId_03

datas.NarratorWithId_04 = {
    narratorId = 7400805,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

local narratorWithId_05 = {
    narratorId = 7400806,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList4 = {}
local n14 = 3
durationList4[1] = 3
durationList4[2] = n14
narratorWithId_05.durationList = durationList4
datas.NarratorWithId_05 = narratorWithId_05
datas.DialogsId = {740089922}
datas.DialogsId_01 = {740089923}
Q74008ClientConfig.Datas = datas
return Q74008ClientConfig
