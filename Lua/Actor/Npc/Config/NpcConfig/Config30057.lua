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
        NpcId = "30057",
        Alias = "Npc30057",
        DailyScheduleData = {
            {
                condition = {
                    mainQuestId = 463,
                    questState = questState.Finished,
                    mainQuestId = 40012,
                    questState = questState.Finished,
                    sceneId = 4,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(4, "Q40012Kaeya3"),
                        freestyle = 1120,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {mainQuestId = 463, questState = questState.None, sceneId = 1004, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {
                    mainQuestId = 463,
                    questState = questState.Finished,
                    mainQuestId = 490,
                    questState = questState.Finished,
                    sceneId = 1004,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(1004, "Q40010Kaeya"),
                        freestyle = 1120,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {mainQuestId = 463, questState = questState.UnFinished, sceneId = 1004, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {mainQuestId = 463, questState = questState.UnStarted, sceneId = 1004, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {mainQuestId = 463, questState = questState.UnStarted, sceneId = 4, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {mainQuestId = 463, questState = questState.UnFinished, sceneId = 4, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {mainQuestId = 463, questState = questState.None, sceneId = 4, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {mainQuestId = 490, questState = questState.None, sceneId = 1004, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {mainQuestId = 490, questState = questState.UnStarted, sceneId = 1004, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {mainQuestId = 490, questState = questState.UnFinished, sceneId = 1004, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            }
        }
    }
}
