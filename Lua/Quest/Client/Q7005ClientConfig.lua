return {
    MainID = 7005,
    ActorAlias = "7005",
    SubIDs = {
        q700511 = 700511,
        q700501 = 700501,
        q700502 = 700502,
        q700503 = 700503,
        q700504 = 700504,
        q700505 = 700505,
        q700506 = 700506,
        q700507 = 700507,
        q700508 = 700508,
        q700515 = 700515,
        q700509 = 700509,
        q700510 = 700510,
        q700514 = 700514,
        q700516 = 700516,
        q700512 = 700512,
        q700513 = 700513
    },
    Npcs = {
        Npc16646 = {
            id = 16646,
            alias = "Npc16646",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1331 = {
            id = 1331,
            alias = "Npc1331",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1332 = {
            id = 1332,
            alias = "Npc1332",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1333 = {
            id = 1333,
            alias = "Npc1333",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc16642 = {
            id = 16642,
            alias = "Npc16642",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc16643 = {
            id = 16643,
            alias = "Npc16643",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc16645 = {
            id = 16645,
            alias = "Npc16645",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc16644 = {
            id = 16644,
            alias = "Npc16644",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc16641 = {
            id = 16641,
            alias = "Npc16641",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1335 = {
            id = 1335,
            alias = "Npc1335",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1334 = {
            id = 1334,
            alias = "Npc1334",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc16647 = {
            id = 16647,
            alias = "Npc16647",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q700501EnterDungeonPoint_ = {pos = {x = 9404.252, y = 375.4922, z = 6564.328}, rot = {x = 0, y = 312.1063, z = 0}},
        _Q700502DungeonEntryPoint_ = {pos = {x = 9347.78, y = 378.2109, z = 6501.566}, rot = {x = 0, y = 0, z = 0}},
        _Q7005DreamTransmitPoint_ = {pos = {x = 2.816147, y = -5.311265, z = -407.8195}, rot = {x = 0, y = 0, z = 0}}
    },
    Datas = {
        Q7005NightKaiche = {narratorId = 700501, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0},
        PlayerEnterDungeonData = {
            textMapId = {"UI_INLEVEL_TRANSMIT_SAVING"},
            useQuestLoadingPage = true,
            prefabPath = "ART/UI/Menus/Dialog/InlevelLoading/InLevelLoading_Saving",
            loadCtxCloseDelay = 0,
            isUseQuestRelatedPoint = false
        },
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
