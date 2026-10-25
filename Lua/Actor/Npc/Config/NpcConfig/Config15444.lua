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
local Config15444 = {}
local data = {NpcId = "15444", Alias = "Npc15444"}
local explicitNameData = {}
local nameDatas = {}
local tbl = {nameStr = "NPC_EXPNAME_15444", priority = 0, hideInBillboard = true}
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList = {}
local n = 2
paramList[1] = 7665109
paramList[2] = n
tbl2.paramList = paramList
v[1] = tbl2
local tbl3 = {}
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList2 = {}
local n2 = 2
paramList2[1] = 7665107
paramList2[2] = n2
tbl4.paramList = paramList2
tbl3[1] = tbl4
conditions[1] = v
conditions[2] = tbl3
tbl.conditions = conditions
nameDatas[1] = tbl
explicitNameData.nameDatas = nameDatas
data.ExplicitNameData = explicitNameData
Config15444.Data = data
return Config15444
