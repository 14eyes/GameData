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
        NpcId = "2074",
        Alias = "Npc2074",
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
                        dummypoint = {
                            pos = {x = -576.1116, y = 205.7245, z = 131.5372},
                            rot = {x = 359.7921, y = 245.2826, z = 359.5483}
                        },
                        freestyle = 0,
                        action = generalPattern.Stand
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
                actionPoints = {{dummypoint = sceneData:GetDummyPoint(3, "Q2100001_N2074"), action = generalPattern.Stand}}
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
                        dummypoint = {pos = {x = -576.7261, y = 201.802, z = 161.4875}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Hide
                    }
                }
            }
        }
    }
}
