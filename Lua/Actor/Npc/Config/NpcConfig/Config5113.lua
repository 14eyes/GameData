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
        NpcId = "5113",
        Alias = "Npc5113",
        DailyScheduleData = {
            {
                bornConfigId = 405113000,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 3446.95, y = 458.9625, z = 3662.969}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 3446.578, y = 458.9635, z = 3681.65}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 3453.569, y = 458.9635, z = 3688.55}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 3472.76, y = 458.9625, z = 3687.952}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 3478.953, y = 458.9623, z = 3693.869}, rot = {x = 0, y = 46.8853, z = 0}},
                        freestyle = 1230,
                        time = 5,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 3472.76, y = 458.9625, z = 3687.952}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 3453.569, y = 458.9635, z = 3688.55}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 3446.578, y = 458.9635, z = 3681.65}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 3446.95, y = 458.9625, z = 3662.969}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 3440.514, y = 458.9623, z = 3657.431}, rot = {x = 0, y = 44.90158, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            }
        }
    }
}
