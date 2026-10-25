local Q309ClientConfig = {
    MainID = 309,
    ActorAlias = "309",
    SubIDs = {q30901 = 30901, q30903 = 30903, q30904 = 30904},
    PaimonData = {Paimon = "Paimon", PaimonScript = "Actor/Quest/Q352/Paimon", PaimonID = 1005}
}

local cutsceneData = {
    type = CutsceneType.TIME_LINE_PREFAB,
    canSkip = true,
    castListPath = "Cs_CastList_Paimon",
    resPath = "ART/Cutscene/Cs_MDAQ000_ChangeWeather_Convert",
    startPosType = CutsceneInitPosType.FREE
}

local startOffset = {}
local n = 0
local v = 0
startOffset[1] = 0
startOffset[2] = n
startOffset[3] = v
cutsceneData.startOffset = startOffset
cutsceneData.fadeInDuration = 2.0
Q309ClientConfig.CutsceneData = cutsceneData
return Q309ClientConfig
