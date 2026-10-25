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
local Config14115 = {}

local data = {
    NpcId = "14115",
    Alias = "Npc14115",
    TitleDataNew = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_14115",
                priority = 0,
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
            }
        }
    }
}

local nahidaNarratorData = {}

local tbl = {
    validQuestIds = {14037},
    priority = 300,
    dialogDataList = {{dialogId = 1018141150, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1403706,
                questState = questState.UnFinished
            }
        }
    }
}

local v = {
    validQuestIds = {14038},
    priority = 300,
    dialogDataList = {{dialogId = 1018141151, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1403802,
                questState = questState.UnFinished
            }
        },
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1403802,
                questState = questState.Finished
            },
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1403820,
                questState = questState.None
            }
        }
    }
}

local tbl2 = {}
local validQuestIds = {}
local n = 14039
validQuestIds[1] = 14038
validQuestIds[2] = n
tbl2.validQuestIds = validQuestIds
tbl2.priority = 300
tbl2.dialogDataList = {{dialogId = 1018141152, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl2.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 1403813,
            questState = questState.UnFinished
        }
    },
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 1403813,
            questState = questState.Finished
        },
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 1403920,
            questState = questState.None
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
nahidaNarratorData[3] = tbl2
data.NahidaNarratorData = nahidaNarratorData
Config14115.Data = data
return Config14115
