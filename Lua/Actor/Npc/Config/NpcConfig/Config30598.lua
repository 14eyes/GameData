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
        NpcId = "30598",
        Alias = "Npc30598",
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                dialogDataList = {{dialogId = 1018305980, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2032,
                            activityCondId = 2032004,
                            isActivityValid = true
                        },
                        {_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 40165, questState = 3}
                    }
                }
            }
        }
    }
}
