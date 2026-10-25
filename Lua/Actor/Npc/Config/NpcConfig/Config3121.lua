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
        NpcId = "3121",
        Alias = "Npc3121",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -3603.086, y = 200.6653, z = -2522.503}, rot = {x = 0, y = 312.9381, z = 0}},
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -3608.912, y = 200.575, z = -2526.557}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -3618.253, y = 200.7731, z = -2524.863}, rot = {x = 0, y = 0, z = 0}},
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -3616.362, y = 200.6525, z = -2524.815}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -3608.548, y = 200.6901, z = -2528.069}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -3604.521, y = 200.6848, z = -2524.11}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            }
        }
    }
}
