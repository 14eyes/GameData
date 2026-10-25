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
local Config4500 = {}
local data = {NpcId = "4500", Alias = "Npc4500"}
local dailyScheduleData = {}
local tbl = {bornConfigId = 644500000, condition = {sceneId = 0, priority = 0}}
local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList = {}
local n = 1
paramList[1] = 7353301
paramList[2] = n
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList2 = {}
local n2 = 1
paramList2[1] = 7370801
paramList2[2] = n2
tbl3.paramList = paramList2
v[1] = tbl2
v[2] = tbl3
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = 372.9475, y = 280.6122, z = 3246.863}, rot = {x = 0, y = 184.5105, z = 0}},
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
data.DailyScheduleData = dailyScheduleData
Config4500.Data = data
return Config4500
