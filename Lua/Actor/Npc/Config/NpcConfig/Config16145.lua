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
local Config16145 = {}
local data = {NpcId = "16145", Alias = "Npc16145"}
local explicitNameData = {}
local nameDatas = {}

local tbl = {
    nameStr = "NPC_EXPNAME_16145",
    priority = 1,
    isBanDaily = false,
    validQuestIds = {40230},
    conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 40230, questState = 2}}}
}

local v = {nameStr = "NPC_EXPNAME_16145_1", priority = 2, isBanDaily = false, validQuestIds = {40229}}
local conditions = {}
local tbl2 = {}
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 110}
local paramList = {}
local n = 4022908
paramList[1] = 4022911
paramList[2] = n
tbl3.paramList = paramList
tbl2[1] = tbl3
conditions[1] = tbl2
v.conditions = conditions
nameDatas[1] = tbl
nameDatas[2] = v
explicitNameData.nameDatas = nameDatas
data.ExplicitNameData = explicitNameData
Config16145.Data = data
return Config16145
