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
local Config16675 = {}
local data = {NpcId = "16675", Alias = "Npc16675"}
local explicitNameData = {}
local nameDatas = {}
local tbl = {nameStr = "NPC_EXPNAME_16675", priority = 0, hideInBillboard = true, isBanDaily = false}
local validQuestIds = {}
local n = 3036
validQuestIds[1] = 3035
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds

tbl.conditions = {
    {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 3035, questState = 2}},
    {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 3036, questState = 2}}
}

nameDatas[1] = tbl
explicitNameData.nameDatas = nameDatas
data.ExplicitNameData = explicitNameData
Config16675.Data = data
return Config16675
