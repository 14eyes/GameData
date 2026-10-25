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
local Config7181 = {}
local data = {NpcId = "7181", Alias = "Npc7181"}
local explicitNameData = {}
local nameDatas = {}
local tbl = {nameStr = "NPC_EXPNAME_7181", priority = 0}
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 119}
local paramList = {}
local n = 3
paramList[1] = 7609921
paramList[2] = n
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList2 = {}
local n2 = 0
paramList2[1] = 7609301
paramList2[2] = n2
tbl3.paramList = paramList2
v[1] = tbl2
v[2] = tbl3
conditions[1] = v
tbl.conditions = conditions
nameDatas[1] = tbl
explicitNameData.nameDatas = nameDatas
data.ExplicitNameData = explicitNameData
Config7181.Data = data
return Config7181
