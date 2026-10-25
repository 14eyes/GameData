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
        NpcId = "20821",
        Alias = "Npc20821",
        NahidaNarratorData = {
            {
                validQuestIds = {73083},
                priority = 301,
                dialogDataList = {{dialogId = 1018208210, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7308323,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73083},
                priority = 302,
                dialogDataList = {{dialogId = 1018208211, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7308321,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73083},
                priority = 303,
                dialogDataList = {{dialogId = 1018208212, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7308326,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73110},
                priority = 304,
                dialogDataList = {{dialogId = 1018208213, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7311001,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {73110},
                priority = 305,
                dialogDataList = {{dialogId = 1018208214, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7311001,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73110},
                priority = 306,
                dialogDataList = {{dialogId = 1018208215, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7311003,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73110},
                priority = 306,
                dialogDataList = {{dialogId = 1018208216, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7311004,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73110},
                priority = 306,
                dialogDataList = {{dialogId = 1018208217, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7311005,
                            questState = questState.Finished
                        }
                    }
                }
            }
        }
    }
}
