return {
    MainID = 360,
    ActorAlias = "360",
    SubIDs = {q36001 = 36001, q36003 = 36003, q36004 = 36004, q36005 = 36005},
    AmborData = {
        Ambor = "Ambor",
        AmborScript = "Actor/Quest/Q301/Ambor301",
        AmborID = 1002,
        Pos1 = sceneData:GetDummyPoint(3, "Q360Ambor1").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q360Ambor1").rot,
        Pos2 = sceneData:GetDummyPoint(3, "Q301Hidden").pos,
        Dir2 = sceneData:GetDummyPoint(3, "Q301Hidden").rot,
        Pos3 = sceneData:GetDummyPoint(3, "Q356Ambor2").pos,
        Dir3 = sceneData:GetDummyPoint(3, "Q356Ambor2").rot
    },
    PaimonData = {Paimon = "Paimon", PaimonScript = "Actor/Quest/Q352/Paimon", PaimonID = 1005},
    NarratorData = {
        Story1 = {},
        Story2 = {{dialogID = 3600002, duration = 4}, {dialogID = 3600005, duration = 4}},
        Story3 = {{dialogID = 3600003, duration = 5}}
    },
    InterData = {
        Cutscene1 = {
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
