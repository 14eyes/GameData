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
local Config31099 = {}
local data = {NpcId = "31099", Alias = "Npc31099"}
local dailyScheduleData = {refreshDailyActionImmediately = true}
local tbl = {bornConfigId = 703109900, condition = {sceneId = 0, priority = 1}}
local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList = {}
local n = 3
paramList[1] = 7750103
paramList[2] = n
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 31, paramList = {2050}}
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 170}
local paramList2 = {}
local n2 = 2051
local n3 = 1
paramList2[1] = 3
paramList2[2] = n2
paramList2[3] = n3
tbl4.paramList = paramList2
v[1] = tbl2
v[2] = tbl3
v[3] = tbl4
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = 9336.308, y = 248.867, z = 6673.127}, rot = {x = 0, y = 43.67421, z = 0}},
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Ignore,
        reactOnBodyLang = reactEnableType.Ignore,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
data.DailyScheduleData = dailyScheduleData
Config31099.Data = data
return Config31099
