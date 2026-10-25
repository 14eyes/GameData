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
local Config1064 = {}
local data = {NpcId = "1064", Alias = "Npc1064"}
local nahidaNarratorData = {}

local tbl = {
    validQuestIds = {13023},
    priority = 300,
    dialogDataList = {
        {dialogId = 130239902, duration = 0, intervalMin = 20, intervalMax = 30},
        {dialogId = 130239903, duration = 0, intervalMin = 20, intervalMax = 30},
        {dialogId = 130239904, duration = 0, intervalMin = 20, intervalMax = 30},
        {dialogId = 130239905, duration = 0, intervalMin = 20, intervalMax = 30}
    },
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1302304,
                questState = questState.UnFinished
            }
        }
    }
}

local v = {
    validQuestIds = {40100},
    priority = 300,
    dialogDataList = {{dialogId = 401009912, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4010003,
                questState = questState.Finished
            },
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4010013,
                questState = questState.None
            }
        }
    }
}

local tbl2 = {}
local validQuestIds = {}
local n = 40106
validQuestIds[1] = 40102
validQuestIds[2] = n
tbl2.validQuestIds = validQuestIds
tbl2.priority = 300
tbl2.dialogDataList = {{dialogId = 401029905, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl2.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 4010205,
            questState = questState.UnFinished
        }
    },
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 4010601,
            questState = questState.UnFinished
        }
    }
}

local tbl3 = {
    validQuestIds = {40104},
    priority = 300,
    dialogDataList = {{dialogId = 401049909, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4010404,
                questState = questState.Finished
            },
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4010406,
                questState = questState.None
            }
        },
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4010406,
                questState = questState.UnFinished
            }
        }
    }
}

local tbl4 = {
    validQuestIds = {13036},
    priority = 300,
    dialogDataList = {
        {dialogId = 130369905, duration = 0, intervalMin = 20, intervalMax = 30},
        {dialogId = 130369906, duration = 0, intervalMin = 20, intervalMax = 30}
    },
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1303607,
                questState = questState.UnFinished
            }
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
nahidaNarratorData[3] = tbl2
nahidaNarratorData[4] = tbl3
nahidaNarratorData[5] = tbl4
data.NahidaNarratorData = nahidaNarratorData
Config1064.Data = data
return Config1064
