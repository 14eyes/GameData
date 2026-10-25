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
local Config15854 = {}
local data = {NpcId = "15854", Alias = "Npc15854"}
local explicitNameData = {}
local nameDatas = {}
local tbl = {nameStr = "NPC_EXPNAME_15854", priority = 0, hideInBillboard = true, isBanDaily = false}
local validQuestIds = {}
local n = 40220
validQuestIds[1] = 40218
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList = {}
local n2 = 2
paramList[1] = 4021818
paramList[2] = n2
tbl2.paramList = paramList
v[1] = tbl2
local tbl3 = {}
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList2 = {}
local n3 = 2
paramList2[1] = 4022002
paramList2[2] = n3
tbl4.paramList = paramList2
tbl3[1] = tbl4
local tbl5 = {}
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList3 = {}
local n4 = 2
paramList3[1] = 4022016
paramList3[2] = n4
tbl6.paramList = paramList3
tbl5[1] = tbl6
local tbl7 = {}
local tbl8 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList4 = {}
local n5 = 2
paramList4[1] = 4022003
paramList4[2] = n5
tbl8.paramList = paramList4
tbl7[1] = tbl8
conditions[1] = v
conditions[2] = tbl3
conditions[3] = tbl5
conditions[4] = tbl7
tbl.conditions = conditions
nameDatas[1] = tbl
explicitNameData.nameDatas = nameDatas
data.ExplicitNameData = explicitNameData
Config15854.Data = data
return Config15854
