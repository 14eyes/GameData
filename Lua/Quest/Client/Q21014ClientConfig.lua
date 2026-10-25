local Q21014ClientConfig = {MainID = 21014, ActorAlias = "21014", SubIDs = {q2101400 = 2101400}}
local interData = {}

local cutscene1 = {
    type = CutsceneType.TIME_LINE_PREFAB,
    resPath = "ART/Cutscene/Cs_LYIQ21014_LiYueShow",
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
cutscene1.keepCamera = false
interData.Cutscene1 = cutscene1
Q21014ClientConfig.InterData = interData
return Q21014ClientConfig
