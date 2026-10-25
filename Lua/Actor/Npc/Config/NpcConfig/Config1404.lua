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
        NpcId = "1404",
        Alias = "Npc1404",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Night, sceneId = 1009, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -0.1778831, y = 0.6903509, z = -2.132206}, rot = {x = 0, y = 258.7598, z = 0}},
                        freestyle = 8073,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            }
        }
    }
}
