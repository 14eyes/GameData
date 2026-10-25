local Q74104ClientConfig = {
    MainID = 74104,
    ActorAlias = "74104",
    SubIDs = {
        q7410401 = 7410401,
        q7410402 = 7410402,
        q7410403 = 7410403,
        q7410404 = 7410404,
        q7410405 = 7410405,
        q7410406 = 7410406,
        q7410431 = 7410431,
        q7410407 = 7410407,
        q7410408 = 7410408,
        q7410409 = 7410409,
        q7410410 = 7410410,
        q7410411 = 7410411,
        q7410412 = 7410412,
        q7410435 = 7410435,
        q7410436 = 7410436,
        q7410413 = 7410413,
        q7410414 = 7410414,
        q7410415 = 7410415,
        q7410416 = 7410416,
        q7410417 = 7410417,
        q7410418 = 7410418,
        q7410438 = 7410438,
        q7410419 = 7410419,
        q7410420 = 7410420,
        q7410421 = 7410421,
        q7410422 = 7410422,
        q7410446 = 7410446,
        q7410439 = 7410439,
        q7410432 = 7410432,
        q7410433 = 7410433,
        q7410423 = 7410423,
        q7410437 = 7410437,
        q7410424 = 7410424,
        q7410425 = 7410425,
        q7410426 = 7410426,
        q7410430 = 7410430,
        q7410427 = 7410427,
        q7410428 = 7410428,
        q7410440 = 7410440,
        q7410441 = 7410441,
        q7410442 = 7410442,
        q7410443 = 7410443,
        q7410444 = 7410444,
        q7410445 = 7410445
    },
    Npcs = {
        Npc21137Data = {
            id = 21137,
            alias = "Npc21137",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5225Data = {
            id = 5225,
            alias = "Npc5225",
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
        TPos_Q74104Trigger7 = {pos = {x = 4896.978, y = 375.918, z = 4419.538}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q74104Trigger8 = {pos = {x = 4752.761, y = 530.309, z = 4280.572}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q74104Trigger13 = {pos = {x = 4873.265, y = 287.073, z = 4476.064}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {}

local narratorWithId = {
    narratorId = 741042901,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 4
local v = 3
local n2 = 4
durationList[1] = 3
durationList[2] = n
durationList[3] = v
durationList[4] = n2
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId

datas.NarratorWithId_01 = {
    narratorId = 741043001,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {4}
}

datas.NarratorWithId_02 = {
    narratorId = 741043002,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

local narratorWithId_03 = {
    narratorId = 741043003,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local n3 = 3
tbl[1] = 3
tbl[2] = n3
narratorWithId_03.durationList = tbl
datas.NarratorWithId_03 = narratorWithId_03

local narratorWithId_04 = {
    narratorId = 741043004,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList2 = {}
local n4 = 5
durationList2[1] = 5
durationList2[2] = n4
narratorWithId_04.durationList = durationList2
datas.NarratorWithId_04 = narratorWithId_04

datas.NarratorWithId_05 = {
    narratorId = 741043006,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {4}
}

datas.NarratorWithId_06 = {
    narratorId = 741043007,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

local narratorWithId_07 = {
    narratorId = 741042903,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList3 = {}
local n5 = 3
local n6 = 3
durationList3[1] = 3
durationList3[2] = n5
durationList3[3] = n6
narratorWithId_07.durationList = durationList3
datas.NarratorWithId_07 = narratorWithId_07

datas.Finish_18 = {
    narratorId = 741043009,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

local narratorWithId_10 = {
    narratorId = 741043008,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList4 = {}
local n7 = 4
durationList4[1] = 4
durationList4[2] = n7
narratorWithId_10.durationList = durationList4
datas.NarratorWithId_10 = narratorWithId_10

datas.NarratorWithId_11 = {
    narratorId = 741042906,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

datas.NarratorWithId_12 = {
    narratorId = 741042907,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

local narratorWithId_14 = {
    narratorId = 741042910,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList5 = {}
local n8 = 4
durationList5[1] = 3.5
durationList5[2] = n8
narratorWithId_14.durationList = durationList5
datas.NarratorWithId_14 = narratorWithId_14

datas.NarratorWithId_08 = {
    narratorId = 701042914,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {4}
}

datas.NarratorWithId_15 = {
    narratorId = 741042915,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {4}
}

local narratorWithId_16 = {
    narratorId = 741043012,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList6 = {}
local n9 = 5
durationList6[1] = 4
durationList6[2] = n9
narratorWithId_16.durationList = durationList6
datas.NarratorWithId_16 = narratorWithId_16

local narratorWithId_13 = {
    narratorId = 741043014,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList7 = {}
local n10 = 4
durationList7[1] = 5
durationList7[2] = n10
narratorWithId_13.durationList = durationList7
datas.NarratorWithId_13 = narratorWithId_13
Q74104ClientConfig.Datas = datas
return Q74104ClientConfig
