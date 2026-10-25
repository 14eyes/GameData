local Q23033ClientConfig = {
    MainID = 23033,
    ActorAlias = "23033",
    SubIDs = {
        q2303311 = 2303311,
        q2303301 = 2303301,
        q2303302 = 2303302,
        q2303303 = 2303303,
        q2303304 = 2303304,
        q2303305 = 2303305,
        q2303306 = 2303306,
        q2303307 = 2303307,
        q2303308 = 2303308,
        q2303309 = 2303309,
        q2303310 = 2303310
    },
    Npcs = {
        Npc12717Data = {
            id = 12717,
            alias = "Npc12717",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc13476Data = {
            id = 13476,
            alias = "Npc13476",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1025Data = {
            id = 1025,
            alias = "Npc1025",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1026Data = {
            id = 1026,
            alias = "Npc1026",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Gadgets = {
        Gadget70710787Data = {
            id = 70710787,
            alias = "Gadget70710787",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    NarratorTable = {
        {dialogID = 230339901, audioEvtName = "", duration = 3},
        {dialogID = 230339902, audioEvtName = "", duration = 3}
    }
}

local narratorWithId = {narratorId = 2303399, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
Q23033ClientConfig.Datas = datas
return Q23033ClientConfig
