local Q23007ClientConfig = {
    MainID = 23007,
    ActorAlias = "23007",
    SubIDs = {
        q2300701 = 2300701,
        q2300702 = 2300702,
        q2300703 = 2300703,
        q2300704 = 2300704,
        q2300705 = 2300705,
        q2300706 = 2300706,
        q2300707 = 2300707,
        q2300708 = 2300708,
        q2300709 = 2300709
    },
    Npcs = {
        Npc4016Data = {
            id = 4016,
            alias = "Npc4016",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    NarratorTableQ2300703finish = {
        {dialogID = 230079903, audioEvtName = "", duration = 3},
        {dialogID = 230079904, audioEvtName = "", duration = 3}
    },
    NarratorTableQ2300705finish = {
        {dialogID = 230079906, audioEvtName = "", duration = 3},
        {dialogID = 230079907, audioEvtName = "", duration = 3}
    },
    NarratorTableQ2300707finish = {
        {dialogID = 230079910, audioEvtName = "", duration = 3},
        {dialogID = 230079911, audioEvtName = "", duration = 3}
    }
}

local narratorWithId2300703 = {narratorId = 2300703, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narratorWithId2300703.durationList = durationList
datas.NarratorWithId2300703 = narratorWithId2300703

datas.NarratorWithId2300705 = {
    narratorId = 2300705,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

local narratorWithId2300707 = {narratorId = 2300707, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local tbl = {}
local v = 3
tbl[1] = 3
tbl[2] = v
narratorWithId2300707.durationList = tbl
datas.NarratorWithId2300707 = narratorWithId2300707
Q23007ClientConfig.Datas = datas
return Q23007ClientConfig
