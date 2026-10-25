local Q73073ClientConfig = {
    MainID = 73073,
    ActorAlias = "73073",
    SubIDs = {
        q7307301 = 7307301,
        q7307302 = 7307302,
        q7307309 = 7307309,
        q7307303 = 7307303,
        q7307304 = 7307304,
        q7307305 = 7307305,
        q7307306 = 7307306,
        q7307307 = 7307307,
        q7307308 = 7307308,
        q7307310 = 7307310,
        q7307311 = 7307311,
        q7307314 = 7307314,
        q7307312 = 7307312,
        q7307313 = 7307313
    },
    Npcs = {
        Npc20645Data = {
            id = 20645,
            alias = "Npc20645",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4321Data = {
            id = 4321,
            alias = "Npc4321",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20601Data = {
            id = 20601,
            alias = "Npc20601",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4157Data = {
            id = 4157,
            alias = "Npc4157",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narratorWithId = {
    narratorId = 7307302,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
local v = 3
local n2 = 4
durationList[1] = 4
durationList[2] = n
durationList[3] = v
durationList[4] = n2
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
Q73073ClientConfig.Datas = datas
return Q73073ClientConfig
