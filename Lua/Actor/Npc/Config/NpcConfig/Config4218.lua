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
        NpcId = "4218",
        Alias = "Npc4218",
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_4218",
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
                    nameStr = "NPC_EXPNAME_4218_1",
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
                validQuestIds = {73052},
                priority = 301,
                dialogDataList = {{dialogId = 1018421800, duration = 0, intervalMin = 20, intervalMax = 30}},
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
                validQuestIds = {73052},
                priority = 302,
                dialogDataList = {{dialogId = 1018421801, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305221,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {73052},
                priority = 303,
                dialogDataList = {{dialogId = 1018421802, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305221,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73052},
                priority = 304,
                dialogDataList = {{dialogId = 1018421803, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305225,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73052},
                priority = 305,
                dialogDataList = {{dialogId = 1018421804, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305227,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73053},
                priority = 306,
                dialogDataList = {{dialogId = 1018421805, duration = 0, intervalMin = 20, intervalMax = 30}},
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
                priority = 307,
                dialogDataList = {{dialogId = 1018421806, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305311,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73053},
                priority = 308,
                dialogDataList = {{dialogId = 1018421807, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305313,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73054},
                priority = 309,
                dialogDataList = {{dialogId = 1018421808, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305406,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73055},
                priority = 310,
                dialogDataList = {{dialogId = 1018421809, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305513,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73055},
                priority = 311,
                dialogDataList = {{dialogId = 1018421811, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305543,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {73306},
                priority = 312,
                dialogDataList = {{dialogId = 1018421810, duration = 0, intervalMin = 20, intervalMax = 30}},
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
