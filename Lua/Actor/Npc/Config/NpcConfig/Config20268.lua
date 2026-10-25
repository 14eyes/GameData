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
        NpcId = "20268",
        Alias = "Npc20268",
        DailyScheduleData = {
            {
                condition = {
                    daily = dailyCondition.AllDay,
                    questGlobalVarId = 72170,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 3,
                    priority = 6
                },
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(3, "Q72800_Xudong"),
                        freestyle = 1172,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    daily = dailyCondition.AllDay,
                    mainQuestId = 72800,
                    questState = questState.Finished,
                    sceneId = 3,
                    priority = 8
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {mainQuestId = 2013, questState = questState.Finished, sceneId = 3, priority = 3},
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(3, "WQ72168_Xudong"),
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
                        dummypoint = sceneData:GetDummyPoint(3, "WQ72169_Xudong"),
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
                        dummypoint = sceneData:GetDummyPoint(3, "WQ72170_Xudong"),
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
