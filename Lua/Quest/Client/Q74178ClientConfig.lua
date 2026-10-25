local Q74178ClientConfig = {
    MainID = 74178,
    ActorAlias = "74178",
    SubIDs = {
        q7417801 = 7417801,
        q7417802 = 7417802,
        q7417803 = 7417803,
        q7417804 = 7417804,
        q7417805 = 7417805,
        q7417806 = 7417806,
        q7417807 = 7417807,
        q7417808 = 7417808,
        q7417809 = 7417809,
        q7417810 = 7417810
    },
    Npcs = {
        Npc21273Data = {
            id = 21273,
            alias = "Npc21273",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21274Data = {
            id = 21274,
            alias = "Npc21274",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21275Data = {
            id = 21275,
            alias = "Npc21275",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21276Data = {
            id = 21276,
            alias = "Npc21276",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5233Data = {
            id = 5233,
            alias = "Npc5233",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5232Data = {
            id = 5232,
            alias = "Npc5232",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narrator_7417801 = {
    narratorId = 7417801,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
local v = 3
local n2 = 3
local n3 = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
durationList[4] = n2
durationList[5] = n3
narrator_7417801.durationList = durationList
datas.Narrator_7417801 = narrator_7417801

datas.Narrator_7417802 = {
    narratorId = 7417802,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {}
}

datas.Narrator_7417803 = {
    narratorId = 7417803,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

datas.Narrator_7417804 = {
    narratorId = 7417804,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {}
}

Q74178ClientConfig.Datas = datas
return Q74178ClientConfig
