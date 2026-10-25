return {
    MainID = 3036,
    ActorAlias = "3036",
    SubIDs = {
        q303601 = 303601,
        q303602 = 303602,
        q303603 = 303603,
        q303604 = 303604,
        q303607 = 303607,
        q303611 = 303611,
        q303614 = 303614,
        q303615 = 303615,
        q303605 = 303605,
        q303606 = 303606,
        q303616 = 303616,
        q303608 = 303608,
        q303609 = 303609,
        q303610 = 303610,
        q303612 = 303612,
        q303613 = 303613,
        q303617 = 303617
    },
    Npcs = {
        Npc16565 = {
            id = 16565,
            alias = "Npc16565",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q303602_TriggerInPoint_ = {pos = {x = -2393.242, y = 267.285, z = 4187.466}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q3036_Retrun01Point_ = {pos = {x = 533.4568, y = 66.98614, z = 501.4749}, rot = {x = 0, y = 0, z = 0}},
        _Q3036_Retrun02Point_ = {pos = {x = 642.176, y = 70.55454, z = 500.8161}, rot = {x = 0, y = 0, z = 0}},
        _Q303614_TriggerInPoint_ = {pos = {x = 543.1387, y = 80.53416, z = 501.4327}, rot = {x = 0, y = 0, z = 0}},
        _Q303614_TriggerIn02Point_ = {pos = {x = -2374.102, y = 18.40351, z = 5568.463}, rot = {x = 0, y = 0, z = 0}},
        _Q303614_TriggerIn03Point_ = {pos = {x = -2446.557, y = 21.59208, z = 5568.478}, rot = {x = 0, y = 90, z = 0}},
        _Q303614_TriggerInFinishPoint_ = {pos = {x = -2345.552, y = -264.528, z = 5578.369}, rot = {x = 0.0, y = 180.277, z = 0.0}},
        _Q303606_TriggerInPoint_ = {pos = {x = -2345.423, y = -268.655, z = 5552.462}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    },
    Datas = {
        NarratorWithId_Q303601 = {narratorId = 303601, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1},
        TransmitData_Q303614 = {
            textMapId = {"QUEST_Black_Clear"},
            textShowTime = 0,
            showBlackScreen = true,
            useWhiteScreen = false,
            disableTPAudio = false,
            loadCtxCloseDelay = 0,
            isKeepVehicle = false,
            interruptInteract = false
        },
        PlayerEnterDungeonData_Q303602 = {
            textMapId = {"QUEST_Black_Clear"},
            useQuestLoadingPage = true,
            useWhiteScreen = false,
            loadCtxCloseDelay = 0,
            isUseQuestRelatedPoint = false
        },
        PlayerEnterDungeonData_Q303614 = {
            textMapId = {"QUEST_Black_Clear"},
            useQuestLoadingPage = true,
            prefabPath = "ART/UI/Menus/Dialog/InlevelLoading/SumeruBattleLoading",
            loadCtxTag = "SumeruBattleLoading_p4",
            loadCtxCloseDelay = 0,
            isUseQuestRelatedPoint = false
        },
        NarratorWithId_Q303614 = {narratorId = 303602, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1},
        TransmitData_Retrun01 = {
            textMapId = {"QUEST_Black_Clear"},
            textShowTime = 0,
            showBlackScreen = true,
            useWhiteScreen = false,
            disableTPAudio = false,
            loadCtxCloseDelay = 0,
            isKeepVehicle = false,
            interruptInteract = false
        }
    }
}
