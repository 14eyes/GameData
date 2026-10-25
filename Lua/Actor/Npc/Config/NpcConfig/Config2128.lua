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
        NpcId = "2128",
        Alias = "Npc2128",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 937.2086, y = 212.7797, z = 350.4832}, rot = {x = 0, y = 43.87659, z = 0}},
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 927.539, y = 212.7797, z = 341.5538}, rot = {x = 0, y = 262.5363, z = 0}},
                        freestyle = 5010,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 930.5175, y = 212.7797, z = 336.1918}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 906.8084, y = 212.7797, z = 310.0547}, rot = {x = 0, y = 228.129, z = 0}},
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 929.4441, y = 212.7797, z = 335.5244}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            }
        }
    }
}
