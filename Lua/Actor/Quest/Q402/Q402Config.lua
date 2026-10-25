require("Actor/ActorCommon")

local Q402Config = {
    MainID = 402,
    ActorAlias = "402",
    SubIDs = {q40201 = 40201, q40202 = 40202, q40203 = 40203, q40204 = 40204, q40205 = 40205, q40206 = 40206},
    KeyID = 100006,
    KeyPos = sceneData:GetDummyPoint(3, "Q402Key").pos,
    Folk2Data = {Folk1 = "Extras2", Folk1Script = "Actor/Quest/Q301/WendyAudience", Folk1ID = 1102},
    HostagePos = sceneData:GetDummyPoint(3, "Q402Hostage").pos,
    HostageDir = sceneData:GetDummyPoint(3, "Q402Hostage").rot,
    Follow1Pos = sceneData:GetDummyPoint(3, "Q402Follow1").pos,
    Follow2Pos = sceneData:GetDummyPoint(3, "Q402Follow2").pos,
    Follow3Pos = sceneData:GetDummyPoint(3, "Q402Follow3").pos,
    Follow4Pos = sceneData:GetDummyPoint(3, "Q402Follow4").pos,
    Hostage = {Hostage = "Hostage", HostageScript = "Actor/Quest/Q402/Hostage", HostageID = 1151}
}

local monsterData = {}
local monsterIDs = {}
local n = 21010301
local v = 21010301
local n2 = 21010301
monsterIDs[1] = 21010301
monsterIDs[2] = n
monsterIDs[3] = v
monsterIDs[4] = n2
monsterData.MonsterIDs = monsterIDs
Q402Config.MonsterData = monsterData
return Q402Config
