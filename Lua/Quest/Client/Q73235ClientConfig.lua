local Q73235ClientConfig = {
    MainID = 73235,
    ActorAlias = "73235",
    SubIDs = {
        q7323513 = 7323513,
        q7323514 = 7323514,
        q7323515 = 7323515,
        q7323552 = 7323552,
        q7323501 = 7323501,
        q7323502 = 7323502,
        q7323504 = 7323504,
        q7323503 = 7323503,
        q7323508 = 7323508,
        q7323551 = 7323551,
        q7323505 = 7323505,
        q7323507 = 7323507,
        q7323512 = 7323512,
        q7323506 = 7323506,
        q7323540 = 7323540,
        q7323541 = 7323541,
        q7323542 = 7323542,
        q7323543 = 7323543,
        q7323544 = 7323544,
        q7323545 = 7323545,
        q7323546 = 7323546,
        q7323547 = 7323547,
        q7323548 = 7323548,
        q7323549 = 7323549,
        q7323550 = 7323550,
        q7323510 = 7323510,
        q7323519 = 7323519,
        q7323522 = 7323522,
        q7323511 = 7323511,
        q7323516 = 7323516,
        q7323517 = 7323517,
        q7323533 = 7323533,
        q7323532 = 7323532,
        q7323531 = 7323531,
        q7323530 = 7323530,
        q7323529 = 7323529,
        q7323523 = 7323523,
        q7323524 = 7323524,
        q7323525 = 7323525,
        q7323526 = 7323526,
        q7323527 = 7323527,
        q7323518 = 7323518,
        q7323539 = 7323539,
        q7323538 = 7323538,
        q7323537 = 7323537,
        q7323536 = 7323536,
        q7323535 = 7323535,
        q7323534 = 7323534,
        q7323520 = 7323520,
        q7323528 = 7323528,
        q7323521 = 7323521,
        q7323509 = 7323509
    },
    Npcs = {
        Npc20892Data = {
            id = 20892,
            alias = "Npc20892",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4283Data = {
            id = 4283,
            alias = "Npc4283",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7323513Trigger = {pos = {x = 375.7208, y = 310.0307, z = 6932.339}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7323514Trigger = {pos = {x = 457.0447, y = 215.0308, z = 6085.441}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7323515Trigger = {pos = {x = 865.4254, y = 215.9456, z = 5626.133}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7323501Trigger = {pos = {x = 885.8821, y = 380.7413, z = 6057.145}, rot = {x = 0, y = 8.297712, z = 0}},
        TPos_Q7323502Trigger = sceneData:GetDummyPoint(3, "guide_Q7323504"),
        TPos_Q7323503Trigger = sceneData:GetDummyPoint(3, "Q7323503_guide"),
        TPos_Q7323505Trigger = {pos = {x = 983.3811, y = 425.4344, z = 6209.301}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {}
local narratorWithId01 = {narratorId = 732350101, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narratorWithId01.durationList = durationList
datas.NarratorWithId01 = narratorWithId01
datas.TextmapId = {""}
local narratorWithId20 = {narratorId = 732352001, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local tbl = {}
local v = 3
local n2 = 5
tbl[1] = 3
tbl[2] = v
tbl[3] = n2
narratorWithId20.durationList = tbl
datas.NarratorWithId20 = narratorWithId20
local narratorWithId13 = {narratorId = 732351301, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList2 = {}
local n3 = 3
local n4 = 5
local n5 = 4
durationList2[1] = 3
durationList2[2] = n3
durationList2[3] = n4
durationList2[4] = n5
narratorWithId13.durationList = durationList2
datas.NarratorWithId13 = narratorWithId13
local narratorWithId14 = {narratorId = 732351401, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList3 = {}
local n6 = 5
local n7 = 3
durationList3[1] = 3
durationList3[2] = n6
durationList3[3] = n7
narratorWithId14.durationList = durationList3
datas.NarratorWithId14 = narratorWithId14
local narratorWithId15 = {narratorId = 732351501, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList4 = {}
local n8 = 4
local n9 = 4
local n10 = 4
durationList4[1] = 3
durationList4[2] = n8
durationList4[3] = n9
durationList4[4] = n10
narratorWithId15.durationList = durationList4
datas.NarratorWithId15 = narratorWithId15
local narratorWithId16 = {narratorId = 732351601, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList5 = {}
local n11 = 4
durationList5[1] = 4
durationList5[2] = n11
narratorWithId16.durationList = durationList5
datas.NarratorWithId16 = narratorWithId16

datas.NarratorWithId50 = {
    narratorId = 732355001,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {4}
}

datas.NarratorWithId11 = {
    narratorId = 732351101,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

datas.NarratorWithId05 = {
    narratorId = 732350103,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {4}
}

Q73235ClientConfig.Datas = datas
return Q73235ClientConfig
