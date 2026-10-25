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
        NpcId = "1595",
        Alias = "Npc1595",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1764.654, y = 221.863, z = -392.9518}, rot = {x = 0, y = 64.02263, z = 0}},
                        freestyle = 1170,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Night, sceneId = 1018, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -13.97747, y = 0.006732441, z = 6.647703}, rot = {x = 0, y = 105.243, z = 0}},
                        freestyle = 4140,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
