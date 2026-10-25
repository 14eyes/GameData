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
        NpcId = "1531",
        Alias = "Npc1531",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 1018, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2.551374, y = 0.006738611, z = -17.06062}, rot = {x = 0, y = 296.17, z = 0}},
                        freestyle = 4140,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2.629091, y = 0.00673737, z = -9.425818}, rot = {x = 0, y = 100.41, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 11.44614, y = 0.006736222, z = -7.695998}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 4140,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 10.74973, y = 0.006736609, z = -1.114971}, rot = {x = 0, y = 263.31, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -7.835217, y = 0.006734625, z = -0.148649}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -11.14307, y = 0.006733119, z = 5.055326}, rot = {x = 0, y = 319.5429, z = 0}},
                        freestyle = 4140,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -6.320877, y = 0.006736306, z = -6.083997}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -6.554109, y = 0.006740291, z = -17.41774}, rot = {x = 0, y = 88.37757, z = 0}},
                        time = 15,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Night, sceneId = 1018, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2.648196, y = 0.006737868, z = -18.23226}, rot = {x = 0, y = 175.8303, z = 0}},
                        freestyle = 4140,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2.575432, y = 0.006737466, z = -9.322761}, rot = {x = 0, y = 100.41, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 11.44614, y = 0.006736222, z = -7.695998}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 4140,
                        time = 5,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 10.74973, y = 0.006736609, z = -1.114971}, rot = {x = 0, y = 263.31, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -7.835217, y = 0.006734625, z = -0.148649}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -11.14307, y = 0.006733119, z = 5.055326}, rot = {x = 0, y = 319.5429, z = 0}},
                        freestyle = 1170,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -6.320877, y = 0.006736306, z = -6.083997}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -6.554109, y = 0.006740291, z = -17.41774}, rot = {x = 0, y = 88.37757, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -10.35776, y = 0.006740781, z = -21.79542}, rot = {x = 0, y = 166.9879, z = 0}},
                        freestyle = 1170,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -6.554109, y = 0.006740291, z = -17.41774}, rot = {x = 0, y = 88.37757, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                condition = {activityId = 5085, activityCondId = 5085005, isActivityValid = true, sceneId = 3, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7051607,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{dummypoint = sceneData:GetDummyPoint(3, "Q7051202_N1531"), action = generalPattern.Stand}}
            },
            {
                condition = {activityId = 5085, activityCondId = 5085005, isActivityValid = true, sceneId = 1018, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7051607,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_1531",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
