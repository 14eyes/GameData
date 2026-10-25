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
        NpcId = "30217",
        Alias = "Npc30217",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 373021700,
                condition = {activityId = 2022, activityCondId = 2022008, isActivityValid = true, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2213.69, y = 230.088, z = -786.1993}, rot = {x = 0, y = 112.9907, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
