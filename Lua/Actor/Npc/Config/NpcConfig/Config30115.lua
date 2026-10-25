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
        NpcId = "30115",
        Alias = "Npc30115",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {activityId = 5062, activityCondId = 5062005, isActivityValid = true, sceneId = 1068, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 4.140287, y = 0.4097938, z = -2.346745}, rot = {x = 0, y = 180, z = 0}},
                        freestyle = 8060,
                        action = generalPattern.Sit
                    }
                }
            }
        }
    }
}
