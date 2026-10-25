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
        NpcId = "1631",
        Alias = "Npc1631",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1887.224, y = 246.1848, z = -927.6285}, rot = {x = 0, y = 174.09, z = 0}},
                        freestyle = 1280,
                        time = 5,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1865.885, y = 250.3483, z = -921.6141}, rot = {x = 0, y = 160.65, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 1877.23, y = 247.8116, z = -943.6168}, rot = {x = 0, y = 103.89, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 1863.146, y = 248.2224, z = -940.3183}, rot = {x = 0, y = 297.03, z = 0}},
                        freestyle = 1190,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1877.23, y = 247.8116, z = -943.6168}, rot = {x = 0, y = 103.89, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 1865.885, y = 250.3483, z = -921.6141}, rot = {x = 0, y = 160.65, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 1887.224, y = 246.1848, z = -927.6285}, rot = {x = 0, y = 174.09, z = 0}},
                        freestyle = 1190,
                        time = 5,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
