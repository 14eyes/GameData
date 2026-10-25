local Q422ClientConfig = {MainID = 422, ActorAlias = "422", SubIDs = {q42201 = 42201}}

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
Q422ClientConfig.SwordBreak = swordBreak
return Q422ClientConfig
