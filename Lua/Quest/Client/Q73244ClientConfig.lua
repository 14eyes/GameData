local Q73244ClientConfig = {
    MainID = 73244,
    ActorAlias = "73244",
    SubIDs = {
        q7324423 = 7324423,
        q7324401 = 7324401,
        q7324402 = 7324402,
        q7324419 = 7324419,
        q7324420 = 7324420,
        q7324403 = 7324403,
        q7324410 = 7324410,
        q7324414 = 7324414,
        q7324406 = 7324406,
        q7324417 = 7324417,
        q7324418 = 7324418,
        q7324411 = 7324411,
        q7324412 = 7324412,
        q7324413 = 7324413,
        q7324422 = 7324422,
        q7324407 = 7324407,
        q7324421 = 7324421,
        q7324408 = 7324408,
        q7324415 = 7324415,
        q7324416 = 7324416,
        q7324404 = 7324404
    },
    Npcs = {
        Npc4296Data = {
            id = 4296,
            alias = "Npc4296",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4395Data = {
            id = 4395,
            alias = "Npc4395",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20928Data = {
            id = 20928,
            alias = "Npc20928",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    R1 = {
        narratorId = 7324406,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {3}
    }
}

local q7324408 = {
    narratorId = 7324407,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 2
durationList[1] = 3
durationList[2] = n
q7324408.durationList = durationList
datas.Q7324408 = q7324408

datas.NarratorWithId = {
    narratorId = 0,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {}
}

Q73244ClientConfig.Datas = datas
return Q73244ClientConfig
