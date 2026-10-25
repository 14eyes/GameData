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
        NpcId = "13007",
        Alias = "Npc13007",
        NahidaNarratorData = {
            {
                validQuestIds = {13021},
                priority = 300,
                dialogDataList = {{dialogId = 130219901, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1302103,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1302104,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {13021},
                priority = 300,
                dialogDataList = {{dialogId = 130219906, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1302101,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1302102,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {13021},
                priority = 300,
                dialogDataList = {{dialogId = 130219905, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1302108,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1302109,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1302110,
                            questState = questState.UnFinished
                        }
                    }
                }
            }
        }
    }
}
