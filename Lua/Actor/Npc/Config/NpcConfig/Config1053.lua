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
        NpcId = "1053",
        Alias = "Npc1053",
        NahidaNarratorData = {
            {
                validQuestIds = {13023},
                priority = 300,
                dialogDataList = {{dialogId = 130239901, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1302304,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {40100},
                priority = 300,
                dialogDataList = {{dialogId = 401009917, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4010012,
                            questState = questState.Finished
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4010026,
                            questState = questState.None
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4010026,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {40101},
                priority = 300,
                dialogDataList = {{dialogId = 401019911, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4010101,
                            questState = questState.Finished
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4010113,
                            questState = questState.None
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4010113,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {13036},
                priority = 300,
                dialogDataList = {
                    {dialogId = 130369907, duration = 0, intervalMin = 20, intervalMax = 30},
                    {dialogId = 130369908, duration = 0, intervalMin = 20, intervalMax = 30}
                },
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1303607,
                            questState = questState.UnFinished
                        }
                    }
                }
            }
        }
    }
}
