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
        NpcId = "12717",
        Alias = "Npc12717",
        NahidaNarratorData = {
            {
                validQuestIds = {23033},
                priority = 300,
                dialogDataList = {{dialogId = 1018127170, duration = 0, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {23035},
                priority = 300,
                dialogDataList = {{dialogId = 1018127171, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
