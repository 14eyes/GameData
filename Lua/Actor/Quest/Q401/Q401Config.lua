require("Actor/ActorCommon")

local Q401Config = {
    MainID = 401,
    ActorAlias = "401",
    SubIDs = {q40101 = 40101, q40102 = 40102, q40103 = 40103, q40104 = 40104, q40105 = 40105, q40106 = 40106},
    TreasureID = 100004,
    TreasurePos = sceneData:GetDummyPoint(3, "Q401Treasure").pos,
    Folk1Data = {Folk1 = "Extras1", Folk1Script = "Actor/Quest/Q301/WendyAudience", Folk1ID = 1101}
}

local monsterData = {}
local monsterIDs = {}
local n = 21010201
local v = 21010301
local n2 = 21010401
monsterIDs[1] = 20103027
monsterIDs[2] = n
monsterIDs[3] = v
monsterIDs[4] = n2
monsterData.MonsterIDs = monsterIDs
monsterData.BossID = 20011301
monsterData.BossDropID = 201002
Q401Config.MonsterData = monsterData
return Q401Config
