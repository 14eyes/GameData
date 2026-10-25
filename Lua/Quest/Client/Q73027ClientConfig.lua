local Q73027ClientConfig = {
    MainID = 73027,
    ActorAlias = "73027",
    SubIDs = {
        q7302701 = 7302701,
        q7302702 = 7302702,
        q7302703 = 7302703,
        q7302704 = 7302704,
        q7302705 = 7302705,
        q7302706 = 7302706,
        q7302707 = 7302707,
        q7302708 = 7302708,
        q7302710 = 7302710,
        q7302711 = 7302711,
        q7302712 = 7302712,
        q7302713 = 7302713,
        q7302714 = 7302714,
        q7302709 = 7302709
    },
    Npcs = {
        Npc20645Data = {
            id = 20645,
            alias = "Npc20645",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20601Data = {
            id = 20601,
            alias = "Npc20601",
            script = "Actor/Npc/NpcEnkanomiya",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4185Data = {
            id = 20600,
            alias = "Npc4185",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    NarratorTable2 = {
        {dialogID = 730279905, audioEvtName = "", duration = 3},
        {dialogID = 730279906, audioEvtName = "", duration = 3}
    },
    NarratorTable3 = {
        {dialogID = 730279907, audioEvtName = "", duration = 3},
        {dialogID = 730279908, audioEvtName = "", duration = 3}
    },
    NarratorTable4 = {
        {dialogID = 730279909, audioEvtName = "", duration = 5},
        {dialogID = 730279910, audioEvtName = "", duration = 5},
        {dialogID = 730279911, audioEvtName = "", duration = 5},
        {dialogID = 730279912, audioEvtName = "", duration = 4}
    },
    NarratorTable5 = {
        {dialogID = 730279913, audioEvtName = "", duration = 3},
        {dialogID = 730279914, audioEvtName = "", duration = 3}
    },
    NarratorTable6 = {
        {dialogID = 730279915, audioEvtName = "", duration = 4},
        {dialogID = 730279916, audioEvtName = "", duration = 4}
    }
}

local narratorWithId = {
    narratorId = 730279917,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 4
durationList[1] = 4
durationList[2] = n
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
local narratorWithId2 = {narratorId = 730279919, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local tbl = {}
local v = 4
tbl[1] = 4
tbl[2] = v
narratorWithId2.durationList = tbl
datas.NarratorWithId2 = narratorWithId2
Q73027ClientConfig.Datas = datas
return Q73027ClientConfig
