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
        NpcId = "2030",
        Alias = "Npc2030",
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
                        dummypoint = {pos = {x = -576.7097, y = 205.7383, z = 130.631}, rot = {x = 0, y = 347.4787, z = 0}},
                        freestyle = 1171,
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
                        dummypoint = {pos = {x = -559.8995, y = 201.8726, z = 161.4875}, rot = {x = 0, y = 273.3733, z = 0}},
                        action = generalPattern.Hide
                    }
                }
            },
            {
                condition = {
                    daily = dailyCondition.Day,
                    questGlobalVarId = 2100001,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Greater,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(3, "Q2100001_N2030"),
                        freestyle = 1171,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    daily = dailyCondition.Night,
                    questGlobalVarId = 2100001,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Greater,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -559.8995, y = 201.8726, z = 161.4875}, rot = {x = 0, y = 273.3733, z = 0}},
                        action = generalPattern.Hide
                    }
                }
            }
        }
    }
}
