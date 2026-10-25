local Q71107ClientConfig = {
    MainID = 71107,
    ActorAlias = "71107",
    SubIDs = {
        q7110725 = 7110725,
        q7110701 = 7110701,
        q7110702 = 7110702,
        q7110703 = 7110703,
        q7110710 = 7110710,
        q7110711 = 7110711,
        q7110737 = 7110737,
        q7110712 = 7110712,
        q7110713 = 7110713,
        q7110714 = 7110714,
        q7110715 = 7110715,
        q7110726 = 7110726,
        q7110727 = 7110727,
        q7110716 = 7110716,
        q7110704 = 7110704,
        q7110705 = 7110705,
        q7110731 = 7110731,
        q7110706 = 7110706,
        q7110707 = 7110707,
        q7110708 = 7110708,
        q7110728 = 7110728,
        q7110729 = 7110729,
        q7110730 = 7110730,
        q7110709 = 7110709,
        q7110717 = 7110717,
        q7110718 = 7110718,
        q7110719 = 7110719,
        q7110732 = 7110732,
        q7110720 = 7110720,
        q7110735 = 7110735,
        q7110723 = 7110723,
        q7110724 = 7110724,
        q7110721 = 7110721,
        q7110733 = 7110733,
        q7110736 = 7110736,
        q7110734 = 7110734,
        q7110722 = 7110722
    },
    Npcs = {
        Npc2484Data = {
            id = 2484,
            alias = "Npc2484",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2493Data = {
            id = 2520,
            alias = "Npc2493",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21416Data = {
            id = 21416,
            alias = "Npc21416",
            script = "Actor/Npc/TempNPC",
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
        TPos_Q7110702Trigger = {pos = {x = 2097.425, y = 398.09, z = 2055.598}, rot = {x = 0.287, y = 90.349, z = 0.254}},
        TPos_Q7110704Trigger = {pos = {x = 2065.147, y = 402.422, z = 1970.857}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7110710Trigger = {pos = {x = 2128.773, y = 395.3, z = 2030.013}, rot = {x = 0.0, y = 248.135, z = 0.0}},
        TPos_Q7110718Trigger = {pos = {x = 2103.78, y = 387.483, z = 2158.025}, rot = {x = 0.0, y = 291.009, z = 0.0}},
        TPos_Q7110720Trigger = {pos = {x = 2121.65, y = 386.087, z = 2166.913}, rot = {x = 0.0, y = 37.539, z = 0.0}},
        TPos_Q7110723Trigger = {pos = {x = 2124.6, y = 386.02, z = 2149.591}, rot = {x = 0.0, y = 120.149, z = 0.0}},
        TPos_Q7110724Trigger = {pos = {x = 2115.139, y = 386.422, z = 2136.492}, rot = {x = 0.0, y = 328.156, z = 0.0}},
        TPos_Q7110732TriggerFinish = sceneData:GetDummyPoint(3, "Q7110732_R4_N2484"),
        TPos_Q7110720TriggerFail = sceneData:GetDummyPoint(3, "Q7110732_R1_N2484"),
        TPos_Q7110723TriggerFail = sceneData:GetDummyPoint(3, "Q7110732_R1_N2484"),
        TPos_Q7110732Trigger = {pos = {x = 2121.65, y = 386.087, z = 2166.913}, rot = {x = 0.0, y = 37.539, z = 0.0}},
        TPos_Q7110735Trigger = {pos = {x = 2124.6, y = 386.02, z = 2149.591}, rot = {x = 0.0, y = 120.149, z = 0.0}},
        TPos_Q7110737Trigger = {pos = {x = 2139.128, y = 401.021, z = 2048.225}, rot = {x = 0.0, y = 33.205, z = 0.0}},
        TPos_Q7110732TriggerFail = {pos = {x = 2110.525, y = 386.023, z = 2164.443}, rot = {x = 0.0, y = 71.227, z = 0.0}},
        TPos_Q7110735TriggerFail = {pos = {x = 2123.262, y = 386.103, z = 2163.564}, rot = {x = 0.0, y = 114.227, z = 0.0}},
        TPos_Q7110724TriggerFail = {pos = {x = 2120.77, y = 386.02, z = 2146.775}, rot = {x = 0.0, y = 211.84, z = 0.0}},
        TPos_Q7110733paimonTrigger = {pos = {x = 2097.842, y = 389.328, z = 2131.201}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {}

local narratorWithId71107199 = {
    narratorId = 7110709,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 4
local v = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
narratorWithId71107199.durationList = durationList
datas.NarratorWithId71107199 = narratorWithId71107199

local narratorWithId71107198 = {
    narratorId = 7110723,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local n2 = 4
local n3 = 4
local n4 = 4
tbl[1] = 3
tbl[2] = n2
tbl[3] = n3
tbl[4] = n4
narratorWithId71107198.durationList = tbl
datas.NarratorWithId71107198 = narratorWithId71107198

local narratorWithId71107197 = {
    narratorId = 7110707,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList2 = {}
local n5 = 3
local n6 = 5
durationList2[1] = 5
durationList2[2] = n5
durationList2[3] = n6
narratorWithId71107197.durationList = durationList2
datas.NarratorWithId71107197 = narratorWithId71107197

local narratorWithId7110702rmd = {
    narratorId = 7110701,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList3 = {}
local n7 = 5
local n8 = 3
durationList3[1] = 3
durationList3[2] = n7
durationList3[3] = n8
narratorWithId7110702rmd.durationList = durationList3
datas.NarratorWithId7110702rmd = narratorWithId7110702rmd

datas.Route7110732_1 = {
    {x = 2107.611, y = 386.756, z = 2162.751},
    {x = 2108.579, y = 386.44, z = 2163.281},
    {x = 2109.226, y = 386.278, z = 2163.651},
    {x = 2110.399, y = 386.013, z = 2163.972},
    {x = 2111.734, y = 385.998, z = 2163.825},
    {x = 2113.651, y = 385.903, z = 2164.226},
    {x = 2116.449, y = 385.804, z = 2164.541},
    {x = 2121.158, y = 386.02, z = 2166.457}
}

local narratorWithId71107196 = {
    narratorId = 7110718,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList4 = {}
local n9 = 4
local n10 = 4
durationList4[1] = 3
durationList4[2] = n9
durationList4[3] = n10
narratorWithId71107196.durationList = durationList4
datas.NarratorWithId71107196 = narratorWithId71107196

datas.Route7110732_2 = {
    {x = 2123.898, y = 386.221, z = 2162.909},
    {x = 2126.375, y = 386.523, z = 2162.989},
    {x = 2128.141, y = 386.881, z = 2161.059},
    {x = 2128.966, y = 387.166, z = 2159.172},
    {x = 2128.595, y = 387.078, z = 2156.666},
    {x = 2128.234, y = 387.074, z = 2155.447},
    {x = 2126.615, y = 386.439, z = 2152.978},
    {x = 2124.939, y = 386.073, z = 2149.562},
    {x = 2125.37, y = 386.117, z = 2149.227}
}

datas.Paimon_mood = 0

local narratorWithId71107195 = {
    narratorId = 7110735,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList5 = {}
local n11 = 3
durationList5[1] = 3
durationList5[2] = n11
narratorWithId71107195.durationList = durationList5
datas.NarratorWithId71107195 = narratorWithId71107195

datas.Route7110732_3 = {
    {x = 2121.531, y = 386.043, z = 2146.84},
    {x = 2118.456, y = 386.016, z = 2145.367},
    {x = 2115.535, y = 386.02, z = 2144.069},
    {x = 2112.866, y = 386.086, z = 2142.073},
    {x = 2113.198, y = 386.232, z = 2137.946},
    {x = 2115.083, y = 386.337, z = 2136.625}
}

datas.NarratorWithId7110788 = {
    narratorId = 7110788,
    tag = "StoryInMainPage",
    startCheckPause = true,
    resumeReminder = -1,
    durationList = {6}
}

Q71107ClientConfig.Datas = datas
return Q71107ClientConfig
