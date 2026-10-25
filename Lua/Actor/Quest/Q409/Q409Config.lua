require("Actor/ActorCommon")

return {
    MainID = 409,
    ActorAlias = "409",
    SubIDs = {
        q40901 = 40901,
        q40902 = 40902,
        q40903 = 40903,
        q40904 = 40904,
        q40905 = 40905,
        q40906 = 40906,
        q40907 = 40907,
        q40908 = 40908,
        q40909 = 40909,
        q40910 = 40910
    },
    KeyPos = sceneData:GetDummyPoint(3, "Q409KeyPos").pos,
    KeyDir = {x = 0, y = 90, z = 0},
    MatchTime = 90,
    Score = 0,
    RequireScore = 10,
    BallMonsterID = 20011002,
    BallPos1 = sceneData:GetDummyPoint(3, "Q409BallPos1").pos,
    BallPos2 = sceneData:GetDummyPoint(3, "Q409BallPos2").pos,
    BallPos3 = sceneData:GetDummyPoint(3, "Q409BallPos3").pos,
    BoardDir = {x = 0, y = 50, z = 0},
    JudgeData = {
        Judge = "BallJudge",
        JudgeScript = "Actor/Quest/Q409/BallJudge",
        JudgeID = 1117,
        JudgePos = sceneData:GetDummyPoint(3, "Q409Judge").pos,
        JudgeDir = sceneData:GetDummyPoint(3, "Q409Judge").rot
    }
}
