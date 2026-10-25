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
        NpcId = "1067",
        Alias = "Npc1067",
        NahidaNarratorData = {
            {
                validQuestIds = {40100},
                priority = 300,
                dialogDataList = {{dialogId = 401009913, duration = 0, intervalMin = 20, intervalMax = 30}},
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
            },
            {
                validQuestIds = {40104},
                priority = 300,
                dialogDataList = {{dialogId = 401049907, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4010407,
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
            },
            {
                validQuestIds = {73532},
                priority = 300,
                dialogDataList = {{dialogId = 1018106700, duration = 5, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7353212,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7353201,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {73705},
                priority = 300,
                dialogDataList = {{dialogId = 1018106701, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7370501,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7370502,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {73705},
                priority = 300,
                dialogDataList = {{dialogId = 1018106702, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7370503,
                            questState = questState.UnFinished
                        }
                    }
                }
            }
        }
    }
}
