local Q74073ClientConfig = {
    MainID = 74073,
    ActorAlias = "74073",
    SubIDs = {
        q7407301 = 7407301,
        q7407302 = 7407302,
        q7407307 = 7407307,
        q7407303 = 7407303,
        q7407304 = 7407304,
        q7407306 = 7407306,
        q7407308 = 7407308,
        q7407305 = 7407305,
        q7407309 = 7407309
    },
    Npcs = {
        Npc21125Data = {
            id = 21125,
            alias = "Npc21125",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21314Data = {
            id = 21314,
            alias = "Npc21314",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narratorWithId1 = {
    narratorId = 7407301,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 2
durationList[1] = 3
durationList[2] = n
narratorWithId1.durationList = durationList
datas.NarratorWithId1 = narratorWithId1

datas.NarratorWithId2 = {
    narratorId = 7407302,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

datas.NarratorWithId3 = {
    narratorId = 7407303,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

Q74073ClientConfig.Datas = datas
return Q74073ClientConfig
