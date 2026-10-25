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
        NpcId = "513",
        Alias = "Coop_Faruzan",
        NahidaNarratorData = {
            {
                validQuestIds = {19170},
                priority = 300,
                dialogDataList = {{dialogId = 1018051300, duration = 0, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {19171},
                priority = 300,
                dialogDataList = {{dialogId = 1018051301, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1917103,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1917104,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {19172},
                priority = 300,
                dialogDataList = {{dialogId = 1018051302, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1917206,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1917208,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {19173},
                priority = 300,
                dialogDataList = {{dialogId = 1018051303, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1917305,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {19173},
                priority = 300,
                dialogDataList = {{dialogId = 1018051304, duration = 3, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1917318,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1917319,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1917325,
                            questState = questState.UnFinished
                        }
                    }
                }
            }
        }
    }
}
