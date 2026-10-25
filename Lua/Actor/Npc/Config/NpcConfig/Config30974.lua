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
local Config30974 = {}
local data = {NpcId = "30974", Alias = "Npc30974"}
local dailyScheduleData = {refreshDailyActionImmediately = true}
local tbl = {bornConfigId = 633097400, condition = {sceneId = 0, priority = 1}}
local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList = {}
local n = 2
paramList[1] = 7055701
paramList[2] = n
tbl2.paramList = paramList
v[1] = tbl2
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = 2211.129, y = 230.0885, z = -779.1476}, rot = {x = 0, y = 155.0837, z = 0}},
        lookAtType = focusToPlayerType.Ignore,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

local tbl3 = {bornConfigId = 633097400, condition = {sceneId = 0, priority = 0}}
local conditionGrp2 = {}
local tbl4 = {}
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList2 = {}
local n2 = 3
paramList2[1] = 7055701
paramList2[2] = n2
tbl5.paramList = paramList2
tbl4[1] = tbl5
conditionGrp2[1] = tbl4
tbl3.conditionGrp = conditionGrp2

tbl3.actionPoints = {
    {
        dummypoint = {pos = {x = 2212.437, y = 230.0885, z = -778.025}, rot = {x = 0, y = 232.5631, z = 0}},
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = tbl3
data.DailyScheduleData = dailyScheduleData
data.TitleData = {titleDatas = {{titleStr = "NPC_TITLE_30974", priority = 0}}}
Config30974.Data = data
return Config30974
