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
        NpcId = "30015",
        Alias = "Npc30015",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1954.348, y = 222.0359, z = -1506.832}, rot = {x = 0, y = 240.7681, z = 0}},
                        freestyle = 134001,
                        time = 23,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1953.29, y = 222.0407, z = -1501.125}, rot = {x = 0, y = 281.8455, z = 0}},
                        freestyle = 1190,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1956.455, y = 221.9814, z = -1495.933}, rot = {x = 0, y = 321.2075, z = 0}},
                        freestyle = 134001,
                        time = 23,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1957.062, y = 221.8839, z = -1502.19}, rot = {x = 0, y = 174.832, z = 0}},
                        freestyle = 1050,
                        time = 12,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
