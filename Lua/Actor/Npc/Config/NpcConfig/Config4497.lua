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
local Config4497 = {}
local data = {NpcId = "4497", Alias = "Npc4497"}
local dailyScheduleData = {}
local tbl = {bornConfigId = 644497000, condition = {sceneId = 0, priority = 0}}
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
        dummypoint = {pos = {x = 371.5777, y = 280.6122, z = 3244.849}, rot = {x = 0, y = 141.9294, z = 0}},
        freestyle = 1190,
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
data.DailyScheduleData = dailyScheduleData
local nahidaNarratorData = {}

local tbl4 = {
    validQuestIds = {0},
    priority = 100,
    dialogDataList = {{dialogId = 1018449700, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditions = {}
local tbl5 = {}
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList3 = {}
local n3 = 1
paramList3[1] = 7353301
paramList3[2] = n3
tbl6.paramList = paramList3
tbl5[1] = tbl6
conditions[1] = tbl5
tbl4.conditions = conditions
nahidaNarratorData[1] = tbl4
data.NahidaNarratorData = nahidaNarratorData
Config4497.Data = data
return Config4497
