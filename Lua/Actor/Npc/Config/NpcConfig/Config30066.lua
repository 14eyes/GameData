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
        NpcId = "30066",
        Alias = "Npc30066",
        DailyScheduleData = {
            {
                condition = {activityId = 2007, activityCondId = 2007000, isActivityValid = true, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -523.2596, y = 209.7895, z = 306.4598}, rot = {x = 0, y = 18.78674, z = 0}},
                        freestyle = 1120,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
