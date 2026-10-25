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
local Config31123 = {}
local data = {NpcId = "31123", Alias = "Npc31123"}
local dailyScheduleData = {}
local tbl = {bornConfigId = 703112300, condition = {sceneId = 0, priority = 0}}
local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList = {}
local n = 1
paramList[1] = 7750401
paramList[2] = n
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 31, paramList = {5333}}
v[1] = tbl2
v[2] = tbl3
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = 9419.981, y = 250.17, z = 7608.499}, rot = {x = 0, y = 254.1744, z = 0}},
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

local tbl4 = {bornConfigId = 703112301, condition = {sceneId = 0, priority = 0}}
local conditionGrp2 = {}
local tbl5 = {}
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList2 = {}
local n2 = 2
paramList2[1] = 7750401
paramList2[2] = n2
tbl6.paramList = paramList2
local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 31, paramList = {5333}}
tbl5[1] = tbl6
tbl5[2] = tbl7
conditionGrp2[1] = tbl5
tbl4.conditionGrp = conditionGrp2

tbl4.actionPoints = {
    {
        dummypoint = {pos = {x = 9424.396, y = 250.17, z = 7604.982}, rot = {x = 0, y = 118.8493, z = 0}},
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = tbl4
data.DailyScheduleData = dailyScheduleData
Config31123.Data = data
return Config31123
