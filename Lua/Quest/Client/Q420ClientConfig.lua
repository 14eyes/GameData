local Q420ClientConfig = {MainID = 420, ActorAlias = "420", SubIDs = {q42001 = 42001}}

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
Q420ClientConfig.SwordBreak = swordBreak
return Q420ClientConfig
