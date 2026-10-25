return {
    MainID = 354,
    ActorAlias = "354",
    SubIDs = {q35401 = 35401, q35403 = 35403, q35404 = 35404, q35405 = 35405, q35402 = 35402},
    PaimonData = {
        Paimon = "Paimon",
        PaimonScript = "Actor/Quest/Q352/Paimon",
        PaimonID = 1005,
        Pos1 = sceneData:GetDummyPoint(3, "Q301Hidden").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q301Hidden").rot
    },
    AmborData = {
        Ambor = "Ambor",
        AmborScript = "Actor/Quest/Q301/Ambor301",
        AmborID = 1002,
        Pos1 = sceneData:GetDummyPoint(3, "Q354AmborBorn").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q354AmborBorn").rot,
        Pos2 = sceneData:GetDummyPoint(3, "Q301Hidden").pos,
        Dir2 = sceneData:GetDummyPoint(3, "Q301Hidden").rot,
        Pos3 = sceneData:GetDummyPoint(3, "Q356Ambor2").pos,
        Dir3 = sceneData:GetDummyPoint(3, "Q356Ambor2").rot
    },
    NarratorData = {
        Story1 = {},
        Story2 = {
            {dialogID = 3540217, audioEvtName = "", duration = 4},
            {dialogID = 3540218, audioEvtName = "", duration = 5},
            {dialogID = 3540219, audioEvtName = "", duration = 4},
            {dialogID = 3540220, audioEvtName = "", duration = 3},
            {dialogID = 3540221, audioEvtName = "", duration = 2},
            {dialogID = 3540222, audioEvtName = "", duration = 5},
            {dialogID = 3540223, audioEvtName = "", duration = 3},
            {dialogID = 3540224, audioEvtName = "", duration = 4}
        },
        Story3 = {{dialogID = 3600001, duration = 3}, {dialogID = 3600004, duration = 3}}
    },
    InterData = {
        Cutscene1 = {
            type = CutsceneType.TIME_LINE_PREFAB,
            roleSheetPath = "",
            castListPath = "Cs_CastList_Q354",
            canSkip = false,
            resPath = "ART/Cutscene/Cs_AM_FirstArrive_CutScene2_Convert",
            startPosType = CutsceneInitPosType.FREE,
            startOffset = {x = 0, y = 0, z = 0}
        },
        Cutscene2 = {
            type = CutsceneType.TIME_LINE_PREFAB,
            canSkip = true,
            roleSheetPath = "",
            resPath = "ART/Cutscene/Cs_MDAQ018_MDCityShow_Convert",
            startPosType = CutsceneInitPosType.FREE,
            startOffset = {x = 0, y = 0, z = 0}
        },
        NoReplyInter = {{{type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 3500001}}}
    }
}
