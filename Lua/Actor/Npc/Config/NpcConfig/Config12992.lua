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
        NpcId = "12992",
        Alias = "Npc12992",
        NahidaNarratorData = {
            {
                validQuestIds = {3029},
                priority = 300,
                dialogDataList = {{dialogId = 30299801, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 3029, questState = 2}}}
            },
            {
                validQuestIds = {3032},
                priority = 300,
                dialogDataList = {{dialogId = 30329801, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 3032, questState = 2}}}
            },
            {
                validQuestIds = {3031},
                priority = 300,
                dialogDataList = {{dialogId = 30319803, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 3031, questState = 2}}}
            }
        }
    }
}
