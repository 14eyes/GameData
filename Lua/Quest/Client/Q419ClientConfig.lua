local Q419ClientConfig = {MainID = 419, ActorAlias = "419", SubIDs = {q41901 = 41901}}

local swordBreak = {
    type = CutsceneType.TIME_LINE_PREFAB,
    roleSheetPath = "",
    resPath = "ART/Cutscene/Cs_MDAQ501_SwordBreak01",
    startPosType = CutsceneInitPosType.FREE
}

local startOffset = {}
local n = 0
local v = 0
startOffset[1] = 0
startOffset[2] = n
startOffset[3] = v
swordBreak.startOffset = startOffset
Q419ClientConfig.SwordBreak = swordBreak
return Q419ClientConfig
