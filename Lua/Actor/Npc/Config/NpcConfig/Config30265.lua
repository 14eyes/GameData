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
        NpcId = "30265",
        Alias = "Npc30265",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {activityId = 2016, activityCondId = 2016035, isActivityValid = true, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2004.155, y = 207.7701, z = -895.4814}, rot = {x = 0, y = 95.70255, z = 0}},
                        freestyle = 1220,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
