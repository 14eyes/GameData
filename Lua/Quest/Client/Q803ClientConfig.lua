local Q803ClientConfig = {
    MainID = 803,
    ActorAlias = "803",
    SubIDs = {
        q80301 = 80301,
        q80302 = 80302,
        q80303 = 80303,
        q80304 = 80304,
        q80305 = 80305,
        q80306 = 80306,
        q80307 = 80307,
        q80308 = 80308,
        q80309 = 80309,
        q80310 = 80310,
        q80311 = 80311,
        q80312 = 80312,
        q80313 = 80313,
        q80314 = 80314,
        q80315 = 80315,
        q80316 = 80316,
        q80317 = 80317,
        q80318 = 80318,
        q80319 = 80319,
        q80320 = 80320,
        q80321 = 80321,
        q80322 = 80322,
        q80323 = 80323,
        q80324 = 80324,
        q80325 = 80325,
        q80326 = 80326,
        q80327 = 80327,
        q80328 = 80328,
        q80329 = 80329,
        q80330 = 80330,
        q80331 = 80331,
        q80332 = 80332,
        q80333 = 80333,
        q80334 = 80334,
        q80335 = 80335,
        q80336 = 80336,
        q80337 = 80337,
        q80338 = 80338,
        q80339 = 80339,
        q80340 = 80340,
        q80341 = 80341
    },
    Npcs = {
        AmborData = {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1025Data = {
            id = 1025,
            alias = "Npc1025",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1053Data = {
            id = 1053,
            alias = "Npc1053",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4019Data = {
            id = 4019,
            alias = "Npc4019",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1026Data = {
            id = 1026,
            alias = "Npc1026",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1063Data = {
            id = 1063,
            alias = "Npc1063",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1032Data = {
            id = 1032,
            alias = "Npc1032",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1045Data = {
            id = 1045,
            alias = "Npc1045",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local q80311_NarratorWithId = {narratorId = 80301, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 5
durationList[1] = 5
durationList[2] = n
q80311_NarratorWithId.durationList = durationList
datas.Q80311_NarratorWithId = q80311_NarratorWithId

datas.Q80334_TriggerIn = {
    alias = "Q80334_TriggerIn",
    script = "Actor/Gadget/Q80334_TriggerIn",
    id = 70900002,
    point = sceneData:GetDummyPoint(3, "Npc1525Route1_2")
}

datas.Q80335_RoutePointsData = {
    sceneData:GetDummyPoint(3, "Q371WendyTrigger3").pos,
    sceneData:GetDummyPoint(3, "Q301GaiaFollowFinal").pos,
    sceneData:GetDummyPoint(3, "Q371WendyFootPrint4x1").pos,
    sceneData:GetDummyPoint(3, "Npc1604Route1_5").pos
}

datas.Q80337_TransmitData_WithText = {
    textMapId = {"QUEST_Message_Q7210803"},
    textShowTime = 3,
    showBlackScreen = true,
    useWhiteScreen = false,
    disableTPAudio = false,
    overrideTPAudioEvtName = ""
}

datas.Q80337_TransmitData_WithDialog = {
    dialogId = {8039903},
    textShowTime = 3,
    showBlackScreen = true,
    useWhiteScreen = true,
    disableTPAudio = true,
    overrideTPAudioEvtName = ""
}

datas.Q80337_TransmitData_WithPureBlack = {
    textMapId = {"QUEST_Black_Clear"},
    textShowTime = 0.5,
    showBlackScreen = true,
    useWhiteScreen = false,
    disableTPAudio = false,
    overrideTPAudioEvtName = "Play_ui_feedback_challengeTarget_success"
}

datas.Q80337_TransmitData_Loading = {customTemplateId = 2, disableTPAudio = true, overrideTPAudioEvtName = "", showBlackScreen = true}
local q80337_TransmitData_WithPic_1 = {disableTPAudio = false, overrideTPAudioEvtName = ""}
local picPaths = {}
local str = "ART/UI/Atlas/CutSceneUI/UI_CutScene_40101005A"
local v = "ART/UI/Atlas/CutSceneUI/UI_CutScene_40101004A"
picPaths[1] = "ART/UI/Atlas/CutSceneUI/UI_CutScene_40101006A"
picPaths[2] = str
picPaths[3] = v
q80337_TransmitData_WithPic_1.picPaths = picPaths
local picPathsGirl = {}
local str2 = "ART/UI/Atlas/CutSceneUI/UI_CutScene_40101002A"
local str3 = "ART/UI/Atlas/CutSceneUI/UI_CutScene_40101001A"
picPathsGirl[1] = "ART/UI/Atlas/CutSceneUI/UI_CutScene_40101003A"
picPathsGirl[2] = str2
picPathsGirl[3] = str3
q80337_TransmitData_WithPic_1.picPathsGirl = picPathsGirl
q80337_TransmitData_WithPic_1.picAutoNextInterval = 3
q80337_TransmitData_WithPic_1.canSkipPic = false
q80337_TransmitData_WithPic_1.isPicLoopPlay = false
datas.Q80337_TransmitData_WithPic_1 = q80337_TransmitData_WithPic_1
local q80337_TransmitData_WithPic_2 = {disableTPAudio = false, overrideTPAudioEvtName = ""}
local tbl = {}
local str4 = "ART/UI/Atlas/CutSceneUI/UI_CutScene_40101002A"
local str5 = "ART/UI/Atlas/CutSceneUI/UI_CutScene_40101001A"
tbl[1] = "ART/UI/Atlas/CutSceneUI/UI_CutScene_40101003A"
tbl[2] = str4
tbl[3] = str5
q80337_TransmitData_WithPic_2.picPaths = tbl
local picPathsGirl2 = {}
local str6 = "ART/UI/Atlas/CutSceneUI/UI_CutScene_40101005A"
local str7 = "ART/UI/Atlas/CutSceneUI/UI_CutScene_40101004A"
picPathsGirl2[1] = "ART/UI/Atlas/CutSceneUI/UI_CutScene_40101006A"
picPathsGirl2[2] = str6
picPathsGirl2[3] = str7
q80337_TransmitData_WithPic_2.picPathsGirl = picPathsGirl2
q80337_TransmitData_WithPic_2.picAutoNextInterval = 10
q80337_TransmitData_WithPic_2.canSkipPic = true
q80337_TransmitData_WithPic_2.isPicLoopPlay = true
datas.Q80337_TransmitData_WithPic_2 = q80337_TransmitData_WithPic_2

datas.Q80337_TriggerIn = {
    alias = "Q80337_TriggerIn",
    script = "Actor/Gadget/Q80337_TriggerIn",
    id = 70900002,
    point = sceneData:GetDummyPoint(3, "Q371WendyFootPrint3")
}

datas.DialogsId = {0}

datas.TransmitWithUIAndTextMapData = {
    useQuestLoadingPage = true,
    textMapId = {"QUEST_Black_Clear"},
    prefabPath = "ART/UI/Menus/Dialog/InLevel/InLevelFlashbackDialog",
    loadCtxTag = "test",
    loadCtxCloseDelay = 10
}

datas.Q80339_TriggerIn = {
    alias = "Q80339_TriggerIn",
    script = "Actor/Gadget/Q80339_TriggerIn",
    id = 70900002,
    point = sceneData:GetDummyPoint(20164, "Q302818_N1056")
}

datas.Q80340_TriggerIn = {
    alias = "Q80340_TriggerIn",
    script = "Actor/Gadget/Q80340_TriggerIn",
    id = 70900002,
    point = sceneData:GetDummyPoint(3, "Q357Wind7")
}

datas.TransmitData = {
    textMapId = {"QUEST_Black_Clear"},
    textShowTime = 3,
    showBlackScreen = true,
    useWhiteScreen = false,
    disableTPAudio = false,
    overrideTPAudioEvtName = ""
}

datas.PlayerEnterDungeonData = {
    textMapId = {"QUEST_Black_Clear"},
    useQuestLoadingPage = true,
    useWhiteScreen = false,
    loadCtxTag = "",
    loadCtxCloseDelay = 0
}

local questOrphanNpcPlaceList = {}
local str8 = "330205"
questOrphanNpcPlaceList[1] = "300701"
questOrphanNpcPlaceList[2] = str8
datas.QuestOrphanNpcPlaceList = questOrphanNpcPlaceList
Q803ClientConfig.Datas = datas
return Q803ClientConfig
