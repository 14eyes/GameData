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
        NpcId = "1604",
        Alias = "Npc1604",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2231.738, y = 229.9901, z = -825.035}, rot = {x = 0, y = 25.45729, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2240.126, y = 229.9901, z = -807.9236}, rot = {x = 0, y = 52.2501, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2273.583, y = 229.9901, z = -797.3964}, rot = {x = 0, y = 114.1716, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2289.106, y = 229.99, z = -805.9714}, rot = {x = 0, y = 117.5703, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2294.111, y = 229.99, z = -808.1899}, rot = {x = 0, y = 113.0685, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2301.342, y = 229.99, z = -814.7361}, rot = {x = 0, y = 261.5725, z = 0}},
                        freestyle = 1190,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2294.678, y = 229.99, z = -818.877}, rot = {x = 0, y = 250.7824, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2287.275, y = 229.99, z = -820.7148}, rot = {x = 0, y = 259.4662, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2280.059, y = 229.99, z = -818.4064}, rot = {x = 359.8253, y = 42.61257, z = 1.856469}},
                        freestyle = 1120,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2285.479, y = 229.99, z = -809.0136}, rot = {x = 0, y = 308.8312, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2270.85, y = 229.9901, z = -800.8547}, rot = {x = 353.1756, y = 272.9451, z = 23.87679}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2240.126, y = 229.9901, z = -807.9236}, rot = {x = 0, y = 305.38, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            }
        }
    }
}
