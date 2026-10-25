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
        NpcId = "1431",
        Alias = "Npc1431",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2251.791, y = 216.0502, z = -880.6974}, rot = {x = 0, y = 89.97412, z = 0}},
                        freestyle = 1130,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2252.329, y = 216.0134, z = -871.5241}, rot = {x = 0, y = 342.6237, z = 0}},
                        freestyle = 1230,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2267.934, y = 216.0134, z = -878.2687}, rot = {x = 0, y = 247.8704, z = 0}},
                        freestyle = 1130,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2266.485, y = 215.99, z = -888.7048}, rot = {x = 0, y = 100.0783, z = 0}},
                        freestyle = 1170,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2263.832, y = 215.99, z = -889.257}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2262.29, y = 216.0502, z = -900.6478}, rot = {x = 0, y = 151.3019, z = 0}},
                        freestyle = 1190,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2241.861, y = 216.0134, z = -887.4722}, rot = {x = 0, y = 256.1306, z = 0}},
                        freestyle = 1190,
                        time = 15,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                transTeleport = true,
                condition = {
                    daily = dailyCondition.Day,
                    activityId = 2020,
                    activityCondId = 2020001,
                    isActivityValid = true,
                    sceneId = 3,
                    priority = 5
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2239.338, y = 214.09, z = -900.0858}, rot = {x = 0, y = 118.9716, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_1431",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
