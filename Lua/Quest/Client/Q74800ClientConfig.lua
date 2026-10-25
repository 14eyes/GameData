local Q74800ClientConfig = {
    MainID = 74800,
    ActorAlias = "74800",
    SubIDs = {
        q7480001 = 7480001,
        q7480007 = 7480007,
        q7480006 = 7480006,
        q7480003 = 7480003,
        q7480005 = 7480005,
        q7480002 = 7480002,
        q7480004 = 7480004,
        q7480008 = 7480008
    },
    Npcs = {
        Npc5268Data = {
            id = 5268,
            alias = "Npc5268",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5074Data = {
            id = 5074,
            alias = "Npc5074",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5053Data = {
            id = 5053,
            alias = "Npc5053",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5055Data = {
            id = 5055,
            alias = "Npc5055",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5076Data = {
            id = 5076,
            alias = "Npc5076",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narratorWithId = {
    narratorId = 7480001,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
local v = 3
local n2 = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
durationList[4] = n2
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId

datas.NarratorWithId_01 = {
    narratorId = 7480002,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {6}
}

datas.DialogsId = {748009908}
Q74800ClientConfig.Datas = datas
return Q74800ClientConfig
