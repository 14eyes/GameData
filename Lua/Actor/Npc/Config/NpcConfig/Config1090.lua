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
local Config1090 = {}
local data = {NpcId = "1090", Alias = "Npc1090"}
local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 14038
local v = 14039
validQuestIds[1] = 14037
validQuestIds[2] = n
validQuestIds[3] = v
tbl.validQuestIds = validQuestIds
tbl.priority = 300
tbl.dialogDataList = {{dialogId = 1018109000, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 1403712,
            questState = questState.UnFinished
        }
    },
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 1403712,
            questState = questState.Finished
        },
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 1403810,
            questState = questState.None
        }
    },
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 1403815,
            questState = questState.UnFinished
        }
    },
    {
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 1403815,
            questState = questState.Finished
        },
        {
            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
            subQuestId = 1403922,
            questState = questState.None
        }
    }
}

local tbl2 = {
    validQuestIds = {14038},
    priority = 300,
    dialogDataList = {{dialogId = 1018109001, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1403810,
                questState = questState.UnFinished
            }
        },
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1403810,
                questState = questState.Finished
            },
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1403812,
                questState = questState.None
            }
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = tbl2
data.NahidaNarratorData = nahidaNarratorData
Config1090.Data = data
return Config1090
