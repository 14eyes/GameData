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
        NpcId = "1455",
        Alias = "Npc1455",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2233.017, y = 215.99, z = -865.7279}, rot = {x = 358.4181, y = 116.8624, z = 1.729613}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2243.744, y = 215.99, z = -870.9674}, rot = {x = 358.3316, y = 120.558, z = 1.71007}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2246.057, y = 216.09, z = -874.4646}, rot = {x = 357.7905, y = 188.2934, z = 359.1004}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2245.651, y = 215.99, z = -879.0824}, rot = {x = 354.8072, y = 304.0405, z = 1.795785}},
                        freestyle = 1130,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2249.489, y = 215.99, z = -872.3351}, rot = {x = 0, y = 69.37923, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2257.12, y = 215.9466, z = -872.1178}, rot = {x = 0, y = 114.15, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2263.068, y = 215.9466, z = -875.2203}, rot = {x = 0, y = 120.8517, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2271.252, y = 215.99, z = -885.3582}, rot = {x = 19.31513, y = 115.3021, z = 11.24321}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2283.708, y = 215.99, z = -891.781}, rot = {x = 6.418725, y = 112.4306, z = 10.21211}},
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    daily = dailyCondition.Day,
                    activityId = 2003,
                    activityCondId = 2003001,
                    isActivityValid = true,
                    sceneId = 3,
                    priority = 1
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2242.29, y = 215.99, z = -869.7431}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2245.855, y = 215.99, z = -875.9581}, rot = {x = 0, y = 221.7594, z = 0}},
                        freestyle = 1190,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2252.311, y = 215.9466, z = -873.6248}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2258.905, y = 215.9838, z = -875.4434}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2264.179, y = 215.9466, z = -879.1459}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2272.464, y = 215.99, z = -883.7213}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 1190,
                        time = 15,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
