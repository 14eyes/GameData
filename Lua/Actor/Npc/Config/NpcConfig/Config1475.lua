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
        NpcId = "1475",
        Alias = "Npc1475",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 1009, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2.204046, y = 0.6436005, z = -2.699051}, rot = {x = 0, y = 57.08526, z = 0}},
                        freestyle = 8073,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            }
        }
    }
}
