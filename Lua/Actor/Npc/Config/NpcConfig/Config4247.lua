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
        NpcId = "4247",
        Alias = "Npc4247",
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
                        dummypoint = {pos = {x = -1999.169, y = 288.2254, z = 4086.296}, rot = {x = 0, y = 105.5943, z = 0}},
                        actionPointId = 330300014,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_4247",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        },
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_4247",
                    priority = 0,
                    hideInBillboard = true,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7305203,
                                questState = questState.UnFinished
                            }
                        },
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7305201,
                                questState = questState.UnFinished
                            }
                        },
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7305202,
                                questState = questState.UnFinished
                            }
                        }
                    }
                },
                {
                    nameStr = "NPC_EXPNAME_4247_1",
                    priority = 1,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionLevelTagCondition, levelTag = 62}}}
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018424700, duration = 0, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {73052},
                priority = 301,
                dialogDataList = {{dialogId = 1018424701, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305201,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305202,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305203,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {73052},
                priority = 302,
                dialogDataList = {{dialogId = 1018424702, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305202,
                            questState = questState.Finished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7305203,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73306},
                priority = 303,
                dialogDataList = {{dialogId = 1018424703, duration = 0, intervalMin = 20, intervalMax = 30}},
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
