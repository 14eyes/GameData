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
        NpcId = "1596",
        Alias = "Npc1596",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1765.611, y = 221.863, z = -392.6561}, rot = {x = 0, y = 245.4674, z = 0}},
                        freestyle = 4140,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Night, sceneId = 1018, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -12.79211, y = 0.006732093, z = 7.911572}, rot = {x = 0, y = 174.5654, z = 0}},
                        freestyle = 4140,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
