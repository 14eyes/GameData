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
        NpcId = "20744",
        Alias = "Npc20744",
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_20744",
                    priority = 0,
                    condList = {
                        {
                            condition = {questGlobalVarId = 73056, questGlobalVarValue = 1, questGlobalVarOperate = compareOperation.Equal},
                            priority = 0,
                            isShow = true
                        }
                    }
                }
            }
        },
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_20744_1",
                    priority = 0,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7305601,
                                questState = questState.UnFinished
                            }
                        }
                    }
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {73056},
                priority = 30,
                dialogDataList = {{dialogId = 1018207440, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305601,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {73056},
                priority = 30,
                dialogDataList = {{dialogId = 1018207441, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305611,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305606,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305602,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {73059},
                priority = 30,
                dialogDataList = {{dialogId = 1018207442, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305901,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305902,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {73043},
                priority = 30,
                dialogDataList = {{dialogId = 1018207443, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7304301,
                            questState = questState.UnFinished
                        }
                    }
                }
            }
        }
    }
}
