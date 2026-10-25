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
        NpcId = "30270",
        Alias = "Npc30270",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                condition = {activityId = 5108, activityCondId = 5108017, isActivityValid = true, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2806.99, y = 227.148, z = -4470.637}, rot = {x = 0, y = -76.881, z = 0}},
                        freestyle = 1220,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {activityId = 5108, activityCondId = 5108018, isActivityValid = true, sceneId = 3, priority = 1},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2784.672, y = 223.9992, z = -4386.357}, rot = {x = 0, y = 240, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
