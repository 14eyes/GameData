require("Actor/ActorCommon")

return {
    MainID = 408,
    ActorAlias = "408",
    SubIDs = {
        q40801 = 40801,
        q40802 = 40802,
        q40803 = 40803,
        q40804 = 40804,
        q40805 = 40805,
        q40806 = 40806,
        q40807 = 40807,
        q40808 = 40808,
        q40809 = 40809,
        q40810 = 40810
    },
    KeyPos = sceneData:GetDummyPoint(3, "Q408KeyPos").pos,
    KeyDir = {x = 45, y = 0, z = 0},
    MatchTime = 12,
    gotKey = false,
    BoardSeperateGadgetID = 70300031,
    BoardTogetherGadgetID = 70300032,
    BoardPos = sceneData:GetDummyPoint(3, "Q408BoardPos").pos,
    BoardDir = {x = 0, y = 84, z = 0},
    PlayerPos = sceneData:GetDummyPoint(3, "Q408PlayerPos").pos,
    PlayerDir = sceneData:GetDummyPoint(3, "Q408PlayerPos").rot,
    JudgeData = {
        Judge = "RiverRunJudge",
        JudgeScript = "Actor/Quest/Q408/RiverRunJudge",
        JudgeID = 1116,
        JudgePos = sceneData:GetDummyPoint(3, "Q408JudgePos").pos,
        JudgeDir = sceneData:GetDummyPoint(3, "Q408JudgePos").rot
    }
}
