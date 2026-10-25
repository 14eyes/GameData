local Q73067ClientConfig = {
    MainID = 73067,
    ActorAlias = "73067",
    SubIDs = {
        q7306701 = 7306701,
        q7306702 = 7306702,
        q7306715 = 7306715,
        q7306703 = 7306703,
        q7306704 = 7306704,
        q7306705 = 7306705,
        q7306714 = 7306714,
        q7306706 = 7306706,
        q7306707 = 7306707,
        q7306713 = 7306713,
        q7306712 = 7306712,
        q7306708 = 7306708,
        q7306709 = 7306709,
        q7306710 = 7306710,
        q7306711 = 7306711
    },
    Npcs = {
        Npc20745Data = {
            id = 20745,
            alias = "Npc20745",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20770Data = {
            id = 20770,
            alias = "Npc20770",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20852Data = {
            id = 20852,
            alias = "Npc20852",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    NarratorTable01 = {
        {dialogID = 730679903, audioEvtName = "", duration = 3},
        {dialogID = 730679902, audioEvtName = "", duration = 3}
    },
    NarratorTable02 = {
        {dialogID = 730679904, audioEvtName = "", duration = 2.5},
        {dialogID = 730679905, audioEvtName = "", duration = 2.5}
    },
    NarratorTable03 = {{dialogID = 730679901, audioEvtName = "", duration = 3}}
}

local narratorWithId01 = {narratorId = 7306701, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narratorWithId01.durationList = durationList
datas.NarratorWithId01 = narratorWithId01
Q73067ClientConfig.Datas = datas
return Q73067ClientConfig
