local Q21004ClientConfig = {
    MainID = 21004,
    ActorAlias = "21004",
    SubIDs = {
        q2100401 = 2100401,
        q2100402 = 2100402,
        q2100480 = 2100480,
        q2100481 = 2100481,
        q2100403 = 2100403,
        q2100410 = 2100410,
        q2100411 = 2100411,
        q2100412 = 2100412,
        q2100413 = 2100413,
        q2100414 = 2100414,
        q2100420 = 2100420,
        q2100421 = 2100421,
        q2100422 = 2100422,
        q2100430 = 2100430,
        q2100431 = 2100431,
        q2100431 = 2100432,
        q2100440 = 2100440,
        q2100450 = 2100450
    }
}

local interData = {}

local cutscene1 = {
    type = CutsceneType.TIME_LINE_PREFAB,
    resPath = "ART/Cutscene/Cs_LYIQ21004_TheLostTreasure",
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

local cutscene2 = {
    type = CutsceneType.TIME_LINE_PREFAB,
    resPath = "ART/Cutscene/Cs_LYIQ21004_TheLostTreasure_Contact",
    canSkip = false,
    startPosType = CutsceneInitPosType.FREE
}

local tbl = {}
local n2 = 0
local n3 = 0
tbl[1] = 0
tbl[2] = n2
tbl[3] = n3
cutscene2.startOffset = tbl
cutscene2.keepCamera = false
interData.Cutscene2 = cutscene2
Q21004ClientConfig.InterData = interData
Q21004ClientConfig.Soraya = {Alias = "Npc221101", ID = 221101}

Q21004ClientConfig.Paimon = {
    alias = "Paimon",
    script = "Actor/Quest/Q352/Paimon",
    id = 1005,
    pos = {x = 0, y = 0, z = 0},
    rot = {x = 0, y = 0, z = 0}
}

return Q21004ClientConfig
