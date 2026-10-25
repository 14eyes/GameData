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
        NpcId = "7720",
        Alias = "Npc7720",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 707720000,
                condition = {sceneId = 0, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 9232.265, y = 201.7219, z = 7543.995}, rot = {x = 0, y = 170.0135, z = 0}},
                        freestyle = 1280,
                        time = 8,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = 9243.138, y = 202.6629, z = 7544.422}, rot = {x = 0, y = 102.6896, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 9254.771, y = 204.0977, z = 7543.613}, rot = {x = 0, y = 56.66323, z = 0}},
                        freestyle = 1120,
                        time = 7,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 9243.569, y = 202.6512, z = 7543.757}, rot = {x = 0, y = 288.317, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 9227.55, y = 201.5296, z = 7548.67}, rot = {x = 0, y = 278.7267, z = 0}},
                        freestyle = 1190,
                        time = 8,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
