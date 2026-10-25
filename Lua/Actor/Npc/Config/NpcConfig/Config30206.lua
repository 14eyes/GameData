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
        NpcId = "30206",
        Alias = "Npc30206",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                condition = {activityId = 2014, activityCondId = 2014022, isActivityValid = true, sceneId = 9, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -247.5906, y = 121.7799, z = 418.6548}, rot = {x = 0, y = 119.4117, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {activityId = 2014, activityCondId = 2014025, isActivityValid = true, sceneId = 9, priority = 1},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 613.0291, y = 227.13, z = -426.7346}, rot = {x = 0, y = 166.6609, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {activityId = 2014, activityCondId = 2014026, isActivityValid = true, sceneId = 9, priority = 2},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 584.3452, y = 281.6951, z = -541.0371}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
