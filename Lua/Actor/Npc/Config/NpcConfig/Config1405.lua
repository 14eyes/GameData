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
        NpcId = "1405",
        Alias = "Npc1405",
        DailyScheduleData = {
            {
                condition = {
                    daily = dailyCondition.Day,
                    questGlobalVarId = 2001401,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2253.997, y = 215.9466, z = -877.0156}, rot = {x = 0, y = 142.332, z = 0}},
                        freestyle = 4150,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    daily = dailyCondition.Night,
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
                        dummypoint = {pos = {x = 2310.801, y = 250.1125, z = -759.4437}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2308.961, y = 249.9899, z = -742.1786}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2322.44, y = 249.9899, z = -733.8857}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2333.808, y = 249.9899, z = -728.2656}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2343.084, y = 250.0581, z = -746.4875}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = 2328.199, y = 249.9899, z = -765.5566}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                transTeleport = true,
                condition = {
                    daily = dailyCondition.AllDay,
                    questGlobalVarId = 2001401,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {{action = generalPattern.Hide}}
            }
        }
    }
}
