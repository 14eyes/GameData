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
        NpcId = "1055",
        Alias = "Npc1055",
        NahidaNarratorData = {
            {
                validQuestIds = {19072},
                priority = 300,
                dialogDataList = {{dialogId = 1018105500, duration = 0, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {19074},
                priority = 300,
                dialogDataList = {{dialogId = 1018105501, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1907401,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {19074},
                priority = 300,
                dialogDataList = {
                    {dialogId = 1018105502, duration = 0, intervalMin = 20, intervalMax = 30},
                    {dialogId = 1018105503, duration = 0, intervalMin = 20, intervalMax = 30}
                },
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1907402,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1907403,
                            questState = questState.UnFinished
                        }
                    }
                }
            }
        }
    }
}
