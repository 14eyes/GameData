return {
    MainID = 7009,
    ActorAlias = "7009",
    SubIDs = {
        q700901 = 700901,
        q700920 = 700920,
        q700902 = 700902,
        q700903 = 700903,
        q700904 = 700904,
        q700905 = 700905,
        q700906 = 700906,
        q700907 = 700907,
        q700922 = 700922,
        q700908 = 700908,
        q700921 = 700921,
        q700909 = 700909,
        q700925 = 700925,
        q700910 = 700910,
        q700923 = 700923,
        q700926 = 700926,
        q700911 = 700911,
        q700912 = 700912,
        q700919 = 700919,
        q700913 = 700913,
        q700916 = 700916,
        q700914 = 700914,
        q700915 = 700915,
        q700918 = 700918,
        q700924 = 700924,
        q700917 = 700917
    },
    Npcs = {
        Npc1333 = {
            id = 1333,
            alias = "Npc1333",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1332 = {
            id = 1332,
            alias = "Npc1332",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc17291 = {
            id = 17291,
            alias = "Npc17291",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc17256 = {
            id = 17256,
            alias = "Npc17256",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc17286 = {
            id = 17286,
            alias = "Npc17286",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1330 = {
            id = 1330,
            alias = "Npc1330",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc16641 = {
            id = 16641,
            alias = "Npc16641",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc17289 = {
            id = 17289,
            alias = "Npc17289",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q700921TransmitPoint_ = {pos = {x = 428.989, y = 308.682, z = 627.594}, rot = {x = 0.0, y = 136.164, z = 0.0}},
        _Q700909TransmitPoint_ = {pos = {x = 645.277, y = 387.517, z = -3369.344}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q7009DungeonKaichePoint_ = {pos = {x = 457.1916, y = 308.6825, z = 599.6151}, rot = {x = 0, y = 0, z = 0}},
        _Q700913TransmitPoint_ = {pos = {x = 502.864, y = 196.298, z = 553.75}, rot = {x = 0.0, y = 141.667, z = 0.0}},
        _Q700915FinishTriggerPoint_ = {pos = {x = 10011.73, y = 397.368, z = 6467.993}, rot = {x = 0.0, y = 207.551, z = 0.0}},
        _Q700924CsTriggerPoint_ = {pos = {x = 10103.34, y = 426.172, z = 6355.63}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    },
    Datas = {
        TransmitDataWithBlack = {
            textMapId = {"QUEST_Black_Clear"},
            textShowTime = 0,
            showBlackScreen = true,
            useWhiteScreen = false,
            disableTPAudio = true,
            loadCtxCloseDelay = 0,
            isKeepVehicle = false,
            interruptInteract = false
        },
        PlayerEnterDungeonData = {
            textMapId = {"UI_INLEVEL_TRANSMIT_SAVING"},
            useQuestLoadingPage = true,
            prefabPath = "ART/UI/Menus/Dialog/InlevelLoading/InLevelLoading_Saving",
            loadCtxCloseDelay = 0,
            isUseQuestRelatedPoint = false
        },
        NoBlackDataNormal = {hideUIWhenCamLook = false, hidePlayer = 0, forceWalk = false, delayTime = 0, preTriggerIn = false},
        Q7009LastKaiche01 = {narratorId = 700906, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0},
        Q7009DungeonKaiche03 = {narratorId = 700903, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0},
        TransmitDataWithDream = {
            textMapId = {"QUEST_Black_Clear"},
            prefabPath = "ART/UI/Menus/Dialog/InlevelLoading/InLevelLoading_QuestChaosDream",
            loadCtxCloseDelay = 0,
            disableTPAudio = true,
            isKeepVehicle = false,
            interruptInteract = false
        }
    }
}
