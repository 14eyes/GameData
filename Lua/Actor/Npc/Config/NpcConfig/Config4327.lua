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
        NpcId = "4327",
        Alias = "Npc4327",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1107.328, y = 203.3738, z = 2659.049}, rot = {x = 0, y = 35.87533, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {mainQuestId = 73080, questState = questState.Finished, sceneId = 3, priority = 1},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 20224, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1107.328, y = 203.3738, z = 2659.049}, rot = {x = 0, y = 35.87533, z = 0}},
                        freestyle = 1190,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {mainQuestId = 73080, questState = questState.Finished, sceneId = 20224, priority = 1},
                actionPoints = {{action = generalPattern.Hide}}
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018432700, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
