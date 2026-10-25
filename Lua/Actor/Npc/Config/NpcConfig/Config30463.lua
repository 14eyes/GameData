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
        NpcId = "30463",
        Alias = "Npc30463",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                bornConfigId = 433046300,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4013309,
                            questState = questState.Finished
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4013405,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4013309,
                            questState = questState.Finished
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2027,
                            activityCondId = 2027003,
                            isActivityValid = false
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 3480.644, y = 291.7813, z = 4518.312}, rot = {x = 0, y = 5.594908, z = 0}},
                        freestyle = 1190,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                bornConfigId = 433046301,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2027,
                            activityCondId = 2027011,
                            isActivityValid = true
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4013603,
                            questState = questState.Finished
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 3448.441, y = 449.6161, z = 4457.433}, rot = {x = 0, y = 320, z = 0}},
                        freestyle = 1170,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                bornConfigId = 433046302,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2027,
                            activityCondId = 2027005,
                            isActivityValid = false
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4013515,
                            questState = questState.Finished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4013515,
                            questState = questState.Finished
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4013604,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2421.24, y = 459.8446, z = 4291.214}, rot = {x = 0, y = 330, z = 0}},
                        freestyle = 1120,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
