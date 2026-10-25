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
        NpcId = "30204",
        Alias = "Npc30204",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                condition = {activityId = 2014, activityCondId = 2014022, isActivityValid = true, sceneId = 9, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -236.1926, y = 121.6911, z = 420.4214}, rot = {x = 0, y = 300, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {activityId = 2014, activityCondId = 2014023, isActivityValid = true, sceneId = 9, priority = 1},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -217.6133, y = 121.7235, z = 420.2611}, rot = {x = 0, y = 120, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {activityId = 2014, activityCondId = 2014024, isActivityValid = true, sceneId = 9, priority = 2},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 432.8867, y = 135.4687, z = -468.3842}, rot = {x = 0, y = 202.6558, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {activityId = 2014, activityCondId = 2014025, isActivityValid = true, sceneId = 9, priority = 3},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 575.9624, y = 262.56, z = -523.7333}, rot = {x = 0, y = 180, z = 0}},
                        freestyle = 0,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                transTeleport = true,
                condition = {activityId = 2014, activityCondId = 2014026, isActivityValid = true, sceneId = 9, priority = 4},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 177.9352, y = 217.2066, z = 306.0337}, rot = {x = 0, y = 95, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
