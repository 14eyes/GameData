local Q73296ClientConfig = {
    MainID = 73296,
    ActorAlias = "73296",
    SubIDs = {
        q7329601 = 7329601,
        q7329602 = 7329602,
        q7329603 = 7329603,
        q7329604 = 7329604,
        q7329612 = 7329612,
        q7329609 = 7329609,
        q7329605 = 7329605,
        q7329613 = 7329613,
        q7329611 = 7329611,
        q7329607 = 7329607,
        q7329608 = 7329608,
        q7329610 = 7329610,
        q7329606 = 7329606
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
        TPos_Q73296Trigger3 = {pos = {x = 627.93, y = 309.628, z = 5603.26}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q73296Trigger = {pos = {x = 592.8253, y = 309.3244, z = 5908.437}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {}
local narratorWithId = {narratorId = 7329608, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
durationList[1] = 5
durationList[2] = n
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId

datas.NarratorWithId_01 = {
    narratorId = 7329609,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {5}
}

datas.DialogsId = {732969916}
Q73296ClientConfig.Datas = datas
return Q73296ClientConfig
