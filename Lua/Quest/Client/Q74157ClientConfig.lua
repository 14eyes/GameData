local Q74157ClientConfig = {
    MainID = 74157,
    ActorAlias = "74157",
    SubIDs = {q7415704 = 7415704, q7415701 = 7415701, q7415702 = 7415702, q7415703 = 7415703},
    Npcs = {
        Npc21253Data = {
            id = 21253,
            alias = "Npc21253",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21257Data = {
            id = 21257,
            alias = "Npc21257",
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
        },
        Npc21252Data = {
            id = 21252,
            alias = "Npc21252",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narrator_7415701 = {
    narratorId = 7415701,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narrator_7415701.durationList = durationList
datas.Narrator_7415701 = narrator_7415701
Q74157ClientConfig.Datas = datas
return Q74157ClientConfig
