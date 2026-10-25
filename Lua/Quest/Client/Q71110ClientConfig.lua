local Q71110ClientConfig = {
    MainID = 71110,
    ActorAlias = "71110",
    SubIDs = {
        q7111001 = 7111001,
        q7111003 = 7111003,
        q7111013 = 7111013,
        q7111004 = 7111004,
        q7111005 = 7111005,
        q7111011 = 7111011,
        q7111012 = 7111012,
        q7111006 = 7111006,
        q7111002 = 7111002,
        q7111014 = 7111014,
        q7111007 = 7111007,
        q7111008 = 7111008,
        q7111009 = 7111009,
        q7111010 = 7111010
    },
    Npcs = {
        Npc2472Data = {
            id = 2472,
            alias = "Npc2472",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21222Data = {
            id = 21222,
            alias = "Npc21222",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21223Data = {
            id = 21223,
            alias = "Npc21223",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21224Data = {
            id = 21224,
            alias = "Npc21224",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21406Data = {
            id = 21406,
            alias = "Npc21406",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21407Data = {
            id = 21407,
            alias = "Npc21407",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7111011Trigger = {pos = {x = 1481.301, y = 290.299, z = 1724.61}, rot = {x = 0.0, y = 63.803, z = 0.0}},
        TPos_Q7111005Trigger = {pos = {x = 1854.402, y = 299.995, z = 2181.484}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7111003Trigger = {pos = {x = 1896.0, y = 280.0, z = 1593.0}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7111013Trigger = {pos = {x = 2196.0, y = 286.562, z = 1553.924}, rot = {x = 0.0, y = 87.686, z = 0.0}},
        TPos_Q7111006Trigger = {pos = {x = 1465.016, y = 290.342, z = 1733.146}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7111008Trigger = {pos = {x = 2390.724, y = 353.724, z = 2322.589}, rot = {x = 0.0, y = 249.742, z = 0.0}},
        TPos_Q71110Trigger = {pos = {x = 1465.016, y = 290.342, z = 1733.146}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {}

local narrator_7111005 = {
    narratorId = 7111005,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narrator_7111005.durationList = durationList
datas.Narrator_7111005 = narrator_7111005
local narrator_7111001 = {narratorId = 7111001, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local tbl = {}
local v = 3
tbl[1] = 3
tbl[2] = v
narrator_7111001.durationList = tbl
datas.Narrator_7111001 = narrator_7111001

datas.Narrator_7111002 = {
    narratorId = 7111002,
    tag = "StoryInMainPage",
    startCheckPause = true,
    resumeReminder = -1,
    durationList = {3}
}

local narrator_7111006 = {narratorId = 7111006, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList2 = {}
local n2 = 3
durationList2[1] = 3
durationList2[2] = n2
narrator_7111006.durationList = durationList2
datas.Narrator_7111006 = narrator_7111006
Q71110ClientConfig.Datas = datas
return Q71110ClientConfig
