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
local Config30982 = {}
local data = {NpcId = "30982", Alias = "Npc30982"}
local dailyScheduleData = {}
local tbl = {bornConfigId = 643098200, condition = {sceneId = 0, priority = 0}}
local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList = {}
local n = 5312014
local n2 = 1
paramList[1] = 5312
paramList[2] = n
paramList[3] = n2
tbl2.paramList = paramList
v[1] = tbl2
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = 368.748, y = 280.6122, z = 3240.782}, rot = {x = 0, y = 212.3296, z = 0}},
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
data.DailyScheduleData = dailyScheduleData
local nahidaNarratorData = {}

local tbl3 = {
    validQuestIds = {0},
    priority = 200,
    dialogDataList = {{dialogId = 1018309820, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditions = {}
local tbl4 = {}
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList2 = {}
local n3 = 5312014
local n4 = 1
paramList2[1] = 5312
paramList2[2] = n3
paramList2[3] = n4
tbl5.paramList = paramList2
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList3 = {}
local n5 = 3
paramList3[1] = 7370802
paramList3[2] = n5
tbl6.paramList = paramList3
tbl4[1] = tbl5
tbl4[2] = tbl6
conditions[1] = tbl4
tbl3.conditions = conditions
local tbl7 = {}
local validQuestIds = {}
local n6 = 73708
validQuestIds[1] = 0
validQuestIds[2] = n6
tbl7.validQuestIds = validQuestIds
tbl7.priority = 200
tbl7.dialogDataList = {{dialogId = 1018309821, duration = 0, intervalMin = 20, intervalMax = 30}}
local conditions2 = {}
local tbl8 = {}
local tbl9 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList4 = {}
local n7 = 5312014
local n8 = 1
paramList4[1] = 5312
paramList4[2] = n7
paramList4[3] = n8
tbl9.paramList = paramList4
local tbl10 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList5 = {}
local n9 = 2
paramList5[1] = 7370802
paramList5[2] = n9
tbl10.paramList = paramList5
tbl8[1] = tbl9
tbl8[2] = tbl10
conditions2[1] = tbl8
tbl7.conditions = conditions2
nahidaNarratorData[1] = tbl3
nahidaNarratorData[2] = tbl7
data.NahidaNarratorData = nahidaNarratorData
Config30982.Data = data
return Config30982
