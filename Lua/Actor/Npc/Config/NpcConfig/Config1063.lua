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
local Config1063 = {}
local data = {NpcId = "1063", Alias = "Npc1063"}
local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 40082
local v = 40083
local n2 = 40084
local n3 = 40085
local n4 = 40086
validQuestIds[1] = 40081
validQuestIds[2] = n
validQuestIds[3] = v
validQuestIds[4] = n2
validQuestIds[5] = n3
validQuestIds[6] = n4
tbl.validQuestIds = validQuestIds
tbl.dialogDataList = {{dialogId = 1018106300, duration = 0, intervalMin = 20, intervalMax = 30}}

local tbl2 = {
    validQuestIds = {40100},
    priority = 300,
    dialogDataList = {{dialogId = 401009914, duration = 0, intervalMin = 20, intervalMax = 30}},
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

local tbl3 = {
    validQuestIds = {40104},
    priority = 300,
    dialogDataList = {{dialogId = 401049912, duration = 0, intervalMin = 20, intervalMax = 30}},
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
    validQuestIds = {73532},
    priority = 300,
    dialogDataList = {{dialogId = 1018106301, duration = 5, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 7353202,
                questState = questState.UnFinished
            }
        }
    }
}

local tbl5 = {
    validQuestIds = {40210},
    priority = 300,
    dialogDataList = {{dialogId = 1018106302, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4021002,
                questState = questState.UnFinished
            }
        },
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4021003,
                questState = questState.UnFinished
            }
        }
    }
}

local tbl6 = {
    validQuestIds = {40210},
    priority = 300,
    dialogDataList = {{dialogId = 1018106303, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 4021004,
                questState = questState.UnFinished
            }
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
Config1063.Data = data
return Config1063
