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
        NpcId = "20842",
        Alias = "Npc20842",
        NahidaNarratorData = {
            {
                validQuestIds = {73279},
                priority = 310,
                dialogDataList = {{dialogId = 1018208420, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7327901,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73281},
                priority = 311,
                dialogDataList = {{dialogId = 1018208421, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 73279, questState = 3}}}
            },
            {
                validQuestIds = {73281},
                priority = 312,
                dialogDataList = {{dialogId = 1018208422, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7328105,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73281},
                priority = 313,
                dialogDataList = {{dialogId = 1018208423, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7328119,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73281},
                priority = 314,
                dialogDataList = {{dialogId = 1018208424, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7328135,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73282},
                priority = 315,
                dialogDataList = {{dialogId = 1018208425, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 73281, questState = 3}}}
            },
            {
                validQuestIds = {73282},
                priority = 316,
                dialogDataList = {{dialogId = 1018208426, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7328201,
                            questState = questState.Finished
                        }
                    }
                }
            }
        }
    }
}
