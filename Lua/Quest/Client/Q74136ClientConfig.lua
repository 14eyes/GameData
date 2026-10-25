local Q74136ClientConfig = {
    MainID = 74136,
    ActorAlias = "74136",
    SubIDs = {
        q7413612 = 7413612,
        q7413601 = 7413601,
        q7413602 = 7413602,
        q7413603 = 7413603,
        q7413604 = 7413604,
        q7413605 = 7413605,
        q7413606 = 7413606,
        q7413607 = 7413607,
        q7413608 = 7413608,
        q7413609 = 7413609,
        q7413610 = 7413610,
        q7413611 = 7413611
    },
    Npcs = {
        Npc5273Data = {
            id = 5273,
            alias = "Npc5273",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21084Data = {
            id = 21084,
            alias = "Npc21084",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5274Data = {
            id = 5274,
            alias = "Npc5274",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5276Data = {
            id = 5276,
            alias = "Npc5276",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5258Data = {
            id = 5258,
            alias = "Npc5258",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5257Data = {
            id = 5257,
            alias = "Npc5257",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narrator_7413601 = {
    narratorId = 7413601,
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
narrator_7413601.durationList = durationList
datas.Narrator_7413601 = narrator_7413601

local narrator_7413602 = {
    narratorId = 7413602,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local n4 = 3
local n5 = 3
local n6 = 3
local n7 = 3
tbl[1] = 3
tbl[2] = n4
tbl[3] = n5
tbl[4] = n6
tbl[5] = n7
narrator_7413602.durationList = tbl
datas.Narrator_7413602 = narrator_7413602

datas.Narrator_7413603 = {
    narratorId = 7413603,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {}
}

datas.Narrator_7413604 = {
    narratorId = 7413604,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {}
}

Q74136ClientConfig.Datas = datas
return Q74136ClientConfig
