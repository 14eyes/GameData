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
        NpcId = "30271",
        Alias = "Npc30271",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {activityId = 5108, activityCondId = 5108017, isActivityValid = true, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2808.201, y = 227.44, z = -4471.606}, rot = {x = 0, y = -111.287, z = 0}},
                        freestyle = 1060,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
