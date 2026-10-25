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
local Config4498 = {}
local data = {NpcId = "4498", Alias = "Npc4498"}
local dailyScheduleData = {}
local tbl = {bornConfigId = 644498000, condition = {sceneId = 0, priority = 0}}
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
        dummypoint = {pos = {x = 380.8831, y = 280.6938, z = 3250.935}, rot = {x = 0, y = 99.80888, z = 0}},
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
data.DailyScheduleData = dailyScheduleData
Config4498.Data = data
return Config4498
