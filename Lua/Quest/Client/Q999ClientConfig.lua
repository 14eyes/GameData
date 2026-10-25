local Q999ClientConfig = {
    FollowData = {Follow1 = {}},
    NarratorData = {
        Narrator1 = {
            flow = {
                {dialogID = 3510008, duration = 2},
                {dialogID = 3510009, duration = 3},
                {dialogID = 3510010, duration = 2},
                {dialogID = 3510011, duration = 3},
                {dialogID = 3510012, duration = 3}
            }
        }
    }
}

local interData = {}

local inter1 = {
    type = CutsceneType.TIME_LINE_PREFAB,
    canSkip = true,
    resPath = "ART/Cutscene/Cs_Opening_CutScene1",
    startPosType = CutsceneInitPosType.FREE
}

local startOffset = {}
local n = 0
local v = 0
startOffset[1] = 0
startOffset[2] = n
startOffset[3] = v
inter1.startOffset = startOffset
inter1.keepCamera = true
interData.Inter1 = inter1
Q999ClientConfig.InterData = interData
return Q999ClientConfig
