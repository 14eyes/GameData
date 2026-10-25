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
        NpcId = "13235",
        Alias = "Npc13235",
        NahidaNarratorData = {
            {
                validQuestIds = {19058},
                priority = 300,
                dialogDataList = {{dialogId = 1018132350, duration = 0, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {19059},
                priority = 300,
                dialogDataList = {{dialogId = 1018132351, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
