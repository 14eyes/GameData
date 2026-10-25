return {
    MainID = 8016,
    ActorAlias = "8016",
    SubIDs = {
        q801601 = 801601,
        q801611 = 801611,
        q801602 = 801602,
        q801603 = 801603,
        q801604 = 801604,
        q801605 = 801605,
        q801609 = 801609,
        q801610 = 801610,
        q801606 = 801606,
        q801607 = 801607,
        q801608 = 801608
    },
    Npcs = {
        Npc1091 = {
            id = 1091,
            alias = "Npc1091",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc15205 = {
            id = 15205,
            alias = "Npc15205",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1089 = {
            id = 1089,
            alias = "Npc1089",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1096 = {
            id = 1096,
            alias = "Npc1096",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q801611iggerPoint_ = {pos = {x = -2692.265, y = 280.9983, z = 9924.99}, rot = {x = 0, y = 0, z = 0}},
        _Q801602TalkTriggerPoint_ = {pos = {x = -2697.663, y = 280.9, z = 9928.795}, rot = {x = 0, y = 0, z = 0}},
        _Q801604EnterDungeonPoint_ = {pos = {x = -1767.441, y = 182.33, z = 9851.836}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q801608TriggerOutPoint_ = {pos = {x = -1639.366, y = 200.144, z = 10051.73}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    },
    Datas = {
        PlayerEnterDungeonData = {
            textMapId = {"QUEST_Black_Clear"},
            useQuestLoadingPage = true,
            useWhiteScreen = false,
            loadCtxCloseDelay = 0,
            isUseQuestRelatedPoint = true
        },
        Q801602Kaiche = {narratorId = 801601, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1},
        SceneLookCameraParams = {
            lookPos = {x = -2698.41, y = 283.4, z = 9934.18},
            offsetY = 0,
            duration = 3,
            isForceLook = true,
            isAllowInput = false,
            isRecoverKeepCurrent = false,
            followType = 2,
            followPos = {x = -2688.045, y = 289.8675, z = 9923.563},
            isForceWalk = false,
            isChangePlayMode = false,
            isSetScreenXY = false,
            screenX = 0,
            screenY = 0,
            customRadius = 0,
            disableProtect = 0,
            blendType = 1,
            blendDuration = 0,
            exitDuration = 0
        },
        BlackTransmitData = {
            textMapId = {"QUEST_Black_Clear"},
            textShowTime = 0,
            showBlackScreen = true,
            useWhiteScreen = false,
            disableTPAudio = true,
            loadCtxCloseDelay = 0,
            isKeepVehicle = false
        }
    }
}
