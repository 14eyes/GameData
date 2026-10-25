return {
    MainID = 6016,
    ActorAlias = "6016",
    SubIDs = {
        q601601 = 601601,
        q601602 = 601602,
        q601603 = 601603,
        q601604 = 601604,
        q601605 = 601605,
        q601606 = 601606,
        q601607 = 601607,
        q601608 = 601608,
        q601609 = 601609,
        q601623 = 601623,
        q601610 = 601610,
        q601611 = 601611,
        q601624 = 601624,
        q601612 = 601612,
        q601632 = 601632,
        q601613 = 601613,
        q601625 = 601625,
        q601614 = 601614,
        q601633 = 601633,
        q601615 = 601615,
        q601616 = 601616,
        q601617 = 601617,
        q601618 = 601618,
        q601628 = 601628,
        q601619 = 601619,
        q601620 = 601620,
        q601629 = 601629,
        q601621 = 601621,
        q601626 = 601626,
        q601627 = 601627,
        q601630 = 601630,
        q601631 = 601631,
        q601622 = 601622
    },
    Npcs = {
        Npc1319 = {
            id = 1319,
            alias = "Npc1319",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1314 = {
            id = 1314,
            alias = "Npc1314",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1316 = {
            id = 1316,
            alias = "Npc1316",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1315 = {
            id = 1315,
            alias = "Npc1315",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1018 = {
            id = 1018,
            alias = "Npc1018",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1320 = {
            id = 1320,
            alias = "Npc1320",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12695 = {
            id = 12695,
            alias = "Npc12695",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc16020 = {
            id = 16020,
            alias = "Npc16020",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q601617CsPoint_ = {pos = {x = 800.021, y = 1199.812, z = 784.112}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q6016BOSSTimelinePoint_ = {pos = {x = 800.2346, y = 1200.124, z = 796.3553}, rot = {x = 0, y = 0, z = 0}}
    },
    Datas = {
        JailKaiche01 = {narratorId = 601601, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0},
        JailKaiche02 = {narratorId = 601602, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0},
        JailKaiche03 = {narratorId = 601603, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0},
        Q6016BossKaiche = {narratorId = 601604, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0},
        NoBlackDataNormal = {
            hideUIWhenCamLook = false,
            hidePlayer = 0,
            forceWalk = false,
            delayTime = 0,
            forbidInput = false,
            preTriggerIn = false
        },
        EnterDungeonWithSaving = {
            textMapId = {"UI_INLEVEL_TRANSMIT_SAVING"},
            useQuestLoadingPage = true,
            prefabPath = "ART/UI/Menus/Dialog/InlevelLoading/InLevelLoading_Saving",
            loadCtxCloseDelay = 0,
            isUseQuestRelatedPoint = false
        },
        TransmitWithBlack = {
            textMapId = {"QUEST_Black_Clear"},
            textShowTime = 0,
            showBlackScreen = true,
            useWhiteScreen = false,
            disableTPAudio = true,
            loadCtxCloseDelay = 0,
            isKeepVehicle = false,
            interruptInteract = false
        },
        Q6016BOSSKaiche02 = {narratorId = 601605, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
    }
}
