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
local Config31070 = {}
local data = {NpcId = "31070", Alias = "Npc31070"}
local dailyScheduleData = {refreshDailyActionImmediately = true}

local tbl = {
    transTeleport = true,
    bornConfigId = 663107000,
    condition = {sceneId = 0, priority = 0},
    actionPoints = {
        {
            dummypoint = {pos = {x = 300.716, y = 200.1252, z = 14216.95}, rot = {x = 0, y = 277.762, z = 0}},
            freestyle = 1060,
            lookAtType = focusToPlayerType.Ignore,
            reactOnCollide = reactEnableType.Ignore,
            reactOnBodyLang = reactEnableType.Ignore,
            action = generalPattern.Stand
        }
    }
}

local v = {transTeleport = true, bornConfigId = 663107000, condition = {sceneId = 0, priority = 1}}
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
        dummypoint = {pos = {x = 303.5135, y = 200.003, z = 14196.92}, rot = {x = 0, y = 265, z = 0}},
        freestyle = 1230,
        lookAtType = focusToPlayerType.Ignore,
        reactOnCollide = reactEnableType.Ignore,
        reactOnBodyLang = reactEnableType.Ignore,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = v
data.DailyScheduleData = dailyScheduleData
Config31070.Data = data
return Config31070
