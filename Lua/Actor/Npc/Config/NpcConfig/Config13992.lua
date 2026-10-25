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
        NpcId = "13992",
        Alias = "Npc13992",
        NahidaNarratorData = {
            {
                validQuestIds = {13039},
                priority = 300,
                dialogDataList = {{dialogId = 130399908, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1303903,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1303904,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1303905,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {13040},
                priority = 300,
                dialogDataList = {
                    {dialogId = 130409901, duration = 0, intervalMin = 20, intervalMax = 30},
                    {dialogId = 130409902, duration = 0, intervalMin = 20, intervalMax = 30}
                },
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1304001,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {13039},
                priority = 300,
                dialogDataList = {
                    {dialogId = 130399904, duration = 0, intervalMin = 20, intervalMax = 30},
                    {dialogId = 130399905, duration = 0, intervalMin = 20, intervalMax = 30},
                    {dialogId = 130399906, duration = 0, intervalMin = 20, intervalMax = 30}
                },
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1303902,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1303901,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {40211},
                priority = 300,
                dialogDataList = {{dialogId = 1018139920, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
