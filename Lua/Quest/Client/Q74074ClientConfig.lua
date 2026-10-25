local Q74074ClientConfig = {
    MainID = 74074,
    ActorAlias = "74074",
    SubIDs = {
        q7407401 = 7407401,
        q7407406 = 7407406,
        q7407402 = 7407402,
        q7407409 = 7407409,
        q7407403 = 7407403,
        q7407404 = 7407404,
        q7407407 = 7407407,
        q7407408 = 7407408,
        q7407410 = 7407410,
        q7407405 = 7407405,
        q7407411 = 7407411
    },
    Npcs = {
        Npc21126Data = {
            id = 21126,
            alias = "Npc21126",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21315Data = {
            id = 21315,
            alias = "Npc21315",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21337Data = {
            id = 21337,
            alias = "Npc21337",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q74074TriggerGuide = {pos = {x = 2806.053, y = 445.384, z = 3340.596}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {}

local narratorWithId1 = {
    narratorId = 7407401,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narratorWithId1.durationList = durationList
datas.NarratorWithId1 = narratorWithId1

datas.NarratorWithId2 = {
    narratorId = 7407402,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

datas.NarratorWithId3 = {
    narratorId = 7407403,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

datas.NarratorWithIdNear = {
    narratorId = 7407405,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

Q74074ClientConfig.Datas = datas
return Q74074ClientConfig
