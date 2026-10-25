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
        NpcId = "30273",
        Alias = "Npc30273",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {activityId = 5108, activityCondId = 5108017, isActivityValid = true, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2807.887, y = 227.206, z = -4469.661}, rot = {x = 0, y = -105.928, z = 0}},
                        freestyle = 1230,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
