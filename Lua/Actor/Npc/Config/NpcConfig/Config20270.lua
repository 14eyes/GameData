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
        NpcId = "20270",
        Alias = "Npc20270",
        DailyScheduleData = {
            {
                condition = {
                    questGlobalVarId = 72170,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 10
                },
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(3, "Q72800_Baerwanie"),
                        freestyle = 1173,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {mainQuestId = 72800, questState = questState.Finished, sceneId = 3, priority = 11},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {mainQuestId = 2013, questState = questState.Finished, sceneId = 3, priority = 3},
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(3, "WQ72168_Parvaneh"),
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    questGlobalVarId = 72168,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 4
                },
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(3, "WQ72169_Parvaneh"),
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    questGlobalVarId = 72169,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 5
                },
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(3, "WQ72170_Parvaneh"),
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    daily = dailyCondition.AllDay,
                    taskVarId = 41130,
                    taskVarIndex = 2,
                    taskVarValue = 100,
                    taskVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 12
                },
                actionPoints = {{dummypoint = sceneData:GetDummyPoint(3, "Q72800_Baerwanie"), action = generalPattern.Stand}}
            },
            {
                condition = {
                    daily = dailyCondition.AllDay,
                    mainQuestId = 22016,
                    questState = questState.Finished,
                    sceneId = 3,
                    priority = 13
                },
                actionPoints = {{action = generalPattern.Hide}}
            }
        }
    }
}
