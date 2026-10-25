local Q74081ClientConfig = {
    MainID = 74081,
    ActorAlias = "74081",
    SubIDs = {
        q7408101 = 7408101,
        q7408102 = 7408102,
        q7408103 = 7408103,
        q7408104 = 7408104,
        q7408105 = 7408105,
        q7408107 = 7408107,
        q7408132 = 7408132,
        q7408114 = 7408114,
        q7408133 = 7408133,
        q7408115 = 7408115,
        q7408131 = 7408131,
        q7408116 = 7408116,
        q7408129 = 7408129,
        q7408117 = 7408117,
        q7408118 = 7408118,
        q7408119 = 7408119,
        q7408120 = 7408120,
        q7408121 = 7408121,
        q7408122 = 7408122,
        q7408123 = 7408123,
        q7408124 = 7408124,
        q7408125 = 7408125,
        q7408126 = 7408126,
        q7408127 = 7408127,
        q7408128 = 7408128,
        q7408108 = 7408108,
        q7408113 = 7408113,
        q7408109 = 7408109,
        q7408112 = 7408112,
        q7408130 = 7408130,
        q7408111 = 7408111,
        q7408106 = 7408106,
        q7408110 = 7408110
    },
    Npcs = {
        Npc5223Data = {
            id = 5223,
            alias = "Npc5223",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21132Data = {
            id = 21132,
            alias = "Npc21132",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21133Data = {
            id = 21133,
            alias = "Npc21133",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21134Data = {
            id = 21134,
            alias = "Npc21134",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21135Data = {
            id = 21135,
            alias = "Npc21135",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21136Data = {
            id = 21136,
            alias = "Npc21136",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5208Data = {
            id = 5208,
            alias = "Npc5208",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narratorWithId7408101 = {
    narratorId = 7408103,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 5
local v = 3
durationList[1] = 5
durationList[2] = n
durationList[3] = v
narratorWithId7408101.durationList = durationList
datas.NarratorWithId7408101 = narratorWithId7408101

datas.CutsceneData7408108 = {
    type = CutsceneType.TIME_LINE_PREFAB,
    castListPath = "7408108",
    resPath = "",
    canSkip = false,
    startPosType = CutsceneInitPosType.FREE,
    startOffset = {x = 0.0, y = 0.0, z = 0.0},
    keepCamera = false
}

datas.NarratorWithId7408124 = {
    narratorId = 74081024,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {6}
}

datas.NarratorWithId7408115 = {
    narratorId = 7408115,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

Q74081ClientConfig.Datas = datas
return Q74081ClientConfig
