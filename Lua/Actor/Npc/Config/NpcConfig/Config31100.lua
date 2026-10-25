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
local Config31100 = {}
local data = {NpcId = "31100", Alias = "Npc31100"}
local dailyScheduleData = {}
local tbl = {transTeleport = true, bornConfigId = 713110000, condition = {sceneId = 0, priority = 0}}
local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList = {}
local n = 2051001
local n2 = 1
paramList[1] = 2051
paramList[2] = n
paramList[3] = n2
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList2 = {}
local n3 = 3
paramList2[1] = 7167501
paramList2[2] = n3
tbl3.paramList = paramList2
v[1] = tbl2
v[2] = tbl3
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = 2420.917, y = 341.8975, z = 2377.131}, rot = {x = 0, y = 309.7264, z = 0}},
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

local tbl4 = {bornConfigId = 713110000, condition = {sceneId = 0, priority = 0}}
local conditionGrp2 = {}
local tbl5 = {}
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList3 = {}
local n4 = 2051001
local n5 = 1
paramList3[1] = 2051
paramList3[2] = n4
paramList3[3] = n5
tbl6.paramList = paramList3
local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 119}
local paramList4 = {}
local n6 = 3
paramList4[1] = 7167501
paramList4[2] = n6
tbl7.paramList = paramList4
tbl5[1] = tbl6
tbl5[2] = tbl7
conditionGrp2[1] = tbl5
tbl4.conditionGrp = conditionGrp2

tbl4.actionPoints = {
    {
        dummypoint = {pos = {x = 2425.195, y = 341.8975, z = 2379.02}, rot = {x = 0, y = 36.6016, z = 0}},
        lookAtType = focusToPlayerType.Ignore,
        reactOnCollide = reactEnableType.Ignore,
        reactOnBodyLang = reactEnableType.Ignore,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = tbl4
data.DailyScheduleData = dailyScheduleData
local billboardMarkData = {}
local markDatas = {}
local tbl8 = {icon = "UI_NPCTopIcon_Activity_LunaV2_VineManRun", priority = 0}
local conditions = {}
local tbl9 = {}
local tbl10 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList5 = {}
local n7 = 3
paramList5[1] = 7167501
paramList5[2] = n7
tbl10.paramList = paramList5
tbl9[1] = tbl10
conditions[1] = tbl9
tbl8.conditions = conditions
markDatas[1] = tbl8
billboardMarkData.markDatas = markDatas
data.BillboardMarkData = billboardMarkData
Config31100.Data = data
return Config31100
