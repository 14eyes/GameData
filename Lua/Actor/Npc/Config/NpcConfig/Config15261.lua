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
        NpcId = "15261",
        Alias = "Npc15261",
        DailyScheduleData = {
            {
                bornConfigId = 561526100,
                condition = {daily = dailyCondition.AllDay, sceneId = 20259, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2216.614, y = 219.9901, z = -837.403}, rot = {x = 0, y = 126.0091, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2236.744, y = 219.99, z = -846.8568}, rot = {x = 0, y = 103.4894, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2255.234, y = 219.99, z = -855.7854}, rot = {x = 0.7180544, y = 119.2037, z = 359.0559}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2269.629, y = 219.9899, z = -863.6248}, rot = {x = 0, y = 117.5171, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2276.48, y = 219.9899, z = -862.6375}, rot = {x = 0, y = 108.1724, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2291.258, y = 219.9899, z = -870.4396}, rot = {x = 0, y = 22.44952, z = 0}},
                        freestyle = 1120,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2301.057, y = 219.9899, z = -853.0841}, rot = {x = 0, y = 268.5612, z = 0}},
                        freestyle = 1190,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2274.26, y = 219.99, z = -859.7845}, rot = {x = 0, y = 275.5324, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2258.51, y = 219.99, z = -852.8584}, rot = {x = 0, y = 299.6049, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2240.358, y = 219.99, z = -843.1011}, rot = {x = 0, y = 300.0637, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2227.711, y = 219.9901, z = -837.2704}, rot = {x = 0, y = 295.2534, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2218.788, y = 219.9901, z = -833.0773}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            }
        },
        TitleDataNew = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_15261",
                    priority = 0,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
                }
            }
        }
    }
}
