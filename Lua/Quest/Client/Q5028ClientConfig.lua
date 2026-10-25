return {
    MainID = 5028,
    ActorAlias = "5028",
    SubIDs = {
        q502821 = 502821,
        q502822 = 502822,
        q502801 = 502801,
        q502802 = 502802,
        q502803 = 502803,
        q502812 = 502812,
        q502804 = 502804,
        q502823 = 502823,
        q502805 = 502805,
        q502806 = 502806,
        q502807 = 502807,
        q502808 = 502808,
        q502809 = 502809,
        q502810 = 502810,
        q502811 = 502811
    },
    Npcs = {
        Npc14770 = {
            id = 14770,
            alias = "Npc14770",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc14762 = {
            id = 14762,
            alias = "Npc14762",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1089 = {
            id = 1089,
            alias = "Npc1089",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc6028 = {
            id = 6028,
            alias = "Npc6028",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1025 = {
            id = 1025,
            alias = "Npc1025",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1026 = {
            id = 1026,
            alias = "Npc1026",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q502821TriggerPoint_ = {pos = {x = 143.8768, y = 359.1931, z = 648.7862}, rot = {x = 0, y = 0, z = 0}},
        _Q502822TriggerPoint_ = {pos = {x = -1906.578, y = 52.873, z = 9066.425}, rot = {x = 0.0, y = 10.093, z = 0.0}},
        _Q502802TriggerPoint_ = {pos = {x = 895, y = 441, z = 457}, rot = {x = 0, y = 0, z = 0}},
        _Q502803TriggerPoint_ = {pos = {x = -3103.474, y = 1.792297, z = 508.3782}, rot = {x = 0, y = 0, z = 0}},
        _Q502803Trigger_TPoint_ = {pos = {x = 728.2493, y = 290.7175, z = 627.2513}, rot = {x = 0, y = 0, z = 0}},
        _Q502823Trigger_TPoint_ = {pos = {x = -3103.487, y = 1.798325, z = 509.6128}, rot = {x = 0, y = 0, z = 0}},
        _Q502807TriggerPoint_ = {pos = {x = -4595.431, y = -390.9258, z = 504.5787}, rot = {x = 0, y = 0, z = 0}},
        _Q502801TriggerPoint_ = {pos = {x = -3104.737, y = 1.792297, z = 508.5358}, rot = {x = 0, y = 0, z = 0}},
        _Q502808TriggerPoint_ = {pos = {x = -4606.82, y = -390.9263, z = 505.6924}, rot = {x = 0, y = 0, z = 0}},
        _Q502810TriggerPoint_ = {pos = {x = -3103.474, y = 1.792297, z = 508.3782}, rot = {x = 0, y = 0, z = 0}},
        _Q502811TriggerPoint_ = {pos = {x = -3103.474, y = 1.792297, z = 508.3782}, rot = {x = 0, y = 0, z = 0}}
    },
    Datas = {
        Narrator502801 = {narratorId = 502801, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1},
        TransmitDatafire02 = {
            textMapId = {"QUEST_Black_Clear"},
            prefabPath = "ART/UI/Menus/Dialog/InLevel/InLevelLoading_AQ502801",
            loadCtxCloseDelay = 0
        },
        Narrator502802 = {narratorId = 502802, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1},
        PlayerEnterDungeonData = {
            textMapId = {"QUEST_Black_Clear"},
            useQuestLoadingPage = true,
            useWhiteScreen = false,
            loadCtxCloseDelay = 0,
            isUseQuestRelatedPoint = false
        },
        TransmitDatablack = {
            textMapId = {"QUEST_Black_Clear"},
            textShowTime = 0,
            showBlackScreen = false,
            useWhiteScreen = false,
            disableTPAudio = true
        },
        TransmitDatafire = {
            textMapId = {"QUEST_Black_Clear"},
            prefabPath = "ART/UI/Menus/Dialog/InLevel/InLevelLoading_AQ502802",
            loadCtxCloseDelay = 3
        }
    }
}
