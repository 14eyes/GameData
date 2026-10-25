return {
    MainID = 8018,
    ActorAlias = "8018",
    SubIDs = {
        q801801 = 801801,
        q801815 = 801815,
        q801816 = 801816,
        q801817 = 801817,
        q801802 = 801802,
        q801814 = 801814,
        q801803 = 801803,
        q801809 = 801809,
        q801818 = 801818,
        q801819 = 801819,
        q801820 = 801820,
        q801804 = 801804,
        q801805 = 801805,
        q801806 = 801806,
        q801807 = 801807,
        q801808 = 801808,
        q801810 = 801810,
        q801821 = 801821,
        q801822 = 801822,
        q801811 = 801811,
        q801812 = 801812,
        q801813 = 801813
    },
    Npcs = {
        Npc1091 = {
            id = 1091,
            alias = "Npc1091",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc15204 = {
            id = 15204,
            alias = "Npc15204",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1022 = {
            id = 1022,
            alias = "Npc1022",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc15206 = {
            id = 15206,
            alias = "Npc15206",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1096 = {
            id = 1096,
            alias = "Npc1096",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Paimon = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q801807TransmitPoint_ = {pos = {x = -259.327, y = 289.313, z = 9914.133}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q801808EnterDungeonPoint_ = {pos = {x = -2682.558, y = 242.034, z = 9848.016}, rot = {x = 0.0, y = 145.746, z = 0.0}},
        _Q801808TriggerPoint_ = {pos = {x = -2682.558, y = 242.034, z = 9848.016}, rot = {x = 0.0, y = 145.746, z = 0.0}},
        _Q801811transmitPoint_ = {pos = {x = 393.823, y = 247.378, z = 648.654}, rot = {x = 0.0, y = 156.914, z = 0.0}}
    },
    Datas = {
        PlayerEnterDungeonData = {
            textMapId = {"QUEST_Black_Clear"},
            useQuestLoadingPage = true,
            useWhiteScreen = false,
            loadCtxCloseDelay = 0,
            isUseQuestRelatedPoint = true
        },
        PlayerEnterDungeonData_NoQuest = {
            textMapId = {"QUEST_Black_Clear"},
            useQuestLoadingPage = true,
            useWhiteScreen = false,
            loadCtxCloseDelay = 0,
            isUseQuestRelatedPoint = false
        },
        Q801808Kaiche = {narratorId = 801803, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1},
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
