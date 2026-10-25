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
local Config31162 = {}
local data = {NpcId = "31162", Alias = "Npc31162"}
local dailyScheduleData = {refreshDailyActionImmediately = true}
local tbl = {transTeleport = true, bornConfigId = 713116200, condition = {sceneId = 0, priority = 0}}
local conditionGrp = {}
local v = {}

local tbl2 = {
    _type_ = LuaVirtualType.NpcActionActivityCondCondition,
    activityId = 2051,
    activityCondId = 2051001,
    isActivityValid = true
}

local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList = {}
local n = 3
paramList[1] = 7167501
paramList[2] = n
tbl3.paramList = paramList
v[1] = tbl2
v[2] = tbl3
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = 2423.551, y = 341.8975, z = 2380.051}, rot = {x = 0, y = 298.0815, z = 0}},
        freestyle = 1190,
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

local tbl4 = {bornConfigId = 713116200, condition = {sceneId = 0, priority = 0}}
local conditionGrp2 = {}
local tbl5 = {}

local tbl6 = {
    _type_ = LuaVirtualType.NpcActionActivityCondCondition,
    activityId = 2051,
    activityCondId = 2051001,
    isActivityValid = true
}

local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 119}
local paramList2 = {}
local n2 = 3
paramList2[1] = 7167501
paramList2[2] = n2
tbl7.paramList = paramList2
tbl5[1] = tbl6
tbl5[2] = tbl7
conditionGrp2[1] = tbl5
tbl4.conditionGrp = conditionGrp2

tbl4.actionPoints = {
    {
        dummypoint = {pos = {x = 2425.835, y = 341.8975, z = 2380.001}, rot = {x = 0, y = 214.6495, z = 0}},
        lookAtType = focusToPlayerType.Ignore,
        reactOnCollide = reactEnableType.Ignore,
        reactOnBodyLang = reactEnableType.Ignore,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = tbl4
data.DailyScheduleData = dailyScheduleData
Config31162.Data = data
return Config31162
