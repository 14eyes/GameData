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
local Config6674 = {}
local data = {NpcId = "6674", Alias = "Npc6674"}
local dailyScheduleData = {}
local tbl = {bornConfigId = 676674000, condition = {sceneId = 0, priority = 0}}
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
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList4 = {}
local n5 = 0
paramList4[1] = 7567402
paramList4[2] = n5
tbl5.paramList = paramList4
v[1] = tbl2
v[2] = tbl3
v[3] = tbl4
v[4] = tbl5
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = -174.9536, y = 201.3869, z = 13638.55}, rot = {x = 0, y = 210.3168, z = 0}},
        freestyle = 1190,
        lookAtType = focusToPlayerType.Ignore,
        reactOnCollide = reactEnableType.Ignore,
        reactOnBodyLang = reactEnableType.Ignore,
        action = generalPattern.Stand
    }
}

local tbl6 = {bornConfigId = 676674001, condition = {sceneId = 0, priority = 0}}
local conditionGrp2 = {}
local tbl7 = {}
local tbl8 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList5 = {}
local n6 = 5328001
local n7 = 1
paramList5[1] = 5328
paramList5[2] = n6
paramList5[3] = n7
tbl8.paramList = paramList5
local tbl9 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList6 = {}
local n8 = 1
paramList6[1] = 7567401
paramList6[2] = n8
tbl9.paramList = paramList6
local tbl10 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList7 = {}
local n9 = 0
paramList7[1] = 7567501
paramList7[2] = n9
tbl10.paramList = paramList7
local tbl11 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList8 = {}
local n10 = 1
paramList8[1] = 7567402
paramList8[2] = n10
tbl11.paramList = paramList8
tbl7[1] = tbl8
tbl7[2] = tbl9
tbl7[3] = tbl10
tbl7[4] = tbl11
conditionGrp2[1] = tbl7
tbl6.conditionGrp = conditionGrp2

tbl6.actionPoints = {
    {
        dummypoint = {pos = {x = -171.861, y = 201.3105, z = 13637.63}, rot = {x = 0, y = 153.8362, z = 0}},
        freestyle = 1050,
        lookAtType = focusToPlayerType.Ignore,
        reactOnCollide = reactEnableType.Ignore,
        reactOnBodyLang = reactEnableType.Ignore,
        action = generalPattern.Stand
    }
}

local tbl12 = {bornConfigId = 676674002, condition = {sceneId = 0, priority = 0}}
local conditionGrp3 = {}
local tbl13 = {}
local tbl14 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList9 = {}
local n11 = 5328008
local n12 = 1
paramList9[1] = 5328
paramList9[2] = n11
paramList9[3] = n12
tbl14.paramList = paramList9
local tbl15 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList10 = {}
local n13 = 1
paramList10[1] = 7567501
paramList10[2] = n13
tbl15.paramList = paramList10
local tbl16 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList11 = {}
local n14 = 1
paramList11[1] = 7567502
paramList11[2] = n14
tbl16.paramList = paramList11
tbl13[1] = tbl14
tbl13[2] = tbl15
tbl13[3] = tbl16
conditionGrp3[1] = tbl13
tbl12.conditionGrp = conditionGrp3

tbl12.actionPoints = {
    {
        dummypoint = {pos = {x = -170.266, y = 201.3141, z = 13638.49}, rot = {x = 0, y = 281.1581, z = 0}},
        freestyle = 1190,
        lookAtType = focusToPlayerType.Ignore,
        reactOnCollide = reactEnableType.Ignore,
        reactOnBodyLang = reactEnableType.Ignore,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = tbl6
dailyScheduleData[3] = tbl12
data.DailyScheduleData = dailyScheduleData
Config6674.Data = data
return Config6674
