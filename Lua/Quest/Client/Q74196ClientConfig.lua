local Q74196ClientConfig = {
    MainID = 74196,
    ActorAlias = "74196",
    SubIDs = {
        q7419601 = 7419601,
        q7419602 = 7419602,
        q7419621 = 7419621,
        q7419622 = 7419622,
        q7419603 = 7419603,
        q7419604 = 7419604,
        q7419605 = 7419605,
        q7419606 = 7419606,
        q7419607 = 7419607,
        q7419608 = 7419608,
        q7419609 = 7419609,
        q7419610 = 7419610,
        q7419611 = 7419611,
        q7419612 = 7419612,
        q7419623 = 7419623,
        q7419613 = 7419613,
        q7419614 = 7419614,
        q7419615 = 7419615,
        q7419616 = 7419616,
        q7419619 = 7419619,
        q7419620 = 7419620,
        q7419617 = 7419617,
        q7419618 = 7419618
    },
    Npcs = {
        Npc21338Data = {
            id = 21338,
            alias = "Npc21338",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21447Data = {
            id = 21447,
            alias = "Npc21447",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21354Data = {
            id = 21354,
            alias = "Npc21354",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21461Data = {
            id = 21461,
            alias = "Npc21461",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21463Data = {
            id = 21463,
            alias = "Npc21463",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21464Data = {
            id = 21464,
            alias = "Npc21464",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21398Data = {
            id = 21398,
            alias = "Npc21398",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21399Data = {
            id = 21399,
            alias = "Npc21399",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21400Data = {
            id = 21400,
            alias = "Npc21400",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21401Data = {
            id = 21401,
            alias = "Npc21401",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21402Data = {
            id = 21402,
            alias = "Npc21402",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21403Data = {
            id = 21403,
            alias = "Npc21403",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21404Data = {
            id = 21404,
            alias = "Npc21404",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21431Data = {
            id = 21431,
            alias = "Npc21431",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    TextmapId = {"Quest_Black_Q7419604"},
    TextmapId_01 = {"Quest_Black_Q7419604"},
    TextmapId_02 = {"Quest_Black_Q7419609"},
    TextmapId_03 = {"Quest_Black_Q7419612"},
    TextmapId_04 = {"Quest_Black_Q7419619"},
    TextmapId_05 = {"Quest_Black_Q7419610"},
    NarratorWithId1 = {
        narratorId = 741969901,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {3}
    }
}

local narratorWithId2 = {
    narratorId = 741969902,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narratorWithId2.durationList = durationList
datas.NarratorWithId2 = narratorWithId2

local narratorWithId3 = {
    narratorId = 741969921,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local v = 3
local n2 = 3
local n3 = 3
local n4 = 3
tbl[1] = 3
tbl[2] = v
tbl[3] = n2
tbl[4] = n3
tbl[5] = n4
narratorWithId3.durationList = tbl
datas.NarratorWithId3 = narratorWithId3

local narratorWithId4 = {
    narratorId = 741969931,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList2 = {}
local n5 = 3
local n6 = 3
durationList2[1] = 3
durationList2[2] = n5
durationList2[3] = n6
narratorWithId4.durationList = durationList2
datas.NarratorWithId4 = narratorWithId4

local narratorWithId5 = {
    narratorId = 741969941,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList3 = {}
local n7 = 3
durationList3[1] = 3
durationList3[2] = n7
narratorWithId5.durationList = durationList3
datas.NarratorWithId5 = narratorWithId5
datas.DialogsId = {0}
datas.DialogsId_01 = {741969954}
Q74196ClientConfig.Datas = datas
return Q74196ClientConfig
