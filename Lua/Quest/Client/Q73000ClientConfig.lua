local Q73000ClientConfig = {
    MainID = 73000,
    ActorAlias = "73000",
    SubIDs = {
        q7300001 = 7300001,
        q7300002 = 7300002,
        q7300003 = 7300003,
        q7300004 = 7300004,
        q7300016 = 7300016,
        q7300005 = 7300005,
        q7300017 = 7300017,
        q7300006 = 7300006,
        q7300007 = 7300007,
        q7300009 = 7300009,
        q7300010 = 7300010,
        q7300011 = 7300011,
        q7300008 = 7300008,
        q7300020 = 7300020,
        q7300019 = 7300019,
        q7300018 = 7300018,
        q7300015 = 7300015,
        q7300014 = 7300014,
        q7300013 = 7300013,
        q7300012 = 7300012
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
        Npc4157Data = {
            id = 4157,
            alias = "Npc4157",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4321Data = {
            id = 4321,
            alias = "Npc4321",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20600Data = {
            id = 20600,
            alias = "Npc20600",
            script = "Actor/Npc/NpcEnkanomiya",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    NarratorTable1 = {
        {dialogID = 730009902, audioEvtName = "", duration = 3},
        {dialogID = 730009903, audioEvtName = "", duration = 3},
        {dialogID = 730009904, audioEvtName = "", duration = 3}
    },
    NarratorTable2 = {
        {dialogID = 730009905, audioEvtName = "", duration = 3},
        {dialogID = 730009906, audioEvtName = "", duration = 3},
        {dialogID = 730009907, audioEvtName = "", duration = 3}
    },
    NarratorTable3 = {
        {dialogID = 730009908, audioEvtName = "", duration = 3},
        {dialogID = 730009909, audioEvtName = "", duration = 3}
    },
    NarratorTable4 = {
        {dialogID = 730009910, audioEvtName = "", duration = 4},
        {dialogID = 730009911, audioEvtName = "", duration = 4}
    },
    NarratorTable5 = {
        {dialogID = 730009912, audioEvtName = "", duration = 3},
        {dialogID = 730009913, audioEvtName = "", duration = 4}
    },
    NarratorTable6 = {
        {dialogID = 730009914, audioEvtName = "", duration = 3},
        {dialogID = 730009915, audioEvtName = "", duration = 3}
    },
    NarratorTable7 = {
        {dialogID = 730009916, audioEvtName = "", duration = 3},
        {dialogID = 730009917, audioEvtName = "", duration = 3},
        {dialogID = 730009918, audioEvtName = "", duration = 3}
    },
    NarratorWithId = {
        narratorId = 7300001,
        pauseLen = 10,
        resumeLen = 5,
        tag = "Story",
        startCheckPause = false,
        durationList = {4}
    }
}

local narratorWithId2 = {narratorId = 730009919, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 5
local v = 5
local n2 = 3
durationList[1] = 4
durationList[2] = n
durationList[3] = v
durationList[4] = n2
narratorWithId2.durationList = durationList
datas.NarratorWithId2 = narratorWithId2
Q73000ClientConfig.Datas = datas
return Q73000ClientConfig
