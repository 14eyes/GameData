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
        NpcId = "1702",
        Alias = "Npc1702",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7330601,
                            questState = questState.Finished
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1997.273, y = 288.2254, z = 4086.09}, rot = {x = 0, y = 269.584, z = 0}},
                        actionPointId = 330300015,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_1702",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        },
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_1702",
                    priority = 0,
                    hideInBillboard = true,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7305207,
                                questState = questState.UnFinished
                            }
                        },
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7305204,
                                questState = questState.UnFinished
                            }
                        },
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7305252,
                                questState = questState.UnFinished
                            }
                        },
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7305205,
                                questState = questState.UnFinished
                            }
                        },
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7305206,
                                questState = questState.UnFinished
                            }
                        },
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7305208,
                                questState = questState.UnFinished
                            }
                        },
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7305240,
                                questState = questState.UnFinished
                            }
                        },
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7305213,
                                questState = questState.UnFinished
                            }
                        }
                    }
                },
                {
                    nameStr = "NPC_EXPNAME_1702_1",
                    priority = 1,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7305213,
                                questState = questState.Finished
                            }
                        }
                    }
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018170200, duration = 0, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {73052},
                priority = 301,
                dialogDataList = {{dialogId = 1018170201, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305207,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73053},
                priority = 302,
                dialogDataList = {{dialogId = 1018170202, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305302,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73053},
                priority = 303,
                dialogDataList = {{dialogId = 1018170203, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305322,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73055},
                priority = 304,
                dialogDataList = {{dialogId = 1018170204, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305505,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73306},
                priority = 305,
                dialogDataList = {{dialogId = 1018170205, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7330601,
                            questState = questState.UnFinished
                        }
                    }
                }
            }
        }
    }
}
