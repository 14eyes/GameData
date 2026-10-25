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
local Config4198 = {}
local data = {NpcId = "4198", Alias = "Npc4198"}
local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 73002
validQuestIds[1] = 73001
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 30
tbl.dialogDataList = {{dialogId = 1018419800, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7300214,
            questState = questState.None
        }
    }
}

local v = {}
local validQuestIds2 = {}
local n2 = 73002
validQuestIds2[1] = 73001
validQuestIds2[2] = n2
v.validQuestIds = validQuestIds2
v.priority = 30
v.dialogDataList = {{dialogId = 1018419801, duration = 0, intervalMin = 20, intervalMax = 30}}

v.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7300214,
            questState = questState.UnFinished
        }
    }
}

local tbl2 = {
    validQuestIds = {73003},
    priority = 30,
    dialogDataList = {{dialogId = 1018419802, duration = 0, intervalMin = 20, intervalMax = 30}}
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
nahidaNarratorData[3] = tbl2
data.NahidaNarratorData = nahidaNarratorData
Config4198.Data = data
return Config4198
