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
local Config31118 = {}
local data = {NpcId = "31118", Alias = "Npc31118"}
local dailyScheduleData = {refreshDailyActionImmediately = true}
local tbl = {bornConfigId = 703111800, condition = {sceneId = 0, priority = 1}}
local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 31, paramList = {2050}}
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList = {}
local n = 1
paramList[1] = 7750103
paramList[2] = n
tbl3.paramList = paramList
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 170}
local paramList2 = {}
local n2 = 2051
local n3 = 1
paramList2[1] = 3
paramList2[2] = n2
paramList2[3] = n3
tbl4.paramList = paramList2
v[1] = tbl2
v[2] = tbl3
v[3] = tbl4
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = 9324.851, y = 249.2938, z = 6700.398}, rot = {x = 0, y = 117.8535, z = 0}},
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

local tbl5 = {bornConfigId = 703111801, condition = {sceneId = 0, priority = 2}}
local conditionGrp2 = {}
local tbl6 = {}
local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 31, paramList = {2050}}
local tbl8 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList3 = {}
local n4 = 2
paramList3[1] = 7750101
paramList3[2] = n4
tbl8.paramList = paramList3
local tbl9 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 170}
local paramList4 = {}
local n5 = 2051
local n6 = 1
paramList4[1] = 3
paramList4[2] = n5
paramList4[3] = n6
tbl9.paramList = paramList4
tbl6[1] = tbl7
tbl6[2] = tbl8
tbl6[3] = tbl9
conditionGrp2[1] = tbl6
tbl5.conditionGrp = conditionGrp2

tbl5.actionPoints = {
    {
        dummypoint = {pos = {x = 9321.063, y = 249.21, z = 6703.516}, rot = {x = 0, y = 318.4698, z = 0}},
        freestyle = 1240,
        lookAtType = focusToPlayerType.Ignore,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = tbl5
data.DailyScheduleData = dailyScheduleData
Config31118.Data = data
return Config31118
