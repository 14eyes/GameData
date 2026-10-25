local Q74084ClientConfig = {
    MainID = 74084,
    ActorAlias = "74084",
    SubIDs = {
        q7408404 = 7408404,
        q7408410 = 7408410,
        q7408412 = 7408412,
        q7408409 = 7408409,
        q7408401 = 7408401,
        q7408413 = 7408413,
        q7408405 = 7408405,
        q7408407 = 7408407,
        q7408408 = 7408408,
        q7408403 = 7408403,
        q7408411 = 7408411
    },
    Npcs = {
        Npc21121Data = {
            id = 21121,
            alias = "Npc21121",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21122Data = {
            id = 21122,
            alias = "Npc21122",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5325Data = {
            id = 5325,
            alias = "Npc5325",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7408409EnterTriggerin = {pos = {x = 4010.228, y = 504.0, z = 3379.076}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7408401EnterTriggerin = {pos = {x = 4010.228, y = 504.0, z = 3379.076}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7408402EnterTriggerin = {pos = {x = 3976.063, y = 488.487, z = 3388.381}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7408409bEnterTrigger = {pos = {x = 3976.063, y = 488.487, z = 3388.381}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7408409aEnterTriggerin = {pos = {x = 4010.228, y = 504.0, z = 3379.076}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {}

local narratorWithId01 = {
    narratorId = 7408401,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 5
durationList[1] = 4
durationList[2] = n
narratorWithId01.durationList = durationList
datas.NarratorWithId01 = narratorWithId01

local narratorWithId02 = {
    narratorId = 7408402,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local v = 4
tbl[1] = 6
tbl[2] = v
narratorWithId02.durationList = tbl
datas.NarratorWithId02 = narratorWithId02

datas.NarratorWithId03 = {
    narratorId = 7408403,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

Q74084ClientConfig.Datas = datas
return Q74084ClientConfig
