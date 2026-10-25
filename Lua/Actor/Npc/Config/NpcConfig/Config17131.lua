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
local Config17131 = {}
local data = {NpcId = "17131", Alias = "Npc17131"}
local explicitNameData = {}
local nameDatas = {}
local tbl = {nameStr = "NPC_EXPNAME_17131", priority = 0, isBanDaily = false, validQuestIds = {40249}}
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList = {}
local n = 2
paramList[1] = 4024903
paramList[2] = n
tbl2.paramList = paramList
v[1] = tbl2
local tbl3 = {}
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList2 = {}
local n2 = 2
paramList2[1] = 4024904
paramList2[2] = n2
tbl4.paramList = paramList2
tbl3[1] = tbl4
local tbl5 = {}
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList3 = {}
local n3 = 2
paramList3[1] = 4024905
paramList3[2] = n3
tbl6.paramList = paramList3
tbl5[1] = tbl6
local tbl7 = {}
local tbl8 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList4 = {}
local n4 = 2
paramList4[1] = 4024906
paramList4[2] = n4
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
Config17131.Data = data
return Config17131
