local Q74028ClientConfig = {
    MainID = 74028,
    ActorAlias = "74028",
    SubIDs = {q7402807 = 7402807, q7402801 = 7402801, q7402802 = 7402802, q7402809 = 7402809, q7402803 = 7402803},
    Npcs = {
        Npc21033Data = {
            id = 21033,
            alias = "Npc21033",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21034Data = {
            id = 21034,
            alias = "Npc21034",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21048Data = {
            id = 21048,
            alias = "Npc21048",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21172Data = {
            id = 21172,
            alias = "Npc21172",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20973Data = {
            id = 20973,
            alias = "Npc20973",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20980Data = {
            id = 20980,
            alias = "Npc20980",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20981Data = {
            id = 20981,
            alias = "Npc20981",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7402801Trigger = {pos = {x = 3934.417, y = 565.988, z = 5016.085}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7402804Trigger = {pos = {x = 3213.82, y = 253.414, z = 4176.43}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7402805Trigger = {pos = {x = 220.089, y = -21.299, z = 200.103}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {}

local runout = {
    narratorId = 740280001,
    pauseLen = 5,
    resumeLen = 3,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 5
local v = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
runout.durationList = durationList
datas.Runout = runout
datas.DialogsId = {740280003}

datas.FindPartner = {
    narratorId = 740280005,
    pauseLen = 5,
    resumeLen = 3,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

Q74028ClientConfig.Datas = datas
return Q74028ClientConfig
