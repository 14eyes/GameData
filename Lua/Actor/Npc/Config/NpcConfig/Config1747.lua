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
        NpcId = "1747",
        Alias = "Npc1747",
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 201,
                dialogDataList = {{dialogId = 1018174700, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2043,
                            activityCondId = 2043002,
                            isActivityValid = true
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7370503,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {0},
                priority = 202,
                dialogDataList = {{dialogId = 1018174701, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7370601,
                            questState = questState.Finished
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2043,
                            activityCondId = 2043004,
                            isActivityValid = true
                        }
                    }
                }
            }
        }
    }
}
