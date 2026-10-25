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
local Config13191 = {}
local data = {NpcId = "13191", Alias = "Npc13191"}
local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 13026
validQuestIds[1] = 13025
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 300
tbl.disable = true
tbl.dialogDataList = {}
nahidaNarratorData[1] = tbl
data.NahidaNarratorData = nahidaNarratorData
Config13191.Data = data
return Config13191
