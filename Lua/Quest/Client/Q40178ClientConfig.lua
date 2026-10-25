local Q40178ClientConfig = {
    MainID = 40178,
    ActorAlias = "40178",
    SubIDs = {
        q4017801 = 4017801,
        q4017802 = 4017802,
        q4017803 = 4017803,
        q4017806 = 4017806,
        q4017804 = 4017804,
        q4017805 = 4017805,
        q4017809 = 4017809,
        q4017818 = 4017818,
        q4017812 = 4017812,
        q4017813 = 4017813,
        q4017814 = 4017814,
        q4017815 = 4017815,
        q4017816 = 4017816
    },
    Npcs = {
        Npc15102 = {
            id = 15102,
            alias = "Npc15102",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc15103 = {
            id = 15103,
            alias = "Npc15103",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1086 = {
            id = 1086,
            alias = "Npc1086",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc14276 = {
            id = 14276,
            alias = "Npc14276",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1096 = {
            id = 1096,
            alias = "Npc1096",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1088 = {
            id = 1088,
            alias = "Npc1088",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1087 = {
            id = 1087,
            alias = "Npc1087",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc30721 = {
            id = 30721,
            alias = "Npc30721",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc30722 = {
            id = 30722,
            alias = "Npc30722",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc30711 = {
            id = 30711,
            alias = "Npc30711",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc30712 = {
            id = 30712,
            alias = "Npc30712",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1307 = {
            id = 1307,
            alias = "Npc1307",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc6228 = {
            id = 6228,
            alias = "Npc6228",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc6220 = {
            id = 6220,
            alias = "Npc6220",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc6219 = {
            id = 6219,
            alias = "Npc6219",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc15104 = {
            id = 15104,
            alias = "Npc15104",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    NarratorWithId4017803 = {narratorId = 4017801, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1},
    NarratorWithId4017804 = {narratorId = 4017802, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1},
    TransmitData4017812 = {
        dialogId = {401789904},
        textShowTime = 3,
        showBlackScreen = false,
        useWhiteScreen = false,
        disableTPAudio = false,
        loadCtxCloseDelay = 0,
        isKeepVehicle = false
    }
}

local narratorWithId4017814 = {narratorId = 4017803, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 5
durationList[1] = 5
durationList[2] = n
narratorWithId4017814.durationList = durationList
datas.NarratorWithId4017814 = narratorWithId4017814
Q40178ClientConfig.Datas = datas
return Q40178ClientConfig
