local Q73220ClientConfig = {
    MainID = 73220,
    ActorAlias = "73220",
    SubIDs = {
        q7322001 = 7322001,
        q7322002 = 7322002,
        q7322011 = 7322011,
        q7322003 = 7322003,
        q7322009 = 7322009,
        q7322012 = 7322012,
        q7322010 = 7322010,
        q7322013 = 7322013,
        q7322005 = 7322005,
        q7322014 = 7322014,
        q7322004 = 7322004,
        q7322006 = 7322006,
        q7322017 = 7322017,
        q7322022 = 7322022,
        q7322018 = 7322018,
        q7322015 = 7322015,
        q7322019 = 7322019,
        q7322007 = 7322007,
        q7322016 = 7322016,
        q7322024 = 7322024,
        q7322021 = 7322021,
        q7322020 = 7322020,
        q7322023 = 7322023,
        q7322008 = 7322008
    },
    Npcs = {
        Npc20846Data = {
            id = 20846,
            alias = "Npc20846",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4296Data = {
            id = 4296,
            alias = "Npc4296",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local n_7322001 = {narratorId = 7322001, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
durationList[1] = 4
durationList[2] = n
n_7322001.durationList = durationList
datas.N_7322001 = n_7322001

datas.N_7322002 = {
    narratorId = 7322002,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {4}
}

datas.N7322015_Trans = {732209904}
Q73220ClientConfig.Datas = datas
return Q73220ClientConfig
