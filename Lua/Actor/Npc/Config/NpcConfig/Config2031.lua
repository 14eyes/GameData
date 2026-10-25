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
        NpcId = "2031",
        Alias = "Npc2031",
        DailyScheduleData = {
            {
                condition = {
                    daily = dailyCondition.Day,
                    questGlobalVarId = 2100001,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -577.1489, y = 205.7376, z = 131.2961}, rot = {x = 0, y = 113.9755, z = 0}},
                        freestyle = 5010,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    daily = dailyCondition.Night,
                    questGlobalVarId = 2100001,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -560.7012, y = 201.802, z = 161.0832}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Hide
                    }
                }
            },
            {
                transTeleport = true,
                condition = {
                    daily = dailyCondition.AllDay,
                    questGlobalVarId = 2100001,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -560.7012, y = 201.802, z = 161.0832}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Hide
                    }
                }
            },
            {
                condition = {
                    daily = dailyCondition.Day,
                    questGlobalVarId = 2100001,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {dummypoint = sceneData:GetDummyPoint(3, "Q2102701_N2031_310701685"), action = generalPattern.Stand}
                }
            },
            {
                condition = {
                    daily = dailyCondition.Night,
                    questGlobalVarId = 2100001,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -560.7012, y = 201.802, z = 161.0832}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Hide
                    }
                }
            }
        }
    }
}
