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
        NpcId = "1058",
        Alias = "Npc1058",
        NahidaNarratorData = {
            {
                validQuestIds = {23035},
                priority = 300,
                dialogDataList = {{dialogId = 1018105800, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 2303504,
                            questState = questState.Finished
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 2303506,
                            questState = questState.None
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 2303504,
                            questState = questState.Finished
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 2303506,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {13022},
                priority = 300,
                dialogDataList = {{dialogId = 130229910, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1302221,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {19077},
                priority = 300,
                dialogDataList = {{dialogId = 1018105801, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1907703,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {40100},
                priority = 300,
                dialogDataList = {{dialogId = 401009911, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4010003,
                            questState = questState.Finished
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4010013,
                            questState = questState.None
                        }
                    }
                }
            },
            {
                validQuestIds = {40104},
                priority = 300,
                dialogDataList = {{dialogId = 401049911, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4010404,
                            questState = questState.None
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4010406,
                            questState = questState.None
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4010406,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {13037},
                priority = 300,
                dialogDataList = {{dialogId = 130379905, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1303711,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {13040},
                priority = 300,
                dialogDataList = {{dialogId = 130409903, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1304001,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {40168},
                priority = 300,
                dialogDataList = {{dialogId = 1018105802, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4016807,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4016808,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {40210},
                priority = 300,
                dialogDataList = {{dialogId = 1018105803, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4021002,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4021003,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4021004,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {40210},
                priority = 300,
                dialogDataList = {{dialogId = 1018105804, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4021005,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4021013,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4021010,
                            questState = questState.UnFinished
                        }
                    }
                }
            }
        }
    }
}
