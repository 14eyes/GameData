local Q73507ClientConfig = {
    MainID = 73507,
    ActorAlias = "73507",
    SubIDs = {
        q7350701 = 7350701,
        q7350706 = 7350706,
        q7350702 = 7350702,
        q7350704 = 7350704,
        q7350703 = 7350703,
        q7350705 = 7350705
    },
    Npcs = {
        Npc30318Data = {
            id = 30318,
            alias = "Npc30318",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc30319Data = {
            id = 30319,
            alias = "Npc30319",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc30320Data = {
            id = 30320,
            alias = "Npc30320",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc30321Data = {
            id = 30321,
            alias = "Npc30321",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narratorWithId = {
    narratorId = 7350701,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
Q73507ClientConfig.Datas = datas
return Q73507ClientConfig
