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
        NpcId = "1463",
        Alias = "Npc1463",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2246.074, y = 215.99, z = -891.5757}, rot = {x = 0, y = 221.043, z = 0}},
                        freestyle = 1230,
                        time = 30,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2241.407, y = 216.09, z = -888.9197}, rot = {x = 0, y = 301.001, z = 0}},
                        freestyle = 1170,
                        time = 30,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2264.367, y = 216.09, z = -896.0849}, rot = {x = 0, y = 121.0828, z = 0}},
                        freestyle = 1130,
                        time = 30,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2255.548, y = 216.09, z = -898.2707}, rot = {x = 0, y = 274.6314, z = 0}},
                        freestyle = 1190,
                        time = 15,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            }
        }
    }
}
