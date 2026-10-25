local Q74005ClientConfig = {
    MainID = 74005,
    ActorAlias = "74005",
    SubIDs = {
        q7400502 = 7400502,
        q7400503 = 7400503,
        q7400504 = 7400504,
        q7400518 = 7400518,
        q7400519 = 7400519,
        q7400520 = 7400520,
        q7400505 = 7400505,
        q7400506 = 7400506,
        q7400525 = 7400525,
        q7400526 = 7400526,
        q7400527 = 7400527,
        q7400528 = 7400528,
        q7400523 = 7400523,
        q7400507 = 7400507,
        q7400508 = 7400508,
        q7400509 = 7400509,
        q7400511 = 7400511,
        q7400512 = 7400512,
        q7400513 = 7400513,
        q7400521 = 7400521,
        q7400514 = 7400514,
        q7400524 = 7400524,
        q7400532 = 7400532,
        q7400522 = 7400522,
        q7400515 = 7400515,
        q7400529 = 7400529,
        q7400516 = 7400516,
        q7400517 = 7400517,
        q7400530 = 7400530,
        q7400531 = 7400531,
        q7400510 = 7400510
    },
    Npcs = {
        Npc20985Data = {
            id = 20985,
            alias = "Npc20985",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
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
        Npc20984Data = {
            id = 20984,
            alias = "Npc20984",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21174Data = {
            id = 21174,
            alias = "Npc21174",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21175Data = {
            id = 21175,
            alias = "Npc21175",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21176Data = {
            id = 21176,
            alias = "Npc21176",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21177Data = {
            id = 21177,
            alias = "Npc21177",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21178Data = {
            id = 21178,
            alias = "Npc21178",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7400518Trigger = {pos = {x = 2626.371, y = 331.819, z = 4811.453}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400519Trigger = {pos = {x = 2520.207, y = 247.949, z = 4793.102}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400520Trigger = {pos = {x = 2467.958, y = 249.856, z = 4827.584}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400506Trigger = {pos = {x = 2446.079, y = 242.002, z = 4992.316}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400507Trigger = {pos = {x = 2623.68, y = 214, z = 4981.16}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {}
local narratorWithId = {narratorId = 740059901, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId

datas.NarratorWithId_01 = {
    narratorId = 740059902,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {5}
}

datas.NarratorWithId_03 = {
    narratorId = 740059904,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {5}
}

datas.NarratorWithId_04 = {
    narratorId = 740059905,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {5}
}

datas.NarratorWithId_05 = {
    narratorId = 740059906,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

datas.NarratorWithId_06 = {
    narratorId = 740059907,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {5}
}

datas.NarratorWithId_02 = {
    narratorId = 740059903,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

local narratorWithId_home1 = {
    narratorId = 740059909,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local v = 3
tbl[1] = 3
tbl[2] = v
narratorWithId_home1.durationList = tbl
datas.NarratorWithId_home1 = narratorWithId_home1

local narratorWithId_home2 = {
    narratorId = 740059911,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList2 = {}
local n2 = 3
durationList2[1] = 3
durationList2[2] = n2
narratorWithId_home2.durationList = durationList2
datas.NarratorWithId_home2 = narratorWithId_home2

datas.NarratorWithId_xjytencounter = {
    narratorId = 740059913,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

local narratorWithId_xjytbattle = {
    narratorId = 740059915,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList3 = {}
local n3 = 3
durationList3[1] = 4
durationList3[2] = n3
narratorWithId_xjytbattle.durationList = durationList3
datas.NarratorWithId_xjytbattle = narratorWithId_xjytbattle

local narratorWithId_xjytafter = {
    narratorId = 740059917,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList4 = {}
local n4 = 4
local n5 = 3
durationList4[1] = 4
durationList4[2] = n4
durationList4[3] = n5
narratorWithId_xjytafter.durationList = durationList4
datas.NarratorWithId_xjytafter = narratorWithId_xjytafter

local narratorWithId_ship = {
    narratorId = 740059919,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList5 = {}
local n6 = 3
durationList5[1] = 3
durationList5[2] = n6
narratorWithId_ship.durationList = durationList5
datas.NarratorWithId_ship = narratorWithId_ship

local narratorWithId_jakobbattle = {
    narratorId = 740059921,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList6 = {}
local n7 = 4
durationList6[1] = 4
durationList6[2] = n7
narratorWithId_jakobbattle.durationList = durationList6
datas.NarratorWithId_jakobbattle = narratorWithId_jakobbattle

local narratorWithId_nogearyet = {
    narratorId = 740059923,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList7 = {}
local n8 = 5
durationList7[1] = 5
durationList7[2] = n8
narratorWithId_nogearyet.durationList = durationList7
datas.NarratorWithId_nogearyet = narratorWithId_nogearyet

local narratorWithId_hasgear = {
    narratorId = 740059925,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList8 = {}
local n9 = 5
durationList8[1] = 5
durationList8[2] = n9
narratorWithId_hasgear.durationList = durationList8
datas.NarratorWithId_hasgear = narratorWithId_hasgear
Q74005ClientConfig.Datas = datas
return Q74005ClientConfig
