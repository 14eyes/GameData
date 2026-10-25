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
        NpcId = "2007",
        Alias = "Npc2007",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -595.149, y = 243.4263, z = 320.6827}, rot = {x = 354.1911, y = 119.5281, z = 2.617233}},
                        freestyle = 1171,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -593.1534, y = 226.3904, z = 330.6873}, rot = {x = 0, y = 266.0186, z = 0}},
                        freestyle = 1171,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {
                    activityId = 2010,
                    activityCondId = 2010002,
                    isActivityValid = true,
                    daily = dailyCondition.Night,
                    sceneId = 3,
                    priority = 1
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -593.04, y = 226.3904, z = 331.3328}, rot = {x = 0, y = 270, z = 0}},
                        freestyle = 1171,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
