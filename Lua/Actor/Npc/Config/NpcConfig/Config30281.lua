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
        NpcId = "30281",
        Alias = "Npc30281",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                bornConfigId = 100042268,
                condition = {sceneId = 1072, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -9.192732, y = 6.976367, z = 4.106358}, rot = {x = 0, y = 279.8071, z = 0}},
                        freestyle = 8020,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                transTeleport = true,
                bornConfigId = 100042270,
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 5116,
                            activityCondId = 5116022,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -447.4507, y = 238.1154, z = 2745.625}, rot = {x = 0, y = 234.8485, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                bornConfigId = 100042271,
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 5116,
                            activityCondId = 5116023,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -372.4004, y = 237.819, z = 2803.359}, rot = {x = 0, y = 12.89667, z = 0}},
                        freestyle = 1220,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                bornConfigId = 100042272,
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 5116,
                            activityCondId = 5116024,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -414.7886, y = 260.9929, z = 2728.516}, rot = {x = 0, y = 308.8485, z = 0}},
                        freestyle = 1120,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                bornConfigId = 100042278,
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 5116,
                            activityCondId = 5116025,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -821.835, y = 179.4901, z = 2519.571}, rot = {x = 0, y = 207.2555, z = 0}},
                        freestyle = 1230,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                bornConfigId = 100044361,
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 5116,
                            activityCondId = 5116026,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -852.7388, y = 148.6663, z = 2397.916}, rot = {x = 0, y = 91.41664, z = 0}},
                        freestyle = 1220,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 100044361,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 1},
                conditionGrp = {
                    {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 3001, questState = 2}},
                    {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 3002, questState = 2}},
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 300301,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 5116,
                            activityCondId = 5116026,
                            isActivityValid = false
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                bornConfigId = 100042271,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1300601,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1300602,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 200,
                dialogDataList = {{dialogId = 1018302810, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
