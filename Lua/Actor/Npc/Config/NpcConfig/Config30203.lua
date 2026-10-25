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
        NpcId = "30203",
        Alias = "Npc30203",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                condition = {activityId = 2014, activityCondId = 2014022, isActivityValid = true, sceneId = 9, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -237.3552, y = 121.815, z = 421.2809}, rot = {x = 0, y = 120, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {activityId = 2014, activityCondId = 2014023, isActivityValid = true, sceneId = 9, priority = 1},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -212.1741, y = 120.003, z = 403.8614}, rot = {x = 0, y = 180, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {activityId = 2014, activityCondId = 2014024, isActivityValid = true, sceneId = 9, priority = 2},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 437.863, y = 210.8131, z = -433.6845}, rot = {x = 0, y = 327.2148, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {activityId = 2014, activityCondId = 2014025, isActivityValid = true, sceneId = 9, priority = 3},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 458.6763, y = 136.072, z = -394.1997}, rot = {x = 0, y = 301.4436, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {activityId = 2014, activityCondId = 2014026, isActivityValid = true, sceneId = 9, priority = 4},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -220.9313, y = 120.0277, z = -531.7617}, rot = {x = 0, y = 247.3638, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
