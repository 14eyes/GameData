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
local Config1051 = {}
local data = {NpcId = "1051", Alias = "Npc1051"}
local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 19171
local v = 19172
validQuestIds[1] = 19170
validQuestIds[2] = n
validQuestIds[3] = v
tbl.validQuestIds = validQuestIds
tbl.priority = 300
tbl.dialogDataList = {{dialogId = 1018105100, duration = 0, intervalMin = 20, intervalMax = 30}}

local tbl2 = {
    validQuestIds = {19173},
    priority = 301,
    dialogDataList = {{dialogId = 1018105101, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local tbl3 = {
    validQuestIds = {19173},
    priority = 302,
    dialogDataList = {{dialogId = 1018105102, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1917324,
                questState = questState.Finished
            }
        }
    }
}

local tbl4 = {
    validQuestIds = {40104},
    priority = 300,
    dialogDataList = {{dialogId = 401049910, duration = 0, intervalMin = 20, intervalMax = 30}},
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

local tbl5 = {
    validQuestIds = {13036},
    priority = 300,
    dialogDataList = {{dialogId = 130369909, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1303607,
                questState = questState.UnFinished
            }
        },
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1303608,
                questState = questState.UnFinished
            }
        }
    }
}

local tbl6 = {}
local validQuestIds2 = {}
local n2 = 14039
validQuestIds2[1] = 14038
validQuestIds2[2] = n2
tbl6.validQuestIds = validQuestIds2
tbl6.priority = 300
tbl6.dialogDataList = {{dialogId = 1018105103, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl6.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 1403820,
            questState = questState.Finished
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = tbl2
nahidaNarratorData[3] = tbl3
nahidaNarratorData[4] = tbl4
nahidaNarratorData[5] = tbl5
nahidaNarratorData[6] = tbl6
data.NahidaNarratorData = nahidaNarratorData
Config1051.Data = data
return Config1051
