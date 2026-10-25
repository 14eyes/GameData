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
        NpcId = "2251",
        Alias = "Npc2251",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 442251000,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2188.59, y = 413.609, z = 2586.342}, rot = {x = 0.0, y = 263.022, z = 0.0}},
                        time = 5,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2195.044, y = 414.656, z = 2579.765}, rot = {x = 0.0, y = 166.199, z = 0.0}},
                        time = 3,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2200.021, y = 414.87, z = 2581.132}, rot = {x = 0.0, y = 45.79, z = 0.0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2197.06, y = 414.845, z = 2584.471}, rot = {x = 0.0, y = 283.925, z = 0.0}},
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                bornConfigId = 442251001,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7111608,
                            questState = questState.Finished
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2184.176, y = 280.96, z = 2804.513}, rot = {x = 0.0, y = 0.0, z = 0.0}},
                        time = 5,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2171.123, y = 280.73, z = 2801.497}, rot = {x = 0.0, y = 269.26, z = 0.0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2153.676, y = 280.371, z = 2794.915}, rot = {x = 0.0, y = 0.0, z = 0.0}},
                        time = 5,
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
