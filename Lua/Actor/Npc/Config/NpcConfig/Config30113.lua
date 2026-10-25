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
        NpcId = "30113",
        Alias = "Npc30113",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {activityId = 5062, activityCondId = 5062004, isActivityValid = true, sceneId = 1068, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -5.157145, y = 0.886547, z = -1.967231}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 8060,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                condition = {activityId = 5062, activityCondId = 5062005, isActivityValid = true, sceneId = 1068, priority = 1},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {activityId = 5062, activityCondId = 5062018, isActivityValid = true, sceneId = 1068, priority = 2},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -5.237773, y = 0.4097937, z = -2.096951}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 8060,
                        action = generalPattern.Sit
                    }
                }
            }
        }
    }
}
