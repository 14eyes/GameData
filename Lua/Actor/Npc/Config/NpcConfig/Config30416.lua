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
        NpcId = "30416",
        Alias = "Npc30416",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                bornConfigId = 423041600,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 3584.963, y = 446.1674, z = 4444.475}, rot = {x = 0, y = 53.93203, z = 0}},
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 423041601,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 3503.514, y = 446.1674, z = 4648.324}, rot = {x = 0, y = 31.00027, z = 0}},
                        freestyle = 1230,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_30416",
                    priority = 2,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                                activityId = 5166,
                                activityCondId = 5166003,
                                isActivityValid = true
                            }
                        }
                    }
                },
                {
                    nameStr = "NPC_EXPNAME_30416_1",
                    priority = 1,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                                activityId = 5166,
                                activityCondId = 5166001,
                                isActivityValid = true
                            }
                        }
                    }
                }
            }
        }
    }
}
