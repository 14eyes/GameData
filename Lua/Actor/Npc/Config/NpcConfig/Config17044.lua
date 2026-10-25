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
local Config17044 = {}
local data = {NpcId = "17044", Alias = "Npc17044"}
local dailyScheduleData = {}
local tbl = {bornConfigId = 671704400, condition = {sceneId = 0, priority = 0}}
local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList = {}
local n = 5328001
local n2 = 1
paramList[1] = 5328
paramList[2] = n
paramList[3] = n2
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList2 = {}
local n3 = 1
paramList2[1] = 7567401
paramList2[2] = n3
tbl3.paramList = paramList2
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList3 = {}
local n4 = 0
paramList3[1] = 7567501
paramList3[2] = n4
tbl4.paramList = paramList3
v[1] = tbl2
v[2] = tbl3
v[3] = tbl4
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = -177.7913, y = 201.382, z = 13660.13}, rot = {x = 0, y = 244.7128, z = 0}},
        freestyle = 1230,
        lookAtType = focusToPlayerType.Ignore,
        reactOnCollide = reactEnableType.Ignore,
        reactOnBodyLang = reactEnableType.Ignore,
        action = generalPattern.Stand
    }
}

local tbl5 = {bornConfigId = 671704401, condition = {sceneId = 0, priority = 0}}
local conditionGrp2 = {}
local tbl6 = {}
local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList4 = {}
local n5 = 5328008
local n6 = 1
paramList4[1] = 5328
paramList4[2] = n5
paramList4[3] = n6
tbl7.paramList = paramList4
local tbl8 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList5 = {}
local n7 = 1
paramList5[1] = 7567501
paramList5[2] = n7
tbl8.paramList = paramList5
tbl6[1] = tbl7
tbl6[2] = tbl8
conditionGrp2[1] = tbl6
tbl5.conditionGrp = conditionGrp2

tbl5.actionPoints = {
    {
        dummypoint = {pos = {x = -154.7911, y = 200.2969, z = 13645.78}, rot = {x = 0, y = 27.2338, z = 0}},
        lookAtType = focusToPlayerType.Ignore,
        reactOnCollide = reactEnableType.Ignore,
        reactOnBodyLang = reactEnableType.Ignore,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = tbl5
data.DailyScheduleData = dailyScheduleData
Config17044.Data = data
return Config17044
