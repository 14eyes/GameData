local Q464ClientConfig = {
    MainID = 464,
    ActorAlias = "464",
    SubIDs = {
        q46400 = 46400,
        q46401 = 46401,
        q46402 = 46402,
        q46403 = 46403,
        q46404 = 46404,
        q46407 = 46407,
        q46408 = 46408,
        q46409 = 46409
    },
    PaimonData = {
        Paimon = "Paimon",
        PaimonScript = "Actor/Quest/Q352/Paimon",
        PaimonID = 1005,
        Pos = sceneData:GetDummyPoint(3, "Q464Paimon1").pos,
        Dir = sceneData:GetDummyPoint(3, "Q464Paimon1").rot,
        hiddenPos = sceneData:GetDummyPoint(3, "Q301Hidden").pos,
        hiddenDir = sceneData:GetDummyPoint(3, "Q301Hidden").rot
    },
    DilucData = {
        Diluc = "Diluc",
        DilucScript = "Actor/Quest/Q376/Diluc",
        DilucID = 1009,
        Pos1 = sceneData:GetDummyPoint(3, "Q464Diluc1").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q464Diluc1").rot,
        Pos2 = sceneData:GetDummyPoint(3, "Q464Diluc2").pos,
        Dir2 = sceneData:GetDummyPoint(3, "Q464Diluc2").rot,
        hiddenPos = sceneData:GetDummyPoint(3, "Q301Hidden").pos,
        hiddenDir = sceneData:GetDummyPoint(3, "Q301Hidden").rot
    },
    HoffmanData = {
        Hoffman = "Hoffman",
        HoffmanScript = "Actor/Npc/TempNPC",
        HoffmanID = 1218,
        Pos1 = sceneData:GetDummyPoint(3, "Q464Hoffman1").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q464Hoffman1").rot,
        Pos2 = sceneData:GetDummyPoint(3, "Q464Hoffman2").pos,
        Dir2 = sceneData:GetDummyPoint(3, "Q464Hoffman2").rot,
        Pos3 = sceneData:GetDummyPoint(3, "Q465Hoffman2").pos,
        Dir3 = sceneData:GetDummyPoint(3, "Q465Hoffman2").rot,
        hiddenPos = sceneData:GetDummyPoint(3, "Q301Hidden").pos,
        hiddenDir = sceneData:GetDummyPoint(3, "Q301Hidden").rot
    },
    QQ1Data = {
        QQ1 = "QQ1",
        QQ1Script = "Actor/Quest/Q410/Qiuqiu",
        QQ1ID = 1505,
        QQ1Pos1 = sceneData:GetDummyPoint(3, "Q464Monster6").pos,
        QQ1Dir1 = sceneData:GetDummyPoint(3, "Q464Monster6").rot,
        QQ1Pos2 = sceneData:GetDummyPoint(3, "Q464Monster1").pos,
        QQ1Dir2 = sceneData:GetDummyPoint(3, "Q464Monster1").rot,
        hiddenPos = sceneData:GetDummyPoint(3, "Q301Hidden").pos,
        hiddenDir = sceneData:GetDummyPoint(3, "Q301Hidden").rot
    },
    QQ2Data = {
        QQ2 = "QQ2",
        QQ2Script = "Actor/Quest/Q410/Qiuqiu",
        QQ2ID = 1506,
        QQ2Pos1 = sceneData:GetDummyPoint(3, "Q464Monster5").pos,
        QQ2Dir1 = sceneData:GetDummyPoint(3, "Q464Monster5").rot,
        QQ2Pos2 = sceneData:GetDummyPoint(3, "Q464Monster2").pos,
        QQ2Dir2 = sceneData:GetDummyPoint(3, "Q464Monster2").rot,
        hiddenPos = sceneData:GetDummyPoint(3, "Q301Hidden").pos,
        hiddenDir = sceneData:GetDummyPoint(3, "Q301Hidden").rot
    },
    QQ3Data = {
        QQ3 = "QQ3",
        QQ3Script = "Actor/Quest/Q410/Qiuqiu",
        QQ3ID = 1507,
        QQ3Pos1 = sceneData:GetDummyPoint(3, "Q464Monster4").pos,
        QQ3Dir1 = sceneData:GetDummyPoint(3, "Q464Monster4").rot,
        QQ3Pos2 = sceneData:GetDummyPoint(3, "Q464Monster3").pos,
        QQ3Dir2 = sceneData:GetDummyPoint(3, "Q464Monster3").rot,
        hiddenPos = sceneData:GetDummyPoint(3, "Q301Hidden").pos,
        hiddenDir = sceneData:GetDummyPoint(3, "Q301Hidden").rot
    },
    NarratorData = {
        Story1 = {{dialogID = 4640001, audioEvtName = "", duration = 8}},
        Story2 = {
            {dialogID = 3500201, audioEvtName = "", duration = 3},
            {dialogID = 4650001, audioEvtName = "", duration = 5},
            {dialogID = 4650002, audioEvtName = "", duration = 3}
        },
        CutsceneTemp = {{dialogID = 4640002, audioEvtName = "", duration = 6}}
    }
}

local interData = {}

local cutscene1 = {
    type = CutsceneType.TIME_LINE_PREFAB,
    canSkip = true,
    resPath = "ART/Cutscene/Cs_DLCLQ001_DLCbattle_Convert",
    startPosType = CutsceneInitPosType.FREE
}

local startOffset = {}
local n = 0
local v = 0
startOffset[1] = 0
startOffset[2] = n
startOffset[3] = v
cutscene1.startOffset = startOffset
cutscene1.keepCamera = false
cutscene1.syncLoad = true
cutscene1.fadeInDuration = 0.0
interData.Cutscene1 = cutscene1
interData.NoReplyInter = {{{type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 3500001}}}
Q464ClientConfig.InterData = interData
return Q464ClientConfig
