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
local Config31096 = {}
local data = {NpcId = "31096", Alias = "Npc31096"}
local dailyScheduleData = {refreshDailyActionImmediately = true}
local tbl = {bornConfigId = 703109600, condition = {sceneId = 0, priority = 1}}
local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList = {}
local n = 3
paramList[1] = 7750102
paramList[2] = n
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 31, paramList = {2050}}
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
        dummypoint = {pos = {x = 9352.022, y = 248.9118, z = 6707.493}, rot = {x = 0, y = 228.6386, z = 0}},
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
data.DailyScheduleData = dailyScheduleData
local billboardMarkData = {}
local markDatas = {}
local tbl5 = {icon = "UI_NPCTopIcon_Activity_RankedMatch_Train", priority = 0}
local conditions = {}
local tbl6 = {}
local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 31, paramList = {2050}}
local tbl8 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList3 = {}
local n4 = 3
paramList3[1] = 7750103
paramList3[2] = n4
tbl8.paramList = paramList3
tbl6[1] = tbl7
tbl6[2] = tbl8
conditions[1] = tbl6
tbl5.conditions = conditions
markDatas[1] = tbl5
billboardMarkData.markDatas = markDatas
data.BillboardMarkData = billboardMarkData
Config31096.Data = data
return Config31096
