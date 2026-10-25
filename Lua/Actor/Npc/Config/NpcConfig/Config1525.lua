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
        NpcId = "1525",
        Alias = "Npc1525",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2340.772, y = 249.9899, z = -760.2683}, rot = {x = 0, y = 18.2, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2346.784, y = 249.99, z = -742.8782}, rot = {x = 0, y = 334.697, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2332.225, y = 249.99, z = -727.767}, rot = {x = 0, y = 289.6732, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2313.266, y = 249.99, z = -727.6345}, rot = {x = 0, y = 232.5502, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2302.07, y = 249.99, z = -742.4973}, rot = {x = 0, y = 203.2448, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2304.633, y = 249.99, z = -759.8055}, rot = {x = 0, y = 138.4113, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2316.412, y = 249.9899, z = -772.3748}, rot = {x = 0, y = 99.62315, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2336.315, y = 249.99, z = -766.6674}, rot = {x = 0, y = 315.9051, z = 0}},
                        freestyle = 1120,
                        time = 20,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2283.816, y = 235.99, z = -779.2271}, rot = {x = 0, y = 249.8395, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2252.177, y = 235.99, z = -789.3565}, rot = {x = 0, y = 290.7201, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {
                            pos = {x = 2241.662, y = 235.99, z = -789.1332},
                            rot = {x = 0.1074822, y = 39.02812, z = 0.3435198}
                        },
                        freestyle = 1190,
                        time = 20,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2252.788, y = 235.99, z = -789.8773}, rot = {x = 359.8972, y = 77.41508, z = 0.4181958}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2283.816, y = 235.99, z = -779.2271}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2330.163, y = 249.99, z = -734.5495}, rot = {x = 0, y = 207.3718, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {
                    questGlobalVarId = 70516,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Greater,
                    activityId = 5085,
                    activityCondId = 5085005,
                    isActivityValid = true,
                    sceneId = 3,
                    priority = 1
                },
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(3, "Q7051602_T7051602_N1525"),
                        freestyle = 0,
                        action = generalPattern.Sit
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_1525",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
