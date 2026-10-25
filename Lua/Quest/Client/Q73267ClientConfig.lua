local Q73267ClientConfig = {
    MainID = 73267,
    ActorAlias = "73267",
    SubIDs = {
        q7326701 = 7326701,
        q7326702 = 7326702,
        q7326703 = 7326703,
        q7326705 = 7326705,
        q7326706 = 7326706,
        q7326707 = 7326707,
        q7326708 = 7326708,
        q7326709 = 7326709,
        q7326710 = 7326710
    },
    Npcs = {
        Npc4408Data = {
            id = 4408,
            alias = "Npc4408",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4407Data = {
            id = 4407,
            alias = "Npc4407",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4403Data = {
            id = 4403,
            alias = "Npc4403",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4410Data = {
            id = 4410,
            alias = "Npc4410",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4411Data = {
            id = 4411,
            alias = "Npc4411",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4320Data = {
            id = 4320,
            alias = "Npc4320",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narrator_7326701 = {
    narratorId = 7326701,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narrator_7326701.durationList = durationList
datas.Narrator_7326701 = narrator_7326701

local narrator_7326702 = {
    narratorId = 7326702,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local v = 2
tbl[1] = 2
tbl[2] = v
narrator_7326702.durationList = tbl
datas.Narrator_7326702 = narrator_7326702
Q73267ClientConfig.Datas = datas
return Q73267ClientConfig
