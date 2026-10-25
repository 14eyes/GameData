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
local Config30549 = {}
local data = {NpcId = "30549", Alias = "Npc30549"}
local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 73704
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.dialogDataList = {{dialogId = 1018305490, duration = 0, intervalMin = 20, intervalMax = 30}}
nahidaNarratorData[1] = tbl
data.NahidaNarratorData = nahidaNarratorData
Config30549.Data = data
return Config30549
