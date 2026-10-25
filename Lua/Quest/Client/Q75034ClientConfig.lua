local Q75034ClientConfig = {
    MainID = 75034,
    ActorAlias = "75034",
    SubIDs = {
        q7503401 = 7503401,
        q7503402 = 7503402,
        q7503404 = 7503404,
        q7503440 = 7503440,
        q7503430 = 7503430,
        q7503403 = 7503403,
        q7503405 = 7503405,
        q7503406 = 7503406,
        q7503407 = 7503407,
        q7503408 = 7503408,
        q7503409 = 7503409,
        q7503439 = 7503439,
        q7503431 = 7503431,
        q7503410 = 7503410,
        q7503411 = 7503411,
        q7503432 = 7503432,
        q7503441 = 7503441,
        q7503433 = 7503433,
        q7503412 = 7503412,
        q7503413 = 7503413,
        q7503415 = 7503415,
        q7503416 = 7503416,
        q7503442 = 7503442,
        q7503434 = 7503434,
        q7503417 = 7503417,
        q7503418 = 7503418,
        q7503419 = 7503419,
        q7503420 = 7503420,
        q7503443 = 7503443,
        q7503421 = 7503421,
        q7503422 = 7503422,
        q7503435 = 7503435,
        q7503436 = 7503436,
        q7503437 = 7503437,
        q7503438 = 7503438,
        q7503423 = 7503423,
        q7503424 = 7503424,
        q7503425 = 7503425,
        q7503426 = 7503426,
        q7503427 = 7503427,
        q7503429 = 7503429,
        q7503428 = 7503428,
        q7503414 = 7503414
    },
    Npcs = {
        Npc21581Data = {
            id = 21581,
            alias = "Npc21581",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21582Data = {
            id = 21582,
            alias = "Npc21582",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21571Data = {
            id = 21571,
            alias = "Npc21571",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21570Data = {
            id = 21570,
            alias = "Npc21570",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21573Data = {
            id = 21573,
            alias = "Npc21573",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21574Data = {
            id = 21574,
            alias = "Npc21574",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21572Data = {
            id = 21572,
            alias = "Npc21572",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21575Data = {
            id = 21575,
            alias = "Npc21575",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21577Data = {
            id = 21577,
            alias = "Npc21577",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21576Data = {
            id = 21576,
            alias = "Npc21576",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21578Data = {
            id = 21578,
            alias = "Npc21578",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    TransmitData = {
        textMapId = {"QUEST_Black_Clear"},
        textShowTime = 3,
        showBlackScreen = true,
        useWhiteScreen = false,
        disableTPAudio = false,
        overrideTPAudioEvtName = ""
    },
    TransmitData_01 = {
        textMapId = {"QUEST_Black_Clear"},
        textShowTime = 1,
        showBlackScreen = true,
        useWhiteScreen = false,
        disableTPAudio = false,
        overrideTPAudioEvtName = "",
        loadCtxTag = "",
        loadCtxCloseDelay = 0
    },
    N7503401 = {
        narratorId = 7503401,
        tag = "StoryInMainPage",
        startCheckPause = true,
        resumeReminder = -1,
        durationList = {3}
    },
    N7503402 = {
        narratorId = 7503402,
        tag = "StoryInMainPage",
        startCheckPause = true,
        resumeReminder = -1,
        durationList = {4}
    },
    DialogsId_T1 = {750349801}
}

local n3 = {narratorId = 7503403, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 3
durationList[1] = 4
durationList[2] = n
n3.durationList = durationList
datas.N3 = n3
datas.TranID_2 = {750342784}
Q75034ClientConfig.Datas = datas
return Q75034ClientConfig
