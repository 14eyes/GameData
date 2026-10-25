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
        NpcId = "30384",
        Alias = "Npc30384",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 373038400,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2043.844, y = 204.4512, z = 2590.461}, rot = {x = 0, y = 102.105, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
