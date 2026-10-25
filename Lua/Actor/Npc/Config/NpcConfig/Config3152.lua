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
        NpcId = "3152",
        Alias = "Npc3152",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2762.13, y = 205.2932, z = -4119.755}, rot = {x = 0, y = 319.4146, z = 0}},
                        freestyle = 5020,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -2759.899, y = 205.1259, z = -4125.769}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -2758.383, y = 205.1588, z = -4129.358}, rot = {x = 0, y = 155.6102, z = 0}},
                        freestyle = 5020,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -2754.286, y = 205.2836, z = -4127.754}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -2749.112, y = 205.6631, z = -4124.986}, rot = {x = 0, y = 75.56225, z = 0}},
                        freestyle = 5010,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -2755.254, y = 205.2779, z = -4125.901}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            }
        }
    }
}
