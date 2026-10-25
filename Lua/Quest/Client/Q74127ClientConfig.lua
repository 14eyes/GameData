local Q74127ClientConfig = {
    MainID = 74127,
    ActorAlias = "74127",
    SubIDs = {
        q7412701 = 7412701,
        q7412706 = 7412706,
        q7412707 = 7412707,
        q7412702 = 7412702,
        q7412703 = 7412703,
        q7412708 = 7412708,
        q7412709 = 7412709,
        q7412704 = 7412704,
        q7412705 = 7412705
    },
    Npcs = {
        Npc5084Data = {
            id = 5084,
            alias = "Npc5084",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5258Data = {
            id = 5258,
            alias = "Npc5258",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5253Data = {
            id = 5253,
            alias = "Npc5253",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5257Data = {
            id = 5257,
            alias = "Npc5257",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7412706Trigger = {pos = {x = 4471.245, y = 541.043, z = 3850.033}, rot = {x = 0.0, y = 281.4, z = 0.0}},
        TPos_Q7412701Trigger = {pos = {x = 4756.696, y = 530.403, z = 4283.513}, rot = {x = 0.0, y = 289.17, z = 0.0}}
    }
}

local datas = {}

local narratorWithId7412706 = {
    narratorId = 7412701,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
local v = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
narratorWithId7412706.durationList = durationList
datas.NarratorWithId7412706 = narratorWithId7412706
Q74127ClientConfig.Datas = datas
return Q74127ClientConfig
