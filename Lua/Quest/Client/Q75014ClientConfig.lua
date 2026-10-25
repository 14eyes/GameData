local Q75014ClientConfig = {
    MainID = 75014,
    ActorAlias = "75014",
    SubIDs = {
        q7501405 = 7501405,
        q7501404 = 7501404,
        q7501415 = 7501415,
        q7501412 = 7501412,
        q7501406 = 7501406,
        q7501408 = 7501408,
        q7501411 = 7501411,
        q7501409 = 7501409,
        q7501410 = 7501410
    },
    Npcs = {
        Npc6171 = {
            id = 6171,
            alias = "Npc6171",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc6173 = {
            id = 6173,
            alias = "Npc6173",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc6178 = {
            id = 6178,
            alias = "Npc6178",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21608 = {
            id = 21608,
            alias = "Npc21608",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc6168 = {
            id = 6168,
            alias = "Npc6168",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21607 = {
            id = 21607,
            alias = "Npc21607",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc6274 = {
            id = 6274,
            alias = "Npc6274",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc6172 = {
            id = 6172,
            alias = "Npc6172",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21759 = {
            id = 21759,
            alias = "Npc21759",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21758 = {
            id = 21758,
            alias = "Npc21758",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21790 = {
            id = 21790,
            alias = "Npc21790",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Paimon = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc6285 = {
            id = 6285,
            alias = "Npc6285",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Trigger7501405Point_ = {pos = {x = -1392.177, y = 210.1771, z = 9877.849}, rot = {x = 0, y = 0, z = 0}},
        _Trigger750140502Point_ = {pos = {x = -1417.93, y = 208.926, z = 9888.098}, rot = {x = 0, y = 0, z = 0}},
        _Trigger_750140503Point_ = {pos = {x = -1410.003, y = 208.3936, z = 9877.571}, rot = {x = 0, y = 0, z = 0}},
        _Trigger750140504Point_ = {pos = {x = -1406.008, y = 209.1186, z = 9890.512}, rot = {x = 0, y = 0, z = 0}},
        _Trigger7501412Point_ = {pos = {x = -1438.251, y = 203.4765, z = 9940.452}, rot = {x = 0, y = 0, z = 0}},
        _Trigger7501406Point_ = {pos = {x = -1501.75, y = 206.6862, z = 9928.029}, rot = {x = 0, y = 0, z = 0}},
        _Trigger7501407Point_ = {pos = {x = -1565.382, y = 211.0929, z = 9913.313}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {
    NarratorWithId_750140401 = {
        narratorId = 750140401,
        tag = "StoryInMainPage",
        startCheckPause = true,
        resumeReminder = -1,
        durationList = {5}
    }
}

local narratorWithId_7501412 = {narratorId = 7501412, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 5
durationList[1] = 5
durationList[2] = n
narratorWithId_7501412.durationList = durationList
datas.NarratorWithId_7501412 = narratorWithId_7501412
Q75014ClientConfig.Datas = datas
return Q75014ClientConfig
