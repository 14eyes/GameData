return {
    MainID = 74191,
    ActorAlias = "74191",
    IgnoreDoReturnNpcForDaily = true,
    SubIDs = {q7419104 = 7419104, q7419101 = 7419101, q7419102 = 7419102, q7419103 = 7419103},
    Npcs = {
        Npc21355Data = {
            id = 21355,
            alias = "Npc21355",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21462Data = {
            id = 21462,
            alias = "Npc21462",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        TransmitWithUIAndTextMapData = {
            useQuestLoadingPage = true,
            textMapId = {"Quest_Black_Q7419102"},
            prefabPath = "ART/UI/Menus/Dialog/InLevel/InLevelFlashbackDialog",
            loadCtxTag = "7419101",
            loadCtxCloseDelay = 0
        },
        TransmitWithUIAndTextMapData_01 = {
            useQuestLoadingPage = true,
            textMapId = {"Quest_Black_Q7419102"},
            prefabPath = "ART/UI/Menus/Dialog/InLevel/InLevelFlashbackDialog",
            loadCtxTag = "7419101",
            loadCtxCloseDelay = 0
        },
        EnterDungeonWithUIData = {
            useQuestLoadingPage = true,
            textMapId = {"QUEST_Black_Clear"},
            prefabPath = "ART/UI/Menus/Dialog/InLevel/InLevelFlashbackDialog",
            loadCtxTag = "7419101",
            loadCtxCloseDelay = 0
        },
        PlayerEnterDungeonData = {
            textMapId = {"Quest_Black_Q7419101"},
            useQuestLoadingPage = true,
            prefabPath = "ART/UI/Menus/Dialog/InLevel/InLevelFlashbackDialog",
            loadCtxTag = "7419101",
            loadCtxCloseDelay = 15
        }
    }
}
