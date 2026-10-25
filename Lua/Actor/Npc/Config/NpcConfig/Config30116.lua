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
        NpcId = "30116",
        Alias = "Npc30116",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {activityId = 5062, activityCondId = 5062003, isActivityValid = true, sceneId = 1068, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2.35804, y = 0.4097945, z = -6.996639}, rot = {x = 0, y = 180, z = 0}},
                        freestyle = 8010,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                condition = {activityId = 5062, activityCondId = 5062004, isActivityValid = true, sceneId = 1068, priority = 1},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {activityId = 5062, activityCondId = 5062018, isActivityValid = true, sceneId = 1068, priority = 2},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2.204542, y = 0.4097945, z = -7.102285}, rot = {x = 0, y = 180, z = 0}},
                        freestyle = 8010,
                        action = generalPattern.Sit
                    }
                }
            }
        }
    }
}
