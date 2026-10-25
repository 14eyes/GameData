require("Actor/ActorCommon")

local Q503Config = {
    MainID = 503,
    ActorAlias = "503",
    SubIDs = {q50301 = 50301, q50302 = 50302, q50303 = 50303, q50304 = 50304, q50305 = 50305, q50306 = 50306},
    Clue1ID = 100142,
    Clue2ID = 100143,
    Clue3ID = 100144,
    SealID = 100147,
    CluePos1 = sceneData:GetDummyPoint(3, "Q503CluePos301").pos,
    ClueRot1 = sceneData:GetDummyPoint(3, "Q503CluePos301").rot,
    CluePos2 = sceneData:GetDummyPoint(3, "Q503CluePos302").pos,
    ClueRot2 = sceneData:GetDummyPoint(3, "Q503CluePos302").rot,
    CluePos3 = sceneData:GetDummyPoint(3, "Q503CluePos303").pos,
    ClueRot3 = sceneData:GetDummyPoint(3, "Q503CluePos303").rot,
    SealPos = sceneData:GetDummyPoint(3, "Q503SealPos").pos,
    SealRot = sceneData:GetDummyPoint(3, "Q503SealPos").rot,
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
Q503Config.SealOpenTimeCfg = sealOpenTimeCfg

local sealAppearTimeCfg = {
    type = CutsceneType.TIME_LINE_PREFAB,
    roleSheetPath = "",
    resPath = "ART/Cutscene/Cs_MDAQ501_DvalinSeal03Appear",
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
Q503Config.SealAppearTimeCfg = sealAppearTimeCfg
return Q503Config
