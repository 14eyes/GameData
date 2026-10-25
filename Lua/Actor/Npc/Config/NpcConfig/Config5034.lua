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
        NpcId = "5034",
        Alias = "Npc5034",
        DailyScheduleData = {
            {
                bornConfigId = 405034000,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 3601, y = 445.8946, z = 4458.087}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 3607.372, y = 445.8946, z = 4469.31}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 3616.609, y = 445.8946, z = 4479.504}, rot = {x = 0, y = 314.3161, z = 0}},
                        freestyle = 1190,
                        time = 5,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 3625.389, y = 445.8946, z = 4490.005}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 3633.59, y = 445.8946, z = 4495.231}, rot = {x = 0, y = 10.97439, z = 0}},
                        freestyle = 1190,
                        time = 5,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 3612.615, y = 445.8946, z = 4467.879}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 3600.453, y = 445.8946, z = 4463.02}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 3595.096, y = 445.8946, z = 4453.95}, rot = {x = 0, y = 136.1674, z = 0}},
                        freestyle = 1230,
                        time = 5,
                        lookAtType = focusToPlayerType.OnlyOnce,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
