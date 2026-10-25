local Q73295ClientConfig = {
    MainID = 73295,
    ActorAlias = "73295",
    SubIDs = {
        q7329501 = 7329501,
        q7329502 = 7329502,
        q7329510 = 7329510,
        q7329503 = 7329503,
        q7329504 = 7329504,
        q7329505 = 7329505,
        q7329506 = 7329506,
        q7329507 = 7329507,
        q7329508 = 7329508,
        q7329509 = 7329509
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
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q73295Trigger = {pos = {x = 929.2978, y = 205.6396, z = 6170.381}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q73295Trigger1 = {pos = {x = 947.0317, y = 186, z = 6067.31}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q73295Trigger2 = {pos = {x = 929.2978, y = 205.6396, z = 6170.381}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {}
local narratorWithId = {narratorId = 7329505, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 5
durationList[1] = 5
durationList[2] = n
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId

datas.NarratorWithId1 = {
    narratorId = 7329507,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {5}
}

Q73295ClientConfig.Datas = datas
return Q73295ClientConfig
