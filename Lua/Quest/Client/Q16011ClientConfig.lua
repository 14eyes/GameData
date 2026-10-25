return {
    MainID = 16011,
    ActorAlias = "16011",
    SubIDs = {
        q1601101 = 1601101,
        q1601102 = 1601102,
        q1601103 = 1601103,
        q1601105 = 1601105,
        q1601104 = 1601104,
        q1601106 = 1601106,
        q1601107 = 1601107,
        q1601108 = 1601108,
        q1601109 = 1601109,
        q1601110 = 1601110,
        q1601111 = 1601111,
        q1601112 = 1601112
    },
    Npcs = {
        Npc1310_1 = {
            id = 1310,
            alias = "Npc1310_1",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc16279 = {
            id = 16279,
            alias = "Npc16279",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1310 = {
            id = 1310,
            alias = "Npc1310",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q1601105Trigger_2Point_ = {pos = {x = 343.1057, y = 121.7024, z = 550.3555}, rot = {x = 0, y = 234.3256, z = 0}},
        _Q1601111WhiteTalkTriggerPoint_ = {pos = {x = 1897.969, y = 201.452, z = -1273.293}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    },
    Datas = {
        NoBlackData_ForceStop_Dither = {hideUIWhenCamLook = true, hidePlayer = 2, forceWalk = true, delayTime = 1.5, preTriggerIn = false},
        NoBlackData_NoDelay = {hideUIWhenCamLook = true, hidePlayer = 0, forceWalk = false, delayTime = 0, preTriggerIn = false},
        TransmitData_White = {
            textMapId = {"QUEST_Black_Clear"},
            textShowTime = 0,
            showBlackScreen = true,
            useWhiteScreen = true,
            disableTPAudio = true,
            loadCtxCloseDelay = 0,
            isKeepVehicle = false,
            interruptInteract = false
        },
        NarratorWithId_1601103 = {narratorId = 1601103, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1},
        NarratorWithId_1601104 = {narratorId = 1601104, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1},
        NarratorWithId_1601106 = {narratorId = 1601106, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
    }
}
