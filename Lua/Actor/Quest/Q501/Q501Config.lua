require("Actor/ActorCommon")

local Q501Config = {
    MainID = 501,
    ActorAlias = "501",
    SubIDs = {q50101 = 50101, q50102 = 50102, q50103 = 50103, q50104 = 50104, q50105 = 50105, q50106 = 50106},
    Clue1ID = 100136,
    Clue2ID = 100137,
    Clue3ID = 100138,
    SealID = 100145,
    CluePos1 = sceneData:GetDummyPoint(3, "Q390CluePos1").pos,
    ClueRot1 = sceneData:GetDummyPoint(3, "Q390CluePos1").rot,
    CluePos2 = sceneData:GetDummyPoint(3, "Q390CluePos2").pos,
    ClueRot2 = sceneData:GetDummyPoint(3, "Q390CluePos2").rot,
    CluePos3 = sceneData:GetDummyPoint(3, "Q390CluePos3").pos,
    ClueRot3 = sceneData:GetDummyPoint(3, "Q390CluePos3").rot,
    SealPos = sceneData:GetDummyPoint(3, "Q390SealPos").pos,
    SealRot = sceneData:GetDummyPoint(3, "Q390SealPos").rot,
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
Q501Config.SealOpenTimeCfg = sealOpenTimeCfg

local sealAppearTimeCfg = {
    type = CutsceneType.TIME_LINE_PREFAB,
    roleSheetPath = "",
    resPath = "ART/Cutscene/Cs_MDAQ501_DvalinSeal01Appear",
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
Q501Config.SealAppearTimeCfg = sealAppearTimeCfg

Q501Config.NarratorData = {
    Storyclue1 = {{dialogID = 5010101, duration = 3}},
    Storyclue2 = {{dialogID = 5010102, duration = 3}},
    Storyclue3 = {{dialogID = 5010103, duration = 3}}
}

return Q501Config
