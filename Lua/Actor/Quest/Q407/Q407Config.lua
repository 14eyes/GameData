require("Actor/ActorCommon")

local Q407Config = {
    MainID = 407,
    ActorAlias = "407",
    SubIDs = {q40701 = 40701, q40702 = 40702, q40703 = 40703, q40704 = 40704, q40705 = 40705, q40706 = 40706},
    GotCricket = false,
    GameRunning = false
}

local cricketItemID = {}
local n = 100121
local v = 100122
local n2 = 100123
local n3 = 100124
cricketItemID[1] = 100120
cricketItemID[2] = n
cricketItemID[3] = v
cricketItemID[4] = n2
cricketItemID[5] = n3
Q407Config.CricketItemID = cricketItemID
local soundGadgetID = {}
local n4 = 70300022
local n5 = 70300023
local n6 = 70300024
soundGadgetID[1] = 70300021
soundGadgetID[2] = n4
soundGadgetID[3] = n5
soundGadgetID[4] = n6
Q407Config.SoundGadgetID = soundGadgetID
Q407Config.HoleNum = 15
Q407Config.CricketNum = 4

Q407Config.HolePos = {
    sceneData:GetDummyPoint(3, "Q407HolePos1").pos,
    sceneData:GetDummyPoint(3, "Q407HolePos2").pos,
    sceneData:GetDummyPoint(3, "Q407HolePos3").pos,
    sceneData:GetDummyPoint(3, "Q407HolePos4").pos,
    sceneData:GetDummyPoint(3, "Q407HolePos5").pos,
    sceneData:GetDummyPoint(3, "Q407HolePos6").pos,
    sceneData:GetDummyPoint(3, "Q407HolePos7").pos,
    sceneData:GetDummyPoint(3, "Q407HolePos8").pos,
    sceneData:GetDummyPoint(3, "Q407HolePos9").pos,
    sceneData:GetDummyPoint(3, "Q407HolePos10").pos,
    sceneData:GetDummyPoint(3, "Q407HolePos11").pos,
    sceneData:GetDummyPoint(3, "Q407HolePos12").pos,
    sceneData:GetDummyPoint(3, "Q407HolePos13").pos,
    sceneData:GetDummyPoint(3, "Q407HolePos14").pos,
    sceneData:GetDummyPoint(3, "Q407HolePos15").pos
}

Q407Config.MatchTime = 30

Q407Config.JudgeData = {
    Judge = "CricketJudge",
    JudgeScript = "Actor/Quest/Q407/CricketJudge",
    JudgeID = 1105,
    JudgePos = sceneData:GetDummyPoint(3, "Q407Judge").pos,
    JudgeDir = sceneData:GetDummyPoint(3, "Q407Judge").rot
}

return Q407Config
