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
        NpcId = "12710",
        Alias = "Npc12710",
        NahidaNarratorData = {
            {
                validQuestIds = {23036},
                priority = 300,
                dialogDataList = {{dialogId = 1018127100, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{}}
            },
            {
                validQuestIds = {73104},
                priority = 300,
                dialogDataList = {{dialogId = 1018127101, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{}}
            }
        }
    }
}
