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
        NpcId = "2443",
        Alias = "Npc2443",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -624.3697, y = 209.0652, z = -159.2983}, rot = {x = 0, y = 126.3814, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -627.021, y = 209.7778, z = -159.5766}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -628.7804, y = 209.7969, z = -156.8599}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 1270,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -624.7475, y = 209.7778, z = -156.8779}, rot = {x = 0, y = 16.22574, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -623.5987, y = 209.819, z = -152.0116}, rot = {x = 0, y = 0, z = 0}},
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -622.2863, y = 209.7778, z = -153.0388}, rot = {x = 0, y = 0, z = 0}},
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {
                            pos = {x = -626.286, y = 209.7778, z = -159.1566},
                            rot = {x = 355.6687, y = 32.41241, z = 347.4884}
                        },
                        time = 15,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
