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
local Config16516 = {}
local data = {NpcId = "16516", Alias = "Npc16516"}
local titleData = {}
local titleDatas = {}
local tbl = {titleStr = "NPC_TITLE_16516", priority = 0, isBanDaily = true}
local validQuestIds = {}
local n = 16019
local v = 16020
validQuestIds[1] = 16018
validQuestIds[2] = n
validQuestIds[3] = v
tbl.validQuestIds = validQuestIds
titleDatas[1] = tbl
titleData.titleDatas = titleDatas
data.TitleData = titleData
Config16516.Data = data
return Config16516
