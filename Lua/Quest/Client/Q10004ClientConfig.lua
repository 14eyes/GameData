return {
    MainID = 10004,
    ActorAlias = "10004",
    SubIDs = {
        q1000401 = 1000401,
        q1000404 = 1000404,
        q1000402 = 1000402,
        q1000403 = 1000403,
        q1000405 = 1000405,
        q1000407 = 1000407,
        q1000406 = 1000406
    },
    Npcs = {
        Npc10095 = {
            id = 10095,
            alias = "Npc10095",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        TransmitData1000401 = {
            textMapId = {"QUEST_Black_Clear"},
            useQuestLoadingPage = true,
            prefabPath = "ART/UI/Menus/Dialog/SummerTimeQuestLoadingDialog",
            loadCtxCloseDelay = 1,
            isUseQuestRelatedPoint = false
        },
        NarratorWithId_1000401 = {narratorId = 1000401, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
    }
}
