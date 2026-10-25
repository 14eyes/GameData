local Q74153ClientConfig = {
    MainID = 74153,
    ActorAlias = "74153",
    SubIDs = {
        q7415309 = 7415309,
        q7415301 = 7415301,
        q7415302 = 7415302,
        q7415303 = 7415303,
        q7415304 = 7415304,
        q7415312 = 7415312,
        q7415310 = 7415310,
        q7415305 = 7415305,
        q7415306 = 7415306,
        q7415311 = 7415311,
        q7415307 = 7415307,
        q7415308 = 7415308
    },
    Npcs = {
        Npc21258Data = {
            id = 21258,
            alias = "Npc21258",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21255Data = {
            id = 21255,
            alias = "Npc21255",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21256Data = {
            id = 21256,
            alias = "Npc21256",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21259Data = {
            id = 21259,
            alias = "Npc21259",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21250Data = {
            id = 21250,
            alias = "Npc21250",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21253Data = {
            id = 21253,
            alias = "Npc21253",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narrator_7415301 = {
    narratorId = 7415301,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narrator_7415301.durationList = durationList
datas.Narrator_7415301 = narrator_7415301

local narrator_7415302 = {
    narratorId = 7415302,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local v = 3
tbl[1] = 3
tbl[2] = v
narrator_7415302.durationList = tbl
datas.Narrator_7415302 = narrator_7415302
Q74153ClientConfig.Datas = datas
return Q74153ClientConfig
