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
        NpcId = "4402",
        Alias = "Npc4402",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {
                    questGlobalVarId = 302110,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    daily = dailyCondition.Day,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2040.592, y = 304.8654, z = 4130.924}, rot = {x = 0, y = 277.69, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018440200, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
