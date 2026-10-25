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
        NpcId = "4323",
        Alias = "Npc4323",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1134.463, y = 200.9761, z = 2684.79}, rot = {x = 0, y = 173.8623, z = 0}},
                        actionPointId = 330400017,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 20224, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1134.463, y = 200.9761, z = 2684.79}, rot = {x = 0, y = 173.8623, z = 0}},
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018432300, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
