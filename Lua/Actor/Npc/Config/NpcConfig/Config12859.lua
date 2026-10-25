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
        NpcId = "12859",
        Alias = "Npc12859",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2017,
                            activityCondId = 2017122,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1916.982, y = 203.0997, z = 2505.066}, rot = {x = 0, y = 110.3305, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2017,
                            activityCondId = 2017111,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2015.112, y = 229.007, z = 2693.199}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 1150,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 2},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2017,
                            activityCondId = 2017112,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2009.865, y = 201.3904, z = 2422.405}, rot = {x = 0, y = 276.6596, z = 0}},
                        freestyle = 1240,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 3},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2017,
                            activityCondId = 2017114,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1915.638, y = 203.0997, z = 2505.587}, rot = {x = 0, y = 169.1273, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 4},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2017,
                            activityCondId = 2017115,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2009.932, y = 201.3905, z = 2457.39}, rot = {x = 0, y = 298.7238, z = 0}},
                        freestyle = 1230,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 5},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2017,
                            activityCondId = 2017116,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1914.653, y = 203.0997, z = 2505.624}, rot = {x = 0, y = 151.012, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_12859",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 20,
                dialogDataList = {{dialogId = 1018128590, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
