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
local Config31091 = {}
local data = {NpcId = "31091", Alias = "Npc31091"}
local dailyScheduleData = {}
local tbl = {bornConfigId = 673109100, condition = {sceneId = 0, priority = 0}}
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
v[1] = tbl2
v[2] = tbl3
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = -172.0281, y = 201.4042, z = 13647.38}, rot = {x = 0, y = 145.0072, z = 0}},
        freestyle = 4446,
        lookAtType = focusToPlayerType.Ignore,
        reactOnCollide = reactEnableType.Ignore,
        reactOnBodyLang = reactEnableType.Ignore,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
data.DailyScheduleData = dailyScheduleData
local billboardMarkData = {}
local markDatas = {}
local tbl4 = {icon = "UI_NPCTopIcon_Activity_MusicParty", priority = 0}
local conditions = {}
local tbl5 = {}
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList3 = {}
local n4 = 5328001
local n5 = 1
paramList3[1] = 5328
paramList3[2] = n4
paramList3[3] = n5
tbl6.paramList = paramList3
tbl5[1] = tbl6
conditions[1] = tbl5
tbl4.conditions = conditions
markDatas[1] = tbl4
billboardMarkData.markDatas = markDatas
data.BillboardMarkData = billboardMarkData
Config31091.Data = data
return Config31091
