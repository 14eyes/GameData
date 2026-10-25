local Q76000ClientConfig = {
    MainID = 76000,
    ActorAlias = "76000",
    SubIDs = {
        q7600001 = 7600001,
        q7600002 = 7600002,
        q7600003 = 7600003,
        q7600004 = 7600004,
        q7600005 = 7600005,
        q7600006 = 7600006,
        q7600007 = 7600007,
        q7600021 = 7600021,
        q7600008 = 7600008,
        q7600009 = 7600009,
        q7600010 = 7600010,
        q7600011 = 7600011,
        q7600012 = 7600012,
        q7600013 = 7600013,
        q7600014 = 7600014,
        q7600015 = 7600015,
        q7600016 = 7600016,
        q7600017 = 7600017
    },
    Npcs = {
        Paimon = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21821 = {
            id = 21821,
            alias = "Npc21821",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21820 = {
            id = 21820,
            alias = "Npc21820",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22102 = {
            id = 22102,
            alias = "Npc22102",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22174 = {
            id = 22174,
            alias = "Npc22174",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21819 = {
            id = 21819,
            alias = "Npc21819",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22101 = {
            id = 22101,
            alias = "Npc22101",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q7600001Trigger_RMD1Point_ = {pos = {x = 3216.676, y = 215.1475, z = 10157.24}, rot = {x = 0, y = 0, z = 0}},
        _Q7600001Trigger_RMD2Point_ = {pos = {x = 3253.034, y = 203.8887, z = 10166.33}, rot = {x = 0, y = 345.9811, z = 0}},
        _Q7600001Trigger_RMD3Point_ = {pos = {x = 3263.137, y = 152.9962, z = 10169.21}, rot = {x = 0, y = 345.2747, z = 0}},
        _Q7600001Trigger_RMD4Point_ = {pos = {x = 3285.935, y = 143.4173, z = 10141.3}, rot = {x = 0, y = 0, z = 0}},
        _Q7600003TriggerPoint_ = {pos = {x = 3315.923, y = 138.5362, z = 10095.1}, rot = {x = 0, y = 0, z = 0}},
        _Q7600004TriggerPoint_ = {pos = {x = 3315.988, y = 133.67, z = 10162.32}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q7600005TriggerPoint_ = {pos = {x = 3316.259, y = 103.5674, z = 10225.75}, rot = {x = 0, y = 0, z = 0}},
        _Q7600005Trigger_RMD1Point_ = {pos = {x = 3315.801, y = 127.7858, z = 10174.03}, rot = {x = 0, y = 0, z = 0}},
        _Q7600012TriggerPoint_ = {pos = {x = 3315.838, y = 93.97, z = 10246.61}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {
    NarratorWithId_760009909_Back = {narratorId = 760009909, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0},
    NarratorWithId_760009910_Submit = {
        narratorId = 760009910,
        tag = "StoryInMainPage",
        startCheckPause = true,
        resumeReminder = 0,
        durationList = {4}
    },
    NarratorWithId_760009902_Down1 = {narratorId = 760009902, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0},
    NarratorWithId_760009901_Out = {
        narratorId = 760009901,
        tag = "StoryInMainPage",
        startCheckPause = true,
        resumeReminder = 0,
        durationList = {5}
    }
}

local narratorWithId_760009904_Block2 = {narratorId = 760009905, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local durationList = {}
local n = 4
durationList[1] = 4
durationList[2] = n
narratorWithId_760009904_Block2.durationList = durationList
datas.NarratorWithId_760009904_Block2 = narratorWithId_760009904_Block2
local narratorWithId_760009907_Down2 = {narratorId = 760009907, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local tbl = {}
local v = 5
tbl[1] = 4
tbl[2] = v
narratorWithId_760009907_Down2.durationList = tbl
datas.NarratorWithId_760009907_Down2 = narratorWithId_760009907_Down2
local narratorWithId_760009903_Block1 = {narratorId = 760009903, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local durationList2 = {}
local n2 = 5
durationList2[1] = 3
durationList2[2] = n2
narratorWithId_760009903_Block1.durationList = durationList2
datas.NarratorWithId_760009903_Block1 = narratorWithId_760009903_Block1
Q76000ClientConfig.Datas = datas
return Q76000ClientConfig
