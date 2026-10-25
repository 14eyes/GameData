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
local Config31071 = {}
local data = {NpcId = "31071", Alias = "Npc31071"}
local dailyScheduleData = {refreshDailyActionImmediately = true}

local tbl = {
    bornConfigId = 663107100,
    condition = {sceneId = 0, priority = 0},
    actionPoints = {
        {
            dummypoint = {pos = {x = 300.2708, y = 200.0799, z = 14218.21}, rot = {x = 0, y = 247.2841, z = 0}},
            lookAtType = focusToPlayerType.Ignore,
            reactOnCollide = reactEnableType.Ignore,
            reactOnBodyLang = reactEnableType.Ignore,
            action = generalPattern.Stand
        }
    }
}

local v = {bornConfigId = 663107100, condition = {sceneId = 0, priority = 1}}
local conditionGrp = {}
local tbl2 = {}
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList = {}
local n = 3
paramList[1] = 7567301
paramList[2] = n
tbl3.paramList = paramList
tbl2[1] = tbl3
conditionGrp[1] = tbl2
v.conditionGrp = conditionGrp

v.actionPoints = {
    {
        dummypoint = {pos = {x = 302.9, y = 200, z = 14198.2}, rot = {x = 0, y = 227.14, z = 0}},
        lookAtType = focusToPlayerType.Ignore,
        reactOnCollide = reactEnableType.Ignore,
        reactOnBodyLang = reactEnableType.Ignore,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = v
data.DailyScheduleData = dailyScheduleData
Config31071.Data = data
return Config31071
