local Q74007ClientConfig = {
    MainID = 74007,
    ActorAlias = "74007",
    SubIDs = {
        q7400721 = 7400721,
        q7400701 = 7400701,
        q7400702 = 7400702,
        q7400703 = 7400703,
        q7400704 = 7400704,
        q7400705 = 7400705,
        q7400706 = 7400706,
        q7400707 = 7400707,
        q7400719 = 7400719,
        q7400720 = 7400720,
        q7400708 = 7400708,
        q7400709 = 7400709,
        q7400710 = 7400710,
        q7400711 = 7400711,
        q7400712 = 7400712,
        q7400715 = 7400715,
        q7400716 = 7400716,
        q7400718 = 7400718,
        q7400714 = 7400714,
        q7400713 = 7400713,
        q7400717 = 7400717
    },
    Npcs = {
        Npc21031Data = {
            id = 21031,
            alias = "Npc21031",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5301Data = {
            id = 5301,
            alias = "Npc5301",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20985Data = {
            id = 20985,
            alias = "Npc20985",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21221Data = {
            id = 21221,
            alias = "Npc21221",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7400701Trigger = {pos = {x = 2722.083, y = 224.021, z = 4993.795}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7400702Trigger = {pos = {x = 2745.842, y = 227.78, z = 4966.885}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7400716Trigger = {pos = {x = 2553.655, y = 244.838, z = 4808.698}, rot = {x = 0.0, y = 129.97, z = 0.0}},
        TPos_Q7400707Trigger = {pos = {x = 2642.329, y = 249.85, z = 4797.234}, rot = {x = 0.0, y = 101.434, z = 0.0}}
    }
}

local datas = {
    NarratorWithId = {
        narratorId = 740079901,
        pauseLen = 10,
        resumeLen = 5,
        tag = "Story",
        startCheckPause = false,
        durationList = {5}
    }
}

local narratorWithId_01 = {narratorId = 740079902, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 5
durationList[1] = 5
durationList[2] = n
narratorWithId_01.durationList = durationList
datas.NarratorWithId_01 = narratorWithId_01

datas.NarratorWithId_02 = {
    narratorId = 740079904,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {5}
}

datas.NarratorWithId_03 = {
    narratorId = 740079905,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {5}
}

Q74007ClientConfig.Datas = datas
return Q74007ClientConfig
