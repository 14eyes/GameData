local Q384ClientConfig = {
    MainID = 384,
    ActorAlias = "384",
    SubIDs = {q38401 = 38401, q38402 = 38402, q38403 = 38403, q38404 = 38404, q38405 = 38405, q38406 = 38406},
    WendyData = {
        Wendy = "Wendy",
        WendyScript = "Actor/Quest/Q301/Wendy301",
        WendyID = 1001,
        bornPos1 = sceneData:GetDummyPoint(3, "Q384WendyTemp").pos,
        bornDir1 = sceneData:GetDummyPoint(3, "Q384WendyTemp").rot,
        bornPos2 = sceneData:GetDummyPoint(3, "Q384Wendy").pos,
        bornDir2 = sceneData:GetDummyPoint(3, "Q384Wendy").rot,
        bornPos3 = sceneData:GetDummyPoint(3, "Q388Venti").pos,
        bornDir3 = sceneData:GetDummyPoint(3, "Q388Venti").rot
    },
    DilucData = {
        Diluc = "Diluc",
        DilucScript = "Actor/Quest/Q376/Diluc",
        DilucID = 1009,
        bornPos1 = sceneData:GetDummyPoint(3, "Q384DilucTemp").pos,
        bornDir1 = sceneData:GetDummyPoint(3, "Q384DilucTemp").rot,
        bornPos2 = sceneData:GetDummyPoint(3, "Q384Diluc").pos,
        bornDir2 = sceneData:GetDummyPoint(3, "Q384Diluc").rot,
        bornPos3 = sceneData:GetDummyPoint(3, "Q388Diluc").pos,
        bornDir3 = sceneData:GetDummyPoint(3, "Q388Diluc").rot
    },
    QinData = {
        Qin = "Qin",
        QinScript = "Actor/Quest/Q411/Qin",
        QinID = 1006,
        bornPos1 = sceneData:GetDummyPoint(3, "Q384QinTemp").pos,
        bornDir1 = sceneData:GetDummyPoint(3, "Q384QinTemp").rot,
        bornPos2 = sceneData:GetDummyPoint(3, "Q384Qin").pos,
        bornDir2 = sceneData:GetDummyPoint(3, "Q384Qin").rot,
        bornPos3 = sceneData:GetDummyPoint(3, "Q388Qin").pos,
        bornDir3 = sceneData:GetDummyPoint(3, "Q388Qin").rot
    }
}

local zhaiXingYaCfg = {
    type = CutsceneType.TIME_LINE_PREFAB,
    canSkip = true,
    castListPath = "Cs_CastList_Q384",
    resPath = "ART/Cutscene/Cs_MDAQ063_ZhaiXingYa_Convert",
    startPosType = CutsceneInitPosType.FREE
}

local startOffset = {}
local n = 0
local v = 0
startOffset[1] = 0
startOffset[2] = n
startOffset[3] = v
zhaiXingYaCfg.startOffset = startOffset
zhaiXingYaCfg.keepCamera = false
Q384ClientConfig.ZhaiXingYaCfg = zhaiXingYaCfg

local firstShow = {
    type = CutsceneType.TIME_LINE_PREFAB,
    canSkip = true,
    castListPath = "Cs_CastList_Q384",
    resPath = "ART/Cutscene/Cs_MDAQ063_ZhaiXingYaSideB_Convert",
    startPosType = CutsceneInitPosType.FREE
}

local tbl = {}
local n2 = 0
local n3 = 0
tbl[1] = 0
tbl[2] = n2
tbl[3] = n3
firstShow.startOffset = tbl
firstShow.keepCamera = false
Q384ClientConfig.FirstShow = firstShow

Q384ClientConfig.FightNarrator = {
    {dialogID = 3840707, audioEvtName = "", duration = 2},
    {dialogID = 3840708, audioEvtName = "", duration = 3}
}

return Q384ClientConfig
