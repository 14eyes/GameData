require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local generalPattern = NpcConfigCommon.GeneralPattern
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local focusToPlayerType = NpcConfigCommon.FocusToPlayerType
local reactEnableType = NpcConfigCommon.ReactEnableType
local reactEventType = NpcConfigCommon.ReactEventType
local actorMoveType = NpcConfigCommon.ActorMoveType
local Config31169 = {}
local data = {NpcId = "31169", Alias = "Npc31169"}
local dailyScheduleData = {}
local tbl = {bornConfigId = 713116900, condition = {sceneId = 0, priority = 1}}
local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList = {}
local n = 5343001
local n2 = 1
paramList[1] = 5343
paramList[2] = n
paramList[3] = n2
tbl2.paramList = paramList
v[1] = tbl2
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = -1424.77, y = 145.7172, z = 7356.297}, rot = {x = 0, y = 205.7907, z = 0}},
        freestyle = 1130,
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

local tbl3 = {bornConfigId = 713116901, condition = {sceneId = 0, priority = 0}}
local conditionGrp2 = {}
local tbl4 = {}
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList2 = {}
local n3 = 5343012
local n4 = 1
paramList2[1] = 5343
paramList2[2] = n3
paramList2[3] = n4
tbl5.paramList = paramList2
tbl4[1] = tbl5
conditionGrp2[1] = tbl4
tbl3.conditionGrp = conditionGrp2

tbl3.actionPoints = {
    {
        dummypoint = {pos = {x = -1429.841, y = 146.4581, z = 7353.204}, rot = {x = 0, y = 0, z = 0}},
        freestyle = 1190,
        lookAtType = focusToPlayerType.Ignore,
        reactOnCollide = reactEnableType.Ignore,
        reactOnBodyLang = reactEnableType.Ignore,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = tbl3
data.DailyScheduleData = dailyScheduleData
Config31169.Data = data
return Config31169
