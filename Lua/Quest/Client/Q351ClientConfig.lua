local Q351ClientConfig = {
    MainID = 351,
    ActorAlias = "351",
    SubIDs = {
        q35100 = 35100,
        q35101 = 35101,
        q35102 = 35102,
        q35103 = 35103,
        q35104 = 35104,
        q35105 = 35105,
        q35106 = 35106,
        q35107 = 35107
    },
    PaimonData = {
        Paimon = "Paimon",
        PaimonScript = "Actor/Quest/Q352/Paimon",
        PaimonID = 1005,
        Pos1 = sceneData:GetDummyPoint(3, "Q351FirstQuest").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q351FirstQuest").rot,
        Pos2 = sceneData:GetDummyPoint(3, "Q351FirstClimb").pos,
        Dir2 = sceneData:GetDummyPoint(3, "Q351FirstClimb").rot
    },
    FollowLen = 10,
    FollowTransLen = 45,
    NarratorFlow = {{dialogID = 3510022, audioEvtName = "", duration = 5}},
    NarratorWarning = {
        {dialogID = 3520701, audioEvtName = "", duration = 2},
        {dialogID = 3500201, audioEvtName = "", duration = 28}
    },
    NarratorStayWarning = {
        {dialogID = 3520501, audioEvtName = "", duration = 4},
        {dialogID = 3500201, audioEvtName = "", duration = 26},
        {dialogID = 3520501, audioEvtName = "", duration = 4},
        {dialogID = 3500201, audioEvtName = "", duration = 26},
        {dialogID = 3520601, audioEvtName = "", duration = 2},
        {dialogID = 3500201, audioEvtName = "", duration = 28}
    },
    NarratorData = {
        Story1 = {
            {dialogID = 3510005, audioEvtName = "", duration = 3},
            {dialogID = 3510006, audioEvtName = "", duration = 6},
            {dialogID = 3510001, audioEvtName = "", duration = 3},
            {dialogID = 3510007, audioEvtName = "", duration = 3},
            {dialogID = 3510008, audioEvtName = "", duration = 5}
        },
        Story2 = {},
        Story3 = {},
        Story4 = {},
        Story5 = {}
    },
    RoutePoints = {
        sceneData:GetDummyPoint(3, "Q351FirstStartFollow1").pos,
        sceneData:GetDummyPoint(3, "Q351FirstStartFollow2").pos,
        sceneData:GetDummyPoint(3, "Q351FirstStartFollow3").pos,
        sceneData:GetDummyPoint(3, "Q351FirstClimb").pos
    },
    RoutePoints2 = {
        sceneData:GetDummyPoint(3, "Q351FirstStartFollow4").pos,
        sceneData:GetDummyPoint(3, "Q351FirstStartFollow5").pos
    },
    TempTransData = {
        TempTrans = "TempTrans",
        TempTransID = 100174,
        TempTransPos = sceneData:GetDummyPoint(3, "Q351Trans").pos,
        TempTransDir = sceneData:GetDummyPoint(3, "Q351Trans").rot
    }
}

local interData = {}

local cutscene1 = {
    type = CutsceneType.TIME_LINE_PREFAB,
    canSkip = true,
    castListPath = "Cs_CastList_Q351",
    resPath = "ART/Cutscene/Cs_Opening_CutScene1_Convert",
    startPosType = CutsceneInitPosType.FREE
}

local startOffset = {}
local n = 0
local v = 0
startOffset[1] = 0
startOffset[2] = n
startOffset[3] = v
cutscene1.startOffset = startOffset
cutscene1.keepCamera = true
cutscene1.syncLoad = true
cutscene1.fadeInDuration = 0.0
cutscene1.modifyLastPoseOffset = true
interData.Cutscene1 = cutscene1
interData.NoReplyInter = {{{type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 3500001}}}
Q351ClientConfig.InterData = interData

Q351ClientConfig.PlayerBackInter = {
    {
        {type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 3521001},
        {type = InteractionType.DIALOG_SELECT, dialogIDList = {3521002}}
    }
}

return Q351ClientConfig
