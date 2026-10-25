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
        NpcId = "2405",
        Alias = "Npc2405",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1562.731, y = 218.756, z = 262.2314}, rot = {x = 0, y = 309.157, z = 0}},
                        freestyle = 8060,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                condition = {
                    daily = dailyCondition.AllDay,
                    activityId = 2025,
                    activityCondId = 2025001,
                    isActivityValid = true,
                    sceneId = 3,
                    priority = 1
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1562.731, y = 218.756, z = 262.2314}, rot = {x = 0, y = 309.157, z = 0}},
                        action = generalPattern.Hide
                    }
                }
            }
        }
    }
}
