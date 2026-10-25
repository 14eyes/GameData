local Q21005ClientConfig = {
    MainID = 21005,
    ActorAlias = "21005",
    SubIDs = {
        q2100501 = 2100501,
        q2100502 = 2100502,
        q2100503 = 2100503,
        q2100504 = 2100504,
        q2100505 = 2100505,
        q2100506 = 2100506,
        q2100507 = 2100507,
        q2100508 = 2100508,
        q2100509 = 2100509,
        q2100510 = 2100510,
        q2100511 = 2100511,
        q2100512 = 2100512
    }
}

local interData = {}

local cutscene1 = {
    type = CutsceneType.TIME_LINE_PREFAB,
    resPath = "ART/Cutscene/Cs_LYIQ21005_RacingGameOpening",
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
Q21005ClientConfig.InterData = interData

Q21005ClientConfig.PosData = {
    BornPos = sceneData:GetDummyPoint(3, "Racing_133104138_StartPos").pos,
    BornDir = sceneData:GetDummyPoint(3, "Racing_133104138_StartPos").rot
}

Q21005ClientConfig.EndData = {
    EndPos = sceneData:GetDummyPoint(3, "Racing_133104138_EndPos").pos,
    EndDir = sceneData:GetDummyPoint(3, "Racing_133104138_EndPos").rot
}

Q21005ClientConfig.FailData = {
    FailPos = sceneData:GetDummyPoint(3, "Racing_133104138_EndPos").pos,
    FailDir = sceneData:GetDummyPoint(3, "Racing_133104138_EndPos").rot
}

return Q21005ClientConfig
