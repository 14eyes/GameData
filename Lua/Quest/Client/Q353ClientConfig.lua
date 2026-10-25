local Q353ClientConfig = {
    MainID = 353,
    ActorAlias = "353",
    SubIDs = {
        q35301 = 35301,
        q35302 = 35302,
        q35303 = 35303,
        q35304 = 35304,
        q35309 = 35309,
        q35310 = 35310,
        q35311 = 35311,
        q35312 = 35312
    },
    PaimonData = {
        Paimon = "Paimon",
        PaimonScript = "Actor/Quest/Q352/Paimon",
        PaimonID = 1005,
        Pos1 = sceneData:GetDummyPoint(3, "Q353Teach1").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q353Teach1").rot,
        Pos2 = sceneData:GetDummyPoint(3, "Q353Monster1").pos,
        Dir2 = sceneData:GetDummyPoint(3, "Q353Monster1").rot,
        Pos3 = sceneData:GetDummyPoint(3, "Q353Monster2").pos,
        Dir3 = sceneData:GetDummyPoint(3, "Q353Monster2").rot,
        Pos4 = sceneData:GetDummyPoint(3, "Q353PaimonAfterCs").pos,
        Dir4 = sceneData:GetDummyPoint(3, "Q353PaimonAfterCs").rot,
        Pos5 = sceneData:GetDummyPoint(3, "Q353Monster3").pos,
        Dir5 = sceneData:GetDummyPoint(3, "Q353Monster3").rot
    },
    NarratorData = {
        Story1 = {{dialogID = 3530301, audioEvtName = "", duration = 10}},
        Story2 = {{dialogID = 3530401, audioEvtName = "", duration = 6}},
        Story3 = {{dialogID = 3530501, audioEvtName = "", duration = 6}},
        Story4 = {{dialogID = 3530502, audioEvtName = "", duration = 6}},
        Story5 = {
            {dialogID = 3530503, audioEvtName = "", duration = 6},
            {dialogID = 3530504, audioEvtName = "", duration = 6}
        }
    },
    BallData = {
        Ball = "Ball",
        BallID = 2025,
        BallPos = sceneData:GetDummyPoint(3, "Q353Monster3").pos,
        BallDir = sceneData:GetDummyPoint(3, "Q353Monster3").rot
    },
    EffData = {
        Eff = "MengdeEff",
        EffID = 70300051,
        EffPos = sceneData:GetDummyPoint(3, "Q357Gaia1").pos,
        EffDir = sceneData:GetDummyPoint(3, "Q357Gaia1").rot
    },
    MonsterData = {
        Monster = "Monster",
        MonsterID = 20011202,
        Pos1 = sceneData:GetDummyPoint(3, "Q353Monster1").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q353Monster1").rot
    },
    TargetData = {
        Target1 = "Target1",
        Target2 = "Target2",
        Target3 = "Target3",
        TargetID = 70900201,
        Pos1 = sceneData:GetDummyPoint(3, "Q353Monster1").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q353Monster1").rot,
        Pos2 = sceneData:GetDummyPoint(3, "Q353Monster2").pos,
        Dir2 = sceneData:GetDummyPoint(3, "Q353Monster2").rot,
        Pos3 = sceneData:GetDummyPoint(3, "Q353Monster3").pos,
        Dir3 = sceneData:GetDummyPoint(3, "Q353Monster3").rot
    }
}

local interData = {}

local cutscene1 = {
    type = CutsceneType.TIME_LINE_PREFAB,
    roleSheetPath = "",
    castListPath = "Cs_CastList_Paimon",
    resPath = "ART/Cutscene/Cs_MdGoddess_Lite01_CamMove_Convert",
    canSkip = false,
    startPosType = CutsceneInitPosType.FREE
}

local startOffset = {}
local n = 0
local v = 0
startOffset[1] = 0
startOffset[2] = n
startOffset[3] = v
cutscene1.startOffset = startOffset
interData.Cutscene1 = cutscene1
interData.NoReplyInter = {{{type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 3500001}}}
Q353ClientConfig.InterData = interData
return Q353ClientConfig
