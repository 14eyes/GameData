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
        NpcId = "30272",
        Alias = "Npc30272",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {activityId = 5108, activityCondId = 5108017, isActivityValid = true, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2806.75, y = 227.168, z = -4471.228}, rot = {x = 0, y = -82.124, z = 0}},
                        freestyle = 1130,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
