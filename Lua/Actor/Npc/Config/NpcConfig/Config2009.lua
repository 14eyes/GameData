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
        NpcId = "2009",
        Alias = "Npc2009",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 502009000,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -651.7468, y = 219.8952, z = 218.63}, rot = {x = 0, y = 60.60649, z = 0}},
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 502009001,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -435.971, y = 239.2419, z = 432.9905}, rot = {x = 0, y = 68.06044, z = 0}},
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 502009001,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 101501,
                            questState = questState.UnFinished
                        },
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 101507,
                            questState = questState.UnFinished
                        },
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1100809,
                            questState = questState.UnFinished
                        },
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1100903,
                            questState = questState.UnFinished
                        },
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}
                    },
                    {
                        {_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 11027, questState = 2},
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}
                    },
                    {
                        {_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 11028, questState = 2},
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}
                    },
                    {
                        {_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 11029, questState = 2},
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 101513,
                            questState = questState.UnFinished
                        },
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 101509,
                            questState = questState.UnFinished
                        },
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -435.971, y = 239.2419, z = 432.9905}, rot = {x = 0, y = 68.06044, z = 0}},
                        action = generalPattern.Hide
                    }
                }
            }
        }
    }
}
