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
local Config17182 = {}
local data = {NpcId = "17182", Alias = "Npc17182"}
local dailyScheduleData = {}
local tbl = {bornConfigId = 701718200, condition = {sceneId = 0, priority = 0}}
local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList = {}
local n = 1
paramList[1] = 7750401
paramList[2] = n
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 31, paramList = {5333}}
v[1] = tbl2
v[2] = tbl3
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = 9418.131, y = 250.16, z = 7599.685}, rot = {x = 0, y = 272.3994, z = 0}},
        freestyle = 1230,
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

local tbl4 = {bornConfigId = 701718201, condition = {sceneId = 0, priority = 0}}
local conditionGrp2 = {}
local tbl5 = {}
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList2 = {}
local n2 = 2
paramList2[1] = 7750401
paramList2[2] = n2
tbl6.paramList = paramList2
local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 31, paramList = {5333}}
tbl5[1] = tbl6
tbl5[2] = tbl7
conditionGrp2[1] = tbl5
tbl4.conditionGrp = conditionGrp2

tbl4.actionPoints = {
    {
        dummypoint = {pos = {x = 9425.614, y = 250.1908, z = 7604.25}, rot = {x = 0, y = 339.9995, z = 0}},
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = tbl4
data.DailyScheduleData = dailyScheduleData
local titleDataNew = {}
local titleDatas = {}
local tbl8 = {titleStr = "NPC_TITLE_17182", priority = 0}
local conditions = {}
local tbl9 = {}
local tbl10 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList3 = {}
local n3 = 1
paramList3[1] = 7750401
paramList3[2] = n3
tbl10.paramList = paramList3
local tbl11 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 31, paramList = {5333}}
tbl9[1] = tbl10
tbl9[2] = tbl11
conditions[1] = tbl9
tbl8.conditions = conditions
titleDatas[1] = tbl8
titleDataNew.titleDatas = titleDatas
data.TitleDataNew = titleDataNew
Config17182.Data = data
return Config17182
