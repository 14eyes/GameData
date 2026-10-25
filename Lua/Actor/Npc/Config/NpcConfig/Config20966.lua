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
local Config20966 = {}
local data = {NpcId = "20966", Alias = "Npc20966"}
local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 73329
local v = 73330
validQuestIds[1] = 73285
validQuestIds[2] = n
validQuestIds[3] = v
tbl.validQuestIds = validQuestIds
tbl.priority = 300
tbl.dialogDataList = {{dialogId = 1018209660, duration = 0, intervalMin = 20, intervalMax = 30}}
nahidaNarratorData[1] = tbl
data.NahidaNarratorData = nahidaNarratorData
Config20966.Data = data
return Config20966
