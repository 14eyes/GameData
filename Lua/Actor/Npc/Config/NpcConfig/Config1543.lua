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
        NpcId = "1543",
        Alias = "Npc1543",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1973.039, y = 210.3581, z = -874.8248}, rot = {x = 0, y = 134.7524, z = 0}},
                        freestyle = 4010,
                        time = 40,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1979.213, y = 209.334, z = -872.6915}, rot = {x = 0, y = 284.14, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 1984.107, y = 207.6115, z = -866.5498}, rot = {x = 0, y = 188.08, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 1985.087, y = 203.9503, z = -851.7173}, rot = {x = 0, y = 81.4, z = 0}},
                        freestyle = 4010,
                        time = 40,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1962.679, y = 211.24, z = -905.7246}, rot = {x = 0, y = 289.6572, z = 0}},
                        freestyle = 4151,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
