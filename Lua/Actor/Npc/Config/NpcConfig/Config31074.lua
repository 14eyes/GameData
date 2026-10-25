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
local Config31074 = {}
local data = {NpcId = "31074", Alias = "Npc31074"}
local dailyScheduleData = {refreshDailyActionImmediately = true}
local tbl = {transTeleport = true, bornConfigId = 673107400, condition = {sceneId = 0, priority = 0}}
local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList = {}
local n = 5331001
local n2 = 1
paramList[1] = 5331
paramList[2] = n
paramList[3] = n2
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList2 = {}
local n3 = 3
paramList2[1] = 7668301
paramList2[2] = n3
tbl3.paramList = paramList2
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 119}
local paramList3 = {}
local n4 = 3
paramList3[1] = 7668401
paramList3[2] = n4
tbl4.paramList = paramList3
v[1] = tbl2
v[2] = tbl3
v[3] = tbl4
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = 3205.848, y = 441.2076, z = 2930.29}, rot = {x = 0, y = 252.7214, z = 0}},
        freestyle = 1190,
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

local tbl5 = {transTeleport = true, bornConfigId = 673107400, condition = {sceneId = 0, priority = 0}}
local conditionGrp2 = {}
local tbl6 = {}
local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList4 = {}
local n5 = 5331001
local n6 = 1
paramList4[1] = 5331
paramList4[2] = n5
paramList4[3] = n6
tbl7.paramList = paramList4
local tbl8 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList5 = {}
local n7 = 3
paramList5[1] = 7668401
paramList5[2] = n7
tbl8.paramList = paramList5
tbl6[1] = tbl7
tbl6[2] = tbl8
conditionGrp2[1] = tbl6
tbl5.conditionGrp = conditionGrp2

tbl5.actionPoints = {
    {
        dummypoint = {pos = {x = 3206.488, y = 441.2076, z = 2928.831}, rot = {x = 0, y = 201.1144, z = 0}},
        lookAtType = focusToPlayerType.Ignore,
        reactOnCollide = reactEnableType.Ignore,
        reactOnBodyLang = reactEnableType.Ignore,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = tbl5
data.DailyScheduleData = dailyScheduleData
Config31074.Data = data
return Config31074
