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
        NpcId = "4245",
        Alias = "Npc4245",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {mainQuestId = 73110, questState = questState.Finished, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2036.558, y = 302.6875, z = 4119.136}, rot = {x = 0, y = 300.1431, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_4245",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018424500, duration = 0, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {73083},
                priority = 301,
                dialogDataList = {{dialogId = 1018424501, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7308323,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73083},
                priority = 302,
                dialogDataList = {{dialogId = 1018424502, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7308321,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73083},
                priority = 303,
                dialogDataList = {{dialogId = 1018424503, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7308326,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73110},
                priority = 304,
                dialogDataList = {{dialogId = 1018424504, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7311001,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {73110},
                priority = 305,
                dialogDataList = {{dialogId = 1018424505, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7311001,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73110},
                priority = 306,
                dialogDataList = {{dialogId = 1018424506, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7311003,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73110},
                priority = 306,
                dialogDataList = {{dialogId = 1018424507, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7311004,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {73110},
                priority = 306,
                dialogDataList = {{dialogId = 1018424508, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7311005,
                            questState = questState.Finished
                        }
                    }
                }
            }
        }
    }
}
