local Q998ClientConfig = {
    TargetNpc = "QQ1121",
    TargetPos = {PosB = sceneData:GetDummyPoint(3, "Q998Pos2"), PosC = sceneData:GetDummyPoint(3, "Q998Pos3")},
    FollowData = {
        Follow1 = {pos = sceneData:GetDummyPoint(3, "Q998Pos3").pos, beFollowLen = 10, beFollowFailed = 20},
        FollowLock1 = {
            pos = sceneData:GetDummyPoint(3, "Q998Pos3").pos,
            beFollowLen = 10,
            beFollowTrans = 30,
            transOffset = 1
        }
    },
    NarratorData = {
        NarratorOnly1 = {
            {dialogID = 3510008, duration = 2},
            {dialogID = 3510009, duration = 3},
            {dialogID = 3510010, duration = 2},
            {dialogID = 3510011, duration = 3},
            {dialogID = 3510012, duration = 3}
        },
        NarratorFollow1 = {
            pauseLen = 10,
            resumeLen = 6,
            dialogList = {
                {dialogID = 3510008, duration = 2},
                {dialogID = 3510009, duration = 3},
                {dialogID = 3510010, duration = 2},
                {dialogID = 3510011, duration = 3},
                {dialogID = 3510012, duration = 3}
            }
        },
        NarratorWarning1 = {
            warningLen = 15,
            stopLen = 25,
            dialogList = {
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

local cutscene1 = {
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
cutscene1.startOffset = startOffset
cutscene1.keepCamera = true
interData.Cutscene1 = cutscene1
interData.AmborNoReplyInter = {{{type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 3122401}}}
Q998ClientConfig.InterData = interData
return Q998ClientConfig
