local Q74165ClientConfig = {
    MainID = 74165,
    ActorAlias = "74165",
    SubIDs = {
        q7416507 = 7416507,
        q7416501 = 7416501,
        q7416508 = 7416508,
        q7416502 = 7416502,
        q7416503 = 7416503,
        q7416504 = 7416504,
        q7416506 = 7416506,
        q7416505 = 7416505
    },
    Npcs = {
        Npc20995Data = {
            id = 20995,
            alias = "Npc20995",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    NarratorWithId1 = {
        narratorId = 7416501,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {3}
    }
}

local narratorWithId2 = {
    narratorId = 7416502,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 4
durationList[2] = n
narratorWithId2.durationList = durationList
datas.NarratorWithId2 = narratorWithId2
datas.TextmapId = {""}
Q74165ClientConfig.Datas = datas
return Q74165ClientConfig
