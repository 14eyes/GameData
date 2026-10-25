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
        NpcId = "12964",
        Alias = "Npc12964",
        NahidaNarratorData = {
            {
                validQuestIds = {13014},
                priority = 300,
                dialogDataList = {
                    {dialogId = 130149931, duration = 0, intervalMin = 20, intervalMax = 30},
                    {dialogId = 130149932, duration = 0, intervalMin = 20, intervalMax = 30}
                },
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1301414,
                            questState = questState.UnStarted
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1301414,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1301426,
                            questState = questState.UnStarted
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1301426,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {13015},
                priority = 300,
                dialogDataList = {{dialogId = 130159915, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1301503,
                            questState = questState.UnStarted
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1301503,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1301504,
                            questState = questState.UnStarted
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1301504,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {13014},
                priority = 300,
                dialogDataList = {{dialogId = 1018129640, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1301415,
                            questState = questState.UnFinished
                        }
                    }
                }
            }
        }
    }
}
