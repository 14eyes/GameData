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
        NpcId = "2479",
        Alias = "Npc2479",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 442479000,
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2459.179, y = 345.757, z = 2462.083}, rot = {x = 0, y = 187.772, z = 0}},
                        freestyle = 1230,
                        time = 7,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2468.93, y = 345.7568, z = 2445.622}, rot = {x = 0, y = 185.1544, z = 0}},
                        freestyle = 5020,
                        time = 7,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2483.616, y = 345.757, z = 2444.443}, rot = {x = 0, y = 111.3161, z = 0}},
                        freestyle = 1190,
                        time = 7,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2469.757, y = 345.7569, z = 2457.326}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                transTeleport = true,
                bornConfigId = 442479000,
                condition = {sceneId = 0, priority = 3},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2051,
                            activityCondId = 2051001,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2458.849, y = 345.757, z = 2461.577}, rot = {x = 0, y = 187.772, z = 0}},
                        freestyle = 1230,
                        time = 7,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2468.93, y = 345.7568, z = 2445.622}, rot = {x = 0, y = 185, z = 0}},
                        freestyle = 5020,
                        time = 7,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2483.616, y = 345.757, z = 2444.443}, rot = {x = 0, y = 111, z = 0}},
                        freestyle = 1190,
                        time = 7,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2469.757, y = 345.7569, z = 2457.326}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            }
        }
    }
}
