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
        NpcId = "2480",
        Alias = "Npc2480",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 442480000,
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2488.689, y = 343.059, z = 2417.439}, rot = {x = 0, y = 120.5066, z = 0}},
                        freestyle = 1120,
                        time = 5,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2464.748, y = 343.059, z = 2408.736}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2457.525, y = 343.059, z = 2419.169}, rot = {x = 0, y = 45.16596, z = 0}},
                        freestyle = 1190,
                        time = 7,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2442.632, y = 343.059, z = 2441.133}, rot = {x = 0, y = 247.2819, z = 0}},
                        freestyle = 1230,
                        time = 5,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2464.748, y = 343.059, z = 2408.736}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                transTeleport = true,
                bornConfigId = 442480000,
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
                        dummypoint = {pos = {x = 2456.532, y = 343.059, z = 2433.347}, rot = {x = 0, y = 344.5456, z = 0}},
                        freestyle = 1120,
                        time = 5,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2451.238, y = 343.059, z = 2440.844}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2444.846, y = 343.059, z = 2437.492}, rot = {x = 0, y = 240.4379, z = 0}},
                        freestyle = 1230,
                        time = 7,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
