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
        NpcId = "1557",
        Alias = "Npc1557",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 100002341,
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2341.071, y = 202.5868, z = -974.2133}, rot = {x = 0, y = 109.845, z = 0}},
                        freestyle = 1160,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 100002341,
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                bornConfigId = 100002341,
                condition = {
                    daily = dailyCondition.AllDay,
                    activityId = 5160,
                    activityCondId = 5160001,
                    isActivityValid = true,
                    sceneId = 3,
                    priority = 5
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2296.227, y = 202.5868, z = -984.4623}, rot = {x = 0, y = 206.7289, z = 0}},
                        action = generalPattern.Hide
                    }
                }
            }
        }
    }
}
