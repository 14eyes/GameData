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
        NpcId = "2065",
        Alias = "Npc2065",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -544.7857, y = 210.2188, z = 300.9891}, rot = {x = 0, y = 43.25261, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -538.6302, y = 210.2188, z = 306.7098}, rot = {x = 0, y = 43.25261, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -534.4825, y = 210.2188, z = 311.317}, rot = {x = 0, y = 43.25261, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -510.0278, y = 210.2188, z = 333.8038}, rot = {x = 0, y = 43.25261, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -495.0024, y = 210.2188, z = 348.6415}, rot = {x = 0, y = 43.25261, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -495.6677, y = 210.2188, z = 349.2472}, rot = {x = 0, y = 223.0685, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -510.578, y = 210.2188, z = 334.3181}, rot = {x = 0, y = 223.0685, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -535.4531, y = 210.0222, z = 312.2145}, rot = {x = 0, y = 223.0685, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -539.4886, y = 210.2188, z = 307.328}, rot = {x = 0, y = 223.0685, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -545.4971, y = 210.2188, z = 301.5542}, rot = {x = 0, y = 223.0685, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                condition = {sceneId = 3, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2019,
                            activityCondId = 2019001,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -526.4662, y = 210.0222, z = 323.357}, rot = {x = 0, y = 132.9685, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -523.3811, y = 210.0222, z = 333.8321}, rot = {x = 0, y = 157.585, z = 0}},
                        freestyle = 4230,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -533.194, y = 210.0222, z = 308.7503}, rot = {x = 0, y = 27.38301, z = 0}},
                        freestyle = 4230,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {sceneId = 3, priority = 2},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2036,
                            activityCondId = 2036001,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -526.4662, y = 210.0222, z = 323.357}, rot = {x = 0, y = 132.9685, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -523.3811, y = 210.0222, z = 333.8321}, rot = {x = 0, y = 157.585, z = 0}},
                        freestyle = 4230,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -533.194, y = 210.0222, z = 308.7503}, rot = {x = 0, y = 27.38301, z = 0}},
                        freestyle = 4230,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleDataNew = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_2065",
                    priority = 0,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
                }
            }
        }
    }
}
