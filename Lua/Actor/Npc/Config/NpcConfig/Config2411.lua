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
        NpcId = "2411",
        Alias = "Npc2411",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 536.0455, y = 200, z = -57.85458}, rot = {x = 0, y = 281.4395, z = 0}},
                        freestyle = 1280,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 533.7578, y = 200, z = -52.21544}, rot = {x = 0, y = 303.9818, z = 0}},
                        freestyle = 1280,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 546.396, y = 200, z = -52.10464}, rot = {x = 0, y = 357.8212, z = 0}},
                        freestyle = 1280,
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 559.7493, y = 200, z = -57.98627}, rot = {x = 4.645127, y = 24.19724, z = 349.7838}},
                        freestyle = 1280,
                        time = 15,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
