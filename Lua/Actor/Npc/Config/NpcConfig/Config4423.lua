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
        NpcId = "4423",
        Alias = "Npc4423",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1983.357, y = 211.6248, z = 4152.439}, rot = {x = 0, y = 156.0621, z = 0}},
                        actionPointId = 330300019,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018442300, duration = 0, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {23039},
                priority = 300,
                dialogDataList = {{dialogId = 1018442301, duration = 3, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
