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
        NpcId = "4335",
        Alias = "Npc4335",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1085.332, y = 219.8687, z = 2723.503}, rot = {x = 0, y = 329.483, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Day, sceneId = 20224, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1085.332, y = 219.8687, z = 2723.503}, rot = {x = 0, y = 329.483, z = 0}},
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018433500, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
