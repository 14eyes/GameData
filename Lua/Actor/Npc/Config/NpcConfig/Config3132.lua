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
        NpcId = "3132",
        Alias = "Npc3132",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}},
                        actionPointId = 321000002,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    questGlobalVarId = 1202401,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    mainQuestId = 72153,
                    questState = questState.Finished,
                    sceneId = 3,
                    priority = 1
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {mainQuestId = 72813, questState = questState.Finished, sceneId = 3, priority = 2},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}},
                        actionPointId = 321000002,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
