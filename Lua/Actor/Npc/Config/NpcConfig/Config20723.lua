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
        NpcId = "20723",
        Alias = "Npc20723",
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_20723",
                    priority = 0,
                    hideInBillboard = true,
                    conditions = {
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
                    nameStr = "NPC_EXPNAME_20723_1",
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
                dialogDataList = {{dialogId = 1018207230, duration = 0, intervalMin = 20, intervalMax = 30}},
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
                priority = 302,
                dialogDataList = {{dialogId = 1018207231, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305226,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73053},
                priority = 303,
                dialogDataList = {{dialogId = 1018207232, duration = 0, intervalMin = 20, intervalMax = 30}},
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
                priority = 304,
                dialogDataList = {{dialogId = 1018207233, duration = 0, intervalMin = 20, intervalMax = 30}},
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
                priority = 305,
                dialogDataList = {{dialogId = 1018207234, duration = 0, intervalMin = 20, intervalMax = 30}},
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
                priority = 306,
                dialogDataList = {{dialogId = 1018207235, duration = 0, intervalMin = 20, intervalMax = 30}},
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
                priority = 307,
                dialogDataList = {{dialogId = 1018207236, duration = 0, intervalMin = 20, intervalMax = 30}},
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
                priority = 308,
                dialogDataList = {{dialogId = 1018207239, duration = 0, intervalMin = 20, intervalMax = 30}},
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
                priority = 309,
                dialogDataList = {{dialogId = 1018207237, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7330601,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {73052},
                priority = 300,
                dialogDataList = {{dialogId = 1018207238, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305212,
                            questState = questState.Finished
                        }
                    }
                }
            }
        }
    }
}
