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
        NpcId = "3011",
        Alias = "Npc3011",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 1060, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2.320191, y = -0.06700082, z = 9.365962}, rot = {x = 0, y = 4.582583, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
