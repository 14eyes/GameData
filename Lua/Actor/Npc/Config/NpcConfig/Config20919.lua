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

return {
    Data = {
        NpcId = "20919",
        Alias = "Npc20919",
        NahidaNarratorData = {
            {
                validQuestIds = {73052},
                priority = 301,
                dialogDataList = {{dialogId = 1018209190, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305207,
                            questState = questState.Finished
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305208,
                            questState = questState.Finished
                        }
                    },
                    {}
                }
            },
            {
                validQuestIds = {73053},
                priority = 302,
                dialogDataList = {{dialogId = 1018209191, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305302,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73053},
                priority = 303,
                dialogDataList = {{dialogId = 1018209192, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305322,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73055},
                priority = 304,
                dialogDataList = {{dialogId = 1018209193, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305505,
                            questState = questState.Finished
                        }
                    }
                }
            }
        }
    }
}
