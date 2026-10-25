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
        NpcId = "3091",
        Alias = "Npc3091",
        DailyScheduleData = {
            {
                transTeleport = true,
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2572.635, y = 210.8772, z = -3808.261}, rot = {x = 0, y = 330.936, z = 0}},
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -2578.53, y = 210.8772, z = -3808.374}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -2580.664, y = 210.8772, z = -3800.572}, rot = {x = 0, y = 229.1014, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -2572.986, y = 210.8772, z = -3788.833}, rot = {x = 0, y = 0, z = 0}},
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -2568.521, y = 210.8772, z = -3795.608}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -2567.706, y = 210.8772, z = -3806.837}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                transTeleport = true,
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2665.413, y = 200.5901, z = -3822.258}, rot = {x = 0, y = 250.2744, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {activityId = 2012, activityCondId = 2012002, isActivityValid = true, sceneId = 3, priority = 1},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2554.329, y = 210.8772, z = -3809.874}, rot = {x = 0, y = 230, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
