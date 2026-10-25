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
local Config1034 = {}
local data = {NpcId = "1034", Alias = "Npc1034"}
local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 40082
local v = 40083
local n2 = 40084
local n3 = 40085
local n4 = 40086
validQuestIds[1] = 40081
validQuestIds[2] = n
validQuestIds[3] = v
validQuestIds[4] = n2
validQuestIds[5] = n3
validQuestIds[6] = n4
tbl.validQuestIds = validQuestIds
tbl.priority = 300
tbl.dialogDataList = {{dialogId = 400819906, duration = 0, intervalMin = 20, intervalMax = 30}}
nahidaNarratorData[1] = tbl
data.NahidaNarratorData = nahidaNarratorData
Config1034.Data = data
return Config1034
