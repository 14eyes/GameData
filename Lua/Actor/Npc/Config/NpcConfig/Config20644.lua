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
local Config20644 = {}
local data = {NpcId = "20644", Alias = "Npc20644"}
local nahidaNarratorData = {}

local tbl = {
    validQuestIds = {73001},
    priority = 30,
    dialogDataList = {{dialogId = 1018206440, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 7300118,
                questState = questState.None
            }
        },
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 7300118,
                questState = questState.UnFinished
            }
        }
    }
}

local v = {}
local validQuestIds = {}
local n = 73025
validQuestIds[1] = 73001
validQuestIds[2] = n
v.validQuestIds = validQuestIds
v.priority = 30
v.dialogDataList = {{dialogId = 1018206441, duration = 0, intervalMin = 20, intervalMax = 30}}

v.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 7300118,
            questState = questState.Finished
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
data.NahidaNarratorData = nahidaNarratorData
Config20644.Data = data
return Config20644
