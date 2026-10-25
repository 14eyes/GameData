local Q74156ClientConfig = {
    MainID = 74156,
    ActorAlias = "74156",
    SubIDs = {
        q7415614 = 7415614,
        q7415609 = 7415609,
        q7415601 = 7415601,
        q7415602 = 7415602,
        q7415603 = 7415603,
        q7415604 = 7415604,
        q7415613 = 7415613,
        q7415610 = 7415610,
        q7415605 = 7415605,
        q7415606 = 7415606,
        q7415607 = 7415607,
        q7415611 = 7415611,
        q7415612 = 7415612,
        q7415608 = 7415608
    },
    Npcs = {
        Npc21249Data = {
            id = 21249,
            alias = "Npc21249",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21251Data = {
            id = 21251,
            alias = "Npc21251",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21250Data = {
            id = 21250,
            alias = "Npc21250",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    Narrator_7415601 = {
        narratorId = 7415601,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {3}
    }
}

local narrator_7415602 = {
    narratorId = 7415602,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 4
local v = 3
local n2 = 3
local n3 = 5
local n4 = 3
local n5 = 5
local n6 = 3
local n7 = 5
local n8 = 5
local n9 = 3
local n10 = 3
local n11 = 3
local n12 = 3
local n13 = 3
local n14 = 3
local n15 = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
durationList[4] = n2
durationList[5] = n3
durationList[6] = n4
durationList[7] = n5
durationList[8] = n6
durationList[9] = n7
durationList[10] = n8
durationList[11] = n9
durationList[12] = n10
durationList[13] = n11
durationList[14] = n12
durationList[15] = n13
durationList[16] = n14
durationList[17] = n15
narrator_7415602.durationList = durationList
datas.Narrator_7415602 = narrator_7415602

local narrator_7415604 = {
    narratorId = 7415604,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local n16 = 3
local n17 = 3
local n18 = 3
local n19 = 3
local n20 = 3
local n21 = 3
local n22 = 3
tbl[1] = 3
tbl[2] = n16
tbl[3] = n17
tbl[4] = n18
tbl[5] = n19
tbl[6] = n20
tbl[7] = n21
tbl[8] = n22
narrator_7415604.durationList = tbl
datas.Narrator_7415604 = narrator_7415604
datas.DialogsId = {741569928}

local narrator_7415605 = {
    narratorId = 7415605,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList2 = {}
local n23 = 3
durationList2[1] = 3
durationList2[2] = n23
narrator_7415605.durationList = durationList2
datas.Narrator_7415605 = narrator_7415605

datas.RoutePointsData_01 = {
    {x = 3299.895, y = 444.644, z = 3581.729},
    {x = 3289.252, y = 444.21, z = 3577.38},
    {x = 3280.611, y = 444.34, z = 3570.459},
    {x = 3270.924, y = 447.167, z = 3552.982},
    {x = 3266.518, y = 447.968, z = 3535.138},
    {x = 3269.185, y = 447.591, z = 3521.214},
    {x = 3266.452, y = 446.742, z = 3506.168},
    {x = 3260.551, y = 445.757, z = 3492.379},
    {x = 3259.528, y = 444.33, z = 3473.845},
    {x = 3265.395, y = 443.503, z = 3461.464}
}

datas.DialogsId_01 = {741569931}
Q74156ClientConfig.Datas = datas
return Q74156ClientConfig
