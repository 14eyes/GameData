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
        NpcId = "1408",
        Alias = "Npc1408",
        DailyScheduleData = {
            {
                condition = {
                    daily = dailyCondition.Night,
                    questGlobalVarId = 2001401,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2254.196, y = 215.9919, z = -879.0865}, rot = {x = 0, y = 212.3, z = 0}},
                        freestyle = 4151,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    daily = dailyCondition.Day,
                    questGlobalVarId = 2001401,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    taskVarId = 24800,
                    taskVarIndex = 1,
                    taskVarValue = 1,
                    taskVarOperate = compareOperation.Equal,
                    daily = dailyCondition.Day,
                    questGlobalVarId = 2001401,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 5
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2259.769, y = 215.9466, z = -884.8353}, rot = {x = 0, y = 210.83, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    taskVarId = 24800,
                    taskVarIndex = 1,
                    taskVarValue = 1,
                    taskVarOperate = compareOperation.Equal,
                    daily = dailyCondition.Night,
                    questGlobalVarId = 2001401,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 5
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                transTeleport = true,
                condition = {
                    daily = dailyCondition.Day,
                    questGlobalVarId = 2001401,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(3, "Q2002101_N1408"),
                        freestyle = 1230,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {
                    daily = dailyCondition.Night,
                    questGlobalVarId = 2001401,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {{dummypoint = sceneData:GetDummyPoint(3, "Q2002101_N1408"), action = generalPattern.Hide}}
            }
        }
    }
}
