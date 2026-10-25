require("Actor/ActorCommon")

local Q502Config = {
    MainID = 502,
    ActorAlias = "502",
    SubIDs = {q50201 = 50201, q50202 = 50202, q50203 = 50203, q50204 = 50204, q50205 = 50205, q50206 = 50206},
    Clue1ID = 100139,
    Clue2ID = 100140,
    Clue3ID = 100141,
    SealID = 100146,
    CluePos1 = sceneData:GetDummyPoint(3, "Q502CluePos201").pos,
    ClueRot1 = sceneData:GetDummyPoint(3, "Q502CluePos201").rot,
    CluePos2 = sceneData:GetDummyPoint(3, "Q502CluePos202").pos,
    ClueRot2 = sceneData:GetDummyPoint(3, "Q502CluePos202").rot,
    CluePos3 = sceneData:GetDummyPoint(3, "Q502CluePos203").pos,
    ClueRot3 = sceneData:GetDummyPoint(3, "Q502CluePos203").rot,
    SealPos = sceneData:GetDummyPoint(3, "Q502SealPos").pos,
    SealRot = sceneData:GetDummyPoint(3, "Q502SealPos").rot,
    ClueGadgetID = 70900003,
    SealGadgetID = 70800001
}

local sealOpenTimeCfg = {
    type = CutsceneType.TIME_LINE_PREFAB,
    roleSheetPath = "",
    resPath = "ART/Cutscene/Cs_MDAQ501_DvalinSealOpen01",
    startPosType = CutsceneInitPosType.FREE
}

local startOffset = {}
local n = 0
local v = 0
startOffset[1] = 0
startOffset[2] = n
startOffset[3] = v
sealOpenTimeCfg.startOffset = startOffset
sealOpenTimeCfg.fadeInDuration = 0
Q502Config.SealOpenTimeCfg = sealOpenTimeCfg

local sealAppearTimeCfg = {
    type = CutsceneType.TIME_LINE_PREFAB,
    roleSheetPath = "",
    resPath = "ART/Cutscene/Cs_MDAQ501_DvalinSeal02Appear",
    startPosType = CutsceneInitPosType.FREE
}

local tbl = {}
local n2 = 0
local n3 = 0
tbl[1] = 0
tbl[2] = n2
tbl[3] = n3
sealAppearTimeCfg.startOffset = tbl
sealAppearTimeCfg.fadeInDuration = 0
Q502Config.SealAppearTimeCfg = sealAppearTimeCfg
return Q502Config
