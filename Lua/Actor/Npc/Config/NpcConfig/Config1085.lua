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
        NpcId = "1085",
        Alias = "Npc1085",
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_1085",
                    priority = 10,
                    isBanDaily = false,
                    validQuestIds = {13037},
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 1303702,
                                questState = questState.Finished
                            },
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 1303711,
                                questState = questState.None
                            }
                        }
                    }
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {13037},
                priority = 300,
                dialogDataList = {{dialogId = 130379907, duration = 0, intervalMin = 20, intervalMax = 30}},
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
                validQuestIds = {13038},
                priority = 300,
                dialogDataList = {{dialogId = 130389901, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1303809,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1303804,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {13039},
                priority = 300,
                dialogDataList = {
                    {dialogId = 130399901, duration = 0, intervalMin = 20, intervalMax = 30},
                    {dialogId = 130399902, duration = 0, intervalMin = 20, intervalMax = 30},
                    {dialogId = 130399903, duration = 0, intervalMin = 20, intervalMax = 30}
                },
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1303902,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {40168},
                priority = 300,
                dialogDataList = {{dialogId = 1018108500, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4016816,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {40210},
                priority = 300,
                dialogDataList = {{dialogId = 1018108501, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
