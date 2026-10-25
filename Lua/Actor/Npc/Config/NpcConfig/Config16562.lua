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
local Config16562 = {}
local data = {NpcId = "16562", Alias = "Npc16562"}
local inteeData = {}
local inteeDatas = {}
local tbl = {icon = "UI_Icon_Intee_PlayerLevel_0", priority = 0}
local validQuestIds = {}
local n = 76189
local v = 76190
local n2 = 76191
local n3 = 76192
local n4 = 76193
local n5 = 76194
local n6 = 76195
local n7 = 76196
local n8 = 76197
local n9 = 76198
local n10 = 76199
local n11 = 76200
local n12 = 76201
validQuestIds[1] = 0
validQuestIds[2] = n
validQuestIds[3] = v
validQuestIds[4] = n2
validQuestIds[5] = n3
validQuestIds[6] = n4
validQuestIds[7] = n5
validQuestIds[8] = n6
validQuestIds[9] = n7
validQuestIds[10] = n8
validQuestIds[11] = n9
validQuestIds[12] = n10
validQuestIds[13] = n11
validQuestIds[14] = n12
tbl.validQuestIds = validQuestIds
local conditions = {}
local tbl2 = {}
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 157}
local paramList = {}
local n13 = 0
local n14 = 1
paramList[1] = 10000130
paramList[2] = n13
paramList[3] = n14
tbl3.paramList = paramList
tbl2[1] = tbl3
conditions[1] = tbl2
tbl.conditions = conditions
inteeDatas[1] = tbl
inteeData.inteeDatas = inteeDatas
data.InteeData = inteeData
Config16562.Data = data
return Config16562
