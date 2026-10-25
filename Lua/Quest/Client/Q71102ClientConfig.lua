local Q71102ClientConfig = {
    MainID = 71102,
    ActorAlias = "71102",
    SubIDs = {
        q7110201 = 7110201,
        q7110202 = 7110202,
        q7110205 = 7110205,
        q7110203 = 7110203,
        q7110204 = 7110204,
        q7110207 = 7110207,
        q7110208 = 7110208,
        q7110212 = 7110212,
        q7110214 = 7110214,
        q7110213 = 7110213,
        q7110215 = 7110215,
        q7110216 = 7110216,
        q7110217 = 7110217
    },
    Npcs = {
        Npc2493Data = {
            id = 2493,
            alias = "Npc2493",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2491Data = {
            id = 2491,
            alias = "Npc2491",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2492Data = {
            id = 2492,
            alias = "Npc2492",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21094Data = {
            id = 21094,
            alias = "Npc21094",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2498Data = {
            id = 2498,
            alias = "Npc2498",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2501Data = {
            id = 2501,
            alias = "Npc2501",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2507Data = {
            id = 2507,
            alias = "Npc2507",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2508Data = {
            id = 2508,
            alias = "Npc2508",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2490Data = {
            id = 2490,
            alias = "Npc2490",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7110203Trigger = {pos = {x = 2107.102, y = 287.778, z = 1529.327}, rot = {x = 0.0, y = 46.001, z = 0.0}},
        TPos_Q7110205Trigger = {pos = {x = 1570.91, y = 15.714, z = 2880.002}, rot = {x = 0.0, y = 127.226, z = 0.0}},
        TPos_Q7110212Trigger = {pos = {x = 2312.964, y = 295.116, z = 1602.476}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7110216Trigger = {pos = {x = 2414.971, y = 343.159, z = 2382.375}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7110218Trigger = {pos = {x = 1961.799, y = 291.219, z = 1460.088}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7110207Trigger = {pos = {x = 2348.262, y = 297.349, z = 1519.519}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7110203Trigger01 = {pos = {x = 1935.08, y = 277.28, z = 1401.888}, rot = {x = 0.0, y = 45.553, z = 0.0}},
        TPos_Q7110202Trigger = {pos = {x = 1573.56, y = 10.358, z = 2897.942}, rot = {x = 0.0, y = 338.844, z = 0.0}},
        TPos_Q7110217Trigger = {pos = {x = 2414.095, y = 343.159, z = 2382.358}, rot = {x = 0.0, y = 48.819, z = 0.0}},
        TPos_Q7110204Trigger = {pos = {x = 2107.102, y = 287.778, z = 1529.327}, rot = {x = 0.0, y = 46.001, z = 0.0}},
        TPos_Q7110208Trigger = {pos = {x = 2355.84, y = 297.349, z = 1519.962}, rot = {x = 0.0, y = 201.449, z = 0.0}}
    }
}

local datas = {
    Narrator_7110202 = {
        narratorId = 7110202,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {5}
    }
}

local narrator_7110203 = {
    narratorId = 7110203,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narrator_7110203.durationList = durationList
datas.Narrator_7110203 = narrator_7110203

datas.Narrator_7110204 = {
    narratorId = 7110204,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {2}
}

local narrator_7110205 = {
    narratorId = 7110205,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local v = 3
tbl[1] = 3
tbl[2] = v
narrator_7110205.durationList = tbl
datas.Narrator_7110205 = narrator_7110205

datas.Narrator_7110206 = {
    narratorId = 7110206,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

datas.Narrator_7110201 = {
    narratorId = 7110201,
    tag = "StoryInMainPage",
    startCheckPause = true,
    resumeReminder = -1,
    durationList = {3}
}

Q71102ClientConfig.Datas = datas
return Q71102ClientConfig
