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
        NpcId = "13242",
        Alias = "Npc13242",
        NahidaNarratorData = {
            {
                validQuestIds = {19078},
                priority = 300,
                dialogDataList = {{dialogId = 1018132420, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1907806,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {19078},
                priority = 300,
                dialogDataList = {{dialogId = 1018132421, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1907807,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {19078},
                priority = 300,
                dialogDataList = {{dialogId = 1018132422, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1907815,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1907816,
                            questState = questState.UnFinished
                        }
                    }
                }
            }
        }
    }
}
