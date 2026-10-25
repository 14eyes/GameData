return {
    MainID = 5034,
    ActorAlias = "5034",
    SubIDs = {
        q503401 = 503401,
        q503407 = 503407,
        q503402 = 503402,
        q503403 = 503403,
        q503408 = 503408,
        q503409 = 503409,
        q503404 = 503404,
        q503405 = 503405,
        q503406 = 503406
    },
    Npcs = {
        Npc1089 = {
            id = 1089,
            alias = "Npc1089",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q03315transmitPoint_ = {pos = {x = -1890.276, y = 55.881, z = 9036.148}, rot = {x = 0.0, y = 49.958, z = 0.0}},
        _Q503401TransmitPoint_ = {pos = {x = -1854.164, y = 119.271, z = 8718.281}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q503408DungeonPoint_ = {pos = {x = -1441.612, y = 159.902, z = 7280.383}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q503409FinishPoint_ = {pos = {x = -1439.399, y = 161.165, z = 7275.543}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q503409DungeonPoint_ = {pos = {x = -1441.612, y = 159.902, z = 7280.383}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q503404KaichePoint_ = {pos = {x = -1435.056, y = 165.4, z = 7250.433}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q5034HuguangChuansongAPoint_ = {pos = {x = -1560.742, y = 104.7733, z = 8009.963}, rot = {x = 0, y = 0, z = 0}},
        _Q5034HuguangChuansongBPoint_ = {pos = {x = -1291.218, y = 280.8764, z = 9865.243}, rot = {x = 0, y = 0, z = 0}},
        _Q5034HuguangkaicheAPoint_ = {pos = {x = -1438.732, y = 154.0128, z = 7317.624}, rot = {x = 0, y = 0, z = 0}},
        _Q5034huguangkaicheCPoint_ = {pos = {x = -918.1293, y = 258.4196, z = 9323.063}, rot = {x = 0, y = 0, z = 0}},
        _Q5034HuguangkaicheYOuliePoint_ = {pos = {x = -2942.199, y = 359.7447, z = 8793.966}, rot = {x = 0, y = 0, z = 0}}
    },
    Datas = {
        TransmitData_NowordNoSound = {
            textMapId = {"QUEST_Black_Clear"},
            textShowTime = 0,
            showBlackScreen = false,
            useWhiteScreen = false,
            disableTPAudio = true
        },
        PlayerEnterDungeonData_NoQuestConfig = {
            textMapId = {"QUEST_Black_Clear"},
            useQuestLoadingPage = false,
            useWhiteScreen = false,
            loadCtxCloseDelay = 0,
            isUseQuestRelatedPoint = false
        },
        huguangkaicheA = {narratorId = 503402, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1},
        HuguangkaicheC = {narratorId = 503403, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1},
        PlayerEnterDungeonData_WithQuestConfig = {
            textMapId = {"QUEST_Black_Clear"},
            useQuestLoadingPage = false,
            useWhiteScreen = false,
            loadCtxCloseDelay = 0,
            isUseQuestRelatedPoint = true
        },
        Luodikaiche = {narratorId = 503401, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1},
        Q5034KaicheB = {narratorId = 503404, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
    }
}
