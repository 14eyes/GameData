local Q79060ClientConfig = {
    MainID = 79060,
    ActorAlias = "79060",
    IgnoreDoReturnNpcForDaily = true,
    SubIDs = {
        q7906018 = 7906018,
        q7906024 = 7906024,
        q7906001 = 7906001,
        q7906002 = 7906002,
        q7906028 = 7906028,
        q7906025 = 7906025,
        q7906026 = 7906026,
        q7906027 = 7906027,
        q7906003 = 7906003,
        q7906004 = 7906004,
        q7906005 = 7906005,
        q7906006 = 7906006,
        q7906007 = 7906007,
        q7906008 = 7906008,
        q7906009 = 7906009,
        q7906010 = 7906010,
        q7906022 = 7906022,
        q7906012 = 7906012,
        q7906013 = 7906013,
        q7906029 = 7906029,
        q7906021 = 7906021,
        q7906011 = 7906011,
        q7906023 = 7906023,
        q7906020 = 7906020,
        q7906015 = 7906015,
        q7906014 = 7906014,
        q7906019 = 7906019,
        q7906030 = 7906030,
        q7906016 = 7906016,
        q7906017 = 7906017
    },
    Npcs = {
        Npc21448Data = {
            id = 21448,
            alias = "Npc21448",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21449Data = {
            id = 21449,
            alias = "Npc21449",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21450Data = {
            id = 21450,
            alias = "Npc21450",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21451Data = {
            id = 21451,
            alias = "Npc21451",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21456Data = {
            id = 21456,
            alias = "Npc21456",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21457Data = {
            id = 21457,
            alias = "Npc21457",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21452Data = {
            id = 21452,
            alias = "Npc21452",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21453Data = {
            id = 21453,
            alias = "Npc21453",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21454Data = {
            id = 21454,
            alias = "Npc21454",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    TextmapId = {""},
    NarratorWithIdFindSwordInQuest = {
        narratorId = 790609902,
        tag = "StoryInMainPage",
        startCheckPause = true,
        resumeReminder = 0,
        durationList = {6}
    },
    NarratorWithIdFindSwordNoQuest = {
        narratorId = 790609903,
        tag = "StoryInMainPage",
        startCheckPause = true,
        resumeReminder = 0,
        durationList = {5}
    }
}

local narratorWithIdLighthouse = {narratorId = 790609904, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local durationList = {}
local n = 3
durationList[1] = 4
durationList[2] = n
narratorWithIdLighthouse.durationList = durationList
datas.NarratorWithIdLighthouse = narratorWithIdLighthouse
local narratorWithIdStar = {narratorId = 790609908, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local tbl = {}
local v = 4
tbl[1] = 4
tbl[2] = v
narratorWithIdStar.durationList = tbl
datas.NarratorWithIdStar = narratorWithIdStar
local narratorWithIdWish = {narratorId = 790609914, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local durationList2 = {}
local n2 = 4
durationList2[1] = 4
durationList2[2] = n2
narratorWithIdWish.durationList = durationList2
datas.NarratorWithIdWish = narratorWithIdWish
local narratorWithIdSword1 = {narratorId = 790609910, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local durationList3 = {}
local n3 = 3
durationList3[1] = 4
durationList3[2] = n3
narratorWithIdSword1.durationList = durationList3
datas.NarratorWithIdSword1 = narratorWithIdSword1
local narratorWithIdSword2 = {narratorId = 790609912, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local durationList4 = {}
local n4 = 4
durationList4[1] = 3
durationList4[2] = n4
narratorWithIdSword2.durationList = durationList4
datas.NarratorWithIdSword2 = narratorWithIdSword2
local narratorWithIdFlower = {narratorId = 790609906, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local durationList5 = {}
local n5 = 5
durationList5[1] = 5
durationList5[2] = n5
narratorWithIdFlower.durationList = durationList5
datas.NarratorWithIdFlower = narratorWithIdFlower
Q79060ClientConfig.Datas = datas
return Q79060ClientConfig
