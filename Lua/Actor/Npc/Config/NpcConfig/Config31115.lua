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
local Config31115 = {}
local data = {NpcId = "31115", Alias = "Npc31115"}
local dailyScheduleData = {refreshDailyActionImmediately = true}
local tbl = {bornConfigId = 703111500, condition = {sceneId = 0, priority = 1}}
local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 31, paramList = {2050}}
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList = {}
local n = 3
paramList[1] = 7750102
paramList[2] = n
tbl3.paramList = paramList
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
        dummypoint = {pos = {x = 9338.402, y = 248.8658, z = 6673.864}, rot = {x = 0, y = 229.9138, z = 0}},
        freestyle = 102,
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Sit
    }
}

dailyScheduleData[1] = tbl
data.DailyScheduleData = dailyScheduleData
Config31115.Data = data
return Config31115
