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
        NpcId = "30130",
        Alias = "Npc30130",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 6
                },
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(3, "Q7165801_T7165813_N10232"),
                        freestyle = 8010,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 5
                },
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(3, "Q7165802_T7165814_N10232"),
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 4
                },
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(3, "Q7165803_T7165815_N10232"),
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 3,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 3
                },
                actionPoints = {
                    {dummypoint = sceneData:GetDummyPoint(3, "Q7165804_T7165816_N10232"), action = generalPattern.Stand}
                }
            },
            {
                transTeleport = true,
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 4,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 2
                },
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(3, "Q7165805_T7165817_N10232"),
                        freestyle = 1120,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 5,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 1
                },
                actionPoints = {
                    {dummypoint = sceneData:GetDummyPoint(3, "Q7265806_T7265818_N10232"), action = generalPattern.Stand}
                }
            },
            {
                transTeleport = true,
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 6,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {dummypoint = sceneData:GetDummyPoint(3, "Q7165807_T7165819_N10232"), action = generalPattern.Stand}
                }
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 7
                },
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1908408,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 8
                },
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1908401,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 9
                },
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1908407,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 10
                },
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1908409,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 11
                },
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1111202,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 12
                },
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1111222,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 13
                },
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1111203,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 14
                },
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1908204,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 15
                },
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1908205,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 16
                },
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1110101,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 17
                },
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1110108,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 18
                },
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1110102,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 19
                },
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1110103,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 20
                },
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1110104,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 21
                },
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1200001,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 22
                },
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1200003,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    activityId = 2010,
                    activityCondId = 2010208,
                    isActivityValid = true,
                    questGlobalVarId = 71658,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 23
                },
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1902301,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            }
        }
    }
}
