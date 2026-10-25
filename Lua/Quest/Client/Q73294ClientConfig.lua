local Q73294ClientConfig = {
    MainID = 73294,
    ActorAlias = "73294",
    SubIDs = {
        q7329401 = 7329401,
        q7329404 = 7329404,
        q7329405 = 7329405,
        q7329408 = 7329408,
        q7329406 = 7329406,
        q7329407 = 7329407,
        q7329409 = 7329409,
        q7329410 = 7329410,
        q7329411 = 7329411,
        q7329413 = 7329413,
        q7329412 = 7329412,
        q7329402 = 7329402,
        q7329403 = 7329403
    },
    Npcs = {
        Npc20930Data = {
            id = 20930,
            alias = "Npc20930",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20931Data = {
            id = 20931,
            alias = "Npc20931",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    NarratorWithId1 = {
        narratorId = 7329403,
        pauseLen = 10,
        resumeLen = 5,
        tag = "Story",
        startCheckPause = false,
        durationList = {5}
    },
    NarratorWithId2 = {
        narratorId = 7329402,
        pauseLen = 10,
        resumeLen = 5,
        tag = "Story",
        startCheckPause = false,
        durationList = {5}
    },
    NarratorWithId3 = {
        narratorId = 7329404,
        pauseLen = 10,
        resumeLen = 5,
        tag = "Story",
        startCheckPause = false,
        durationList = {5}
    }
}

local narratorWithId = {narratorId = 7329401, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 5
local v = 5
durationList[1] = 5
durationList[2] = n
durationList[3] = v
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
Q73294ClientConfig.Datas = datas
return Q73294ClientConfig
