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
local Config31025 = {}
local data = {NpcId = "31025", Alias = "Npc31025"}
local dailyScheduleData = {}
local tbl = {bornConfigId = 663102500, condition = {sceneId = 0, priority = 0}}
local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList = {}
local n = 5324001
local n2 = 1
paramList[1] = 5324
paramList[2] = n
paramList[3] = n2
tbl2.paramList = paramList
v[1] = tbl2
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = 1435.797, y = 201.9765, z = 9454.507}, rot = {x = 0, y = 38.77335, z = 0}},
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Ignore,
        reactOnBodyLang = reactEnableType.Ignore,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
data.DailyScheduleData = dailyScheduleData
data.TitleData = {titleDatas = {{titleStr = "NPC_TITLE_31025", priority = 1}}}
Config31025.Data = data
return Config31025
