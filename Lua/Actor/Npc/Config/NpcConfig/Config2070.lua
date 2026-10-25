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
        NpcId = "2070",
        Alias = "Npc2070",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -573.6664, y = 247.9994, z = 436.1864}, rot = {x = 0, y = 230.5022, z = 0}},
                        freestyle = 0,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -575.7483, y = 248.1168, z = 444.261}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -569.8301, y = 248.1169, z = 450.9875}, rot = {x = 0, y = 141.3264, z = 0}},
                        freestyle = 0,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -555.2157, y = 248.1168, z = 459.1866}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -543.8018, y = 248.1168, z = 471.2763}, rot = {x = 0, y = 6.760746, z = 0}},
                        freestyle = 0,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -531.6998, y = 247.9947, z = 458.6994}, rot = {x = 0, y = 98.50995, z = 0}},
                        freestyle = 0,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -563.4965, y = 248.11, z = 431.3196}, rot = {x = 0, y = 320.9437, z = 0}},
                        freestyle = 0,
                        time = 15,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {activityId = 2007, activityCondId = 2007000, isActivityValid = true, sceneId = 3, priority = 1},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -539.1758, y = 248.1168, z = 464.9138}, rot = {x = 0, y = 154.3945, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_2070",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
