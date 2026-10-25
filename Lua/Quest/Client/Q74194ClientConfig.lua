return {
    MainID = 74194,
    ActorAlias = "74194",
    IgnoreDoReturnNpcForDaily = true,
    SubIDs = {
        q7419401 = 7419401,
        q7419402 = 7419402,
        q7419403 = 7419403,
        q7419404 = 7419404,
        q7419412 = 7419412,
        q7419405 = 7419405,
        q7419406 = 7419406,
        q7419421 = 7419421,
        q7419407 = 7419407,
        q7419422 = 7419422,
        q7419413 = 7419413,
        q7419408 = 7419408,
        q7419409 = 7419409,
        q7419418 = 7419418,
        q7419419 = 7419419,
        q7419414 = 7419414,
        q7419415 = 7419415,
        q7419416 = 7419416,
        q7419417 = 7419417,
        q7419410 = 7419410,
        q7419411 = 7419411
    },
    Npcs = {
        Npc21354Data = {
            id = 21354,
            alias = "Npc21354",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21430Data = {
            id = 21430,
            alias = "Npc21430",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1400Data = {
            id = 1400,
            alias = "Npc1400",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21347Data = {
            id = 21347,
            alias = "Npc21347",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21461Data = {
            id = 21461,
            alias = "Npc21461",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21394Data = {
            id = 21394,
            alias = "Npc21394",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21398Data = {
            id = 21398,
            alias = "Npc21398",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21399Data = {
            id = 21399,
            alias = "Npc21399",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21400Data = {
            id = 21400,
            alias = "Npc21400",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21401Data = {
            id = 21401,
            alias = "Npc21401",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21402Data = {
            id = 21402,
            alias = "Npc21402",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7419401Trigger = {pos = {x = 1435.889, y = 217.638, z = 3968.401}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7419403Trigger = {pos = {x = 1565.99, y = 346.44, z = 3652.212}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7419417Trigger = {pos = {x = 1487.403, y = 243.03, z = 3918.531}, rot = {x = 358.703, y = 249.73, z = 0.122}}
    },
    Datas = {
        TextmapId = {"QUEST_Message_Q7419412"},
        TextmapId_01 = {"QUEST_Message_Q7419413"},
        Narrator_741949901 = {
            narratorId = 741949901,
            pauseLen = 10,
            resumeLen = 5,
            tag = "StoryInMainPage",
            startCheckPause = false
        },
        TextmapId_02 = {"QUEST_Message_Q7420605"},
        TextmapId_03 = {"QUEST_Message_Q7420607"},
        TextmapId_04 = {""},
        Q7419405_TriggerIn = {
            alias = "Q7419405Trigger",
            script = "Actor/Gadget/Q7419405Trigger",
            id = 70900002,
            point = {pos = {x = 1529.031, y = -494.1312, z = 3566.53}, rot = {x = 0, y = 0, z = 0}}
        },
        PlayerEnterDungeonData_14 = {
            textMapId = {"QUEST_Message_Q7420605"},
            useQuestLoadingPage = true,
            prefabPath = "ART/UI/Menus/Dialog/InLevel/InLevelFlashbackDialog",
            loadCtxTag = "7419414",
            loadCtxCloseDelay = 15
        },
        PlayerEnterDungeonData_12 = {textMapId = {""}, useWhiteScreen = false, loadCtxTag = "7419412", loadCtxCloseDelay = 15},
        TransmitData_16 = {
            textMapId = {"QUEST_Message_Q7420607"},
            useQuestLoadingPage = true,
            prefabPath = "ART/UI/Menus/Dialog/InLevel/InLevelFlashbackDialog",
            loadCtxTag = "7419416",
            loadCtxCloseDelay = 15
        }
    }
}
