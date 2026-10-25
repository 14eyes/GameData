local Q71106ClientConfig = {
    MainID = 71106,
    ActorAlias = "71106",
    SubIDs = {
        q7110601 = 7110601,
        q7110603 = 7110603,
        q7110604 = 7110604,
        q7110605 = 7110605,
        q7110602 = 7110602,
        q7110606 = 7110606,
        q7110607 = 7110607,
        q7110608 = 7110608,
        q7110609 = 7110609
    },
    Npcs = {
        Npc2491Data = {
            id = 2491,
            alias = "Npc2491",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2498Data = {
            id = 2498,
            alias = "Npc2498",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7110604Trigger = {pos = {x = 2172.945, y = 299.01, z = 1388.255}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q71106Trigger = {pos = {x = 2268.322, y = 309.933, z = 1769.362}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7110605Trigger = {pos = {x = 2268.322, y = 309.933, z = 1769.362}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7110603Trigger = {pos = {x = 2157.448, y = 303.145, z = 1673.389}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {}

local narrator_711060301 = {
    narratorId = 711060301,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 4
durationList[2] = n
narrator_711060301.durationList = durationList
datas.Narrator_711060301 = narrator_711060301

local narrator_711060501 = {
    narratorId = 711060501,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local v = 3
local n2 = 5
local n3 = 4
tbl[1] = 3
tbl[2] = v
tbl[3] = n2
tbl[4] = n3
narrator_711060501.durationList = tbl
datas.Narrator_711060501 = narrator_711060501

datas.Narrator_711060401 = {
    narratorId = 711060401,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

local narrator_711060302 = {narratorId = 711060302, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local durationList2 = {}
local n4 = 3
durationList2[1] = 3
durationList2[2] = n4
narrator_711060302.durationList = durationList2
datas.Narrator_711060302 = narrator_711060302
local narrator_711060502 = {narratorId = 711060502, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local durationList3 = {}
local n5 = 3
local n6 = 3
durationList3[1] = 3
durationList3[2] = n5
durationList3[3] = n6
narrator_711060502.durationList = durationList3
datas.Narrator_711060502 = narrator_711060502

datas.Narrator_711060402 = {
    narratorId = 711060402,
    tag = "StoryInMainPage",
    startCheckPause = true,
    resumeReminder = 0,
    durationList = {3}
}

Q71106ClientConfig.Datas = datas
return Q71106ClientConfig
