local Q73018ClientConfig = {
    MainID = 73018,
    ActorAlias = "73018",
    SubIDs = {
        q7301801 = 7301801,
        q7301802 = 7301802,
        q7301806 = 7301806,
        q7301807 = 7301807,
        q7301828 = 7301828,
        q7301808 = 7301808,
        q7301823 = 7301823,
        q7301809 = 7301809,
        q7301810 = 7301810,
        q7301811 = 7301811,
        q7301813 = 7301813,
        q7301814 = 7301814,
        q7301816 = 7301816,
        q7301817 = 7301817,
        q7301819 = 7301819,
        q7301820 = 7301820,
        q7301821 = 7301821,
        q7301827 = 7301827,
        q7301822 = 7301822,
        q7301826 = 7301826,
        q7301825 = 7301825,
        q7301824 = 7301824,
        q7301818 = 7301818,
        q7301815 = 7301815,
        q7301812 = 7301812,
        q7301805 = 7301805,
        q7301804 = 7301804,
        q7301803 = 7301803
    },
    Npcs = {
        Npc20605Data = {
            id = 20605,
            alias = "Npc20605",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20606Data = {
            id = 20606,
            alias = "Npc20606",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20607Data = {
            id = 20607,
            alias = "Npc20607",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20608Data = {
            id = 20608,
            alias = "Npc20608",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    NarratorTable = {
        {dialogID = 730189901, audioEvtName = "", duration = 4},
        {dialogID = 730189902, audioEvtName = "", duration = 4}
    },
    NarratorTable1 = {
        {dialogID = 730189903, audioEvtName = "", duration = 4},
        {dialogID = 730189904, audioEvtName = "", duration = 4},
        {dialogID = 730189905, audioEvtName = "", duration = 4},
        {dialogID = 730189906, audioEvtName = "", duration = 3}
    },
    NarratorTable2 = {
        {dialogID = 730189907, audioEvtName = "", duration = 3},
        {dialogID = 730189908, audioEvtName = "", duration = 3},
        {dialogID = 730189909, audioEvtName = "", duration = 4}
    },
    NarratorTable3 = {
        {dialogID = 730189910, audioEvtName = "", duration = 3},
        {dialogID = 730189911, audioEvtName = "", duration = 4},
        {dialogID = 730189912, audioEvtName = "", duration = 3}
    },
    NarratorTable4 = {
        {dialogID = 730189913, audioEvtName = "", duration = 3},
        {dialogID = 730189914, audioEvtName = "", duration = 4}
    },
    NarratorTable5 = {
        {dialogID = 730189915, audioEvtName = "", duration = 3},
        {dialogID = 730189916, audioEvtName = "", duration = 3},
        {dialogID = 730189917, audioEvtName = "", duration = 3},
        {dialogID = 730189918, audioEvtName = "", duration = 3},
        {dialogID = 730189919, audioEvtName = "", duration = 3},
        {dialogID = 730189920, audioEvtName = "", duration = 4}
    },
    NarratorTable6 = {
        {dialogID = 730189921, audioEvtName = "", duration = 3},
        {dialogID = 730189922, audioEvtName = "", duration = 3}
    }
}

local narratorWithId = {narratorId = 730189923, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 2
local v = 2
local n2 = 3
local n3 = 2
durationList[1] = 3
durationList[2] = n
durationList[3] = v
durationList[4] = n2
durationList[5] = n3
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
Q73018ClientConfig.Datas = datas
return Q73018ClientConfig
