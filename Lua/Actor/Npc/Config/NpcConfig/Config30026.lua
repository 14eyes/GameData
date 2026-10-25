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
        NpcId = "30026",
        Alias = "Npc30026",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1779.684, y = 253.6389, z = 495.4556}, rot = {x = 0, y = 280.9011, z = 0}},
                        freestyle = 1120,
                        time = 12,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1779.684, y = 253.6389, z = 495.4556}, rot = {x = 0, y = 280.9011, z = 0}},
                        freestyle = 1123,
                        time = 16,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 1779.684, y = 253.6389, z = 495.4556}, rot = {x = 0, y = 216.4937, z = 0}},
                        freestyle = 1030,
                        time = 12,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
