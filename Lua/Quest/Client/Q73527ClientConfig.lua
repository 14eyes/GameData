local Q73527ClientConfig = {
    MainID = 73527,
    ActorAlias = "73527",
    SubIDs = {q7352701 = 7352701},
    Npcs = {
        Npc30404Data = {
            id = 30404,
            alias = "Npc30404",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q73527Trigger = {pos = {x = 398.663, y = 91.375, z = 445.891}, rot = {x = 0.0, y = 242.6, z = 0.0}}
    }
}

local datas = {}

local narratorWithId = {
    narratorId = 7352701,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 4
local v = 4
durationList[1] = 4
durationList[2] = n
durationList[3] = v
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
Q73527ClientConfig.Datas = datas
return Q73527ClientConfig
