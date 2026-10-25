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
        NpcId = "6105",
        Alias = "Npc6105",
        DailyScheduleData = {
            {
                bornConfigId = 506105000,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2111.626, y = 229.9404, z = 8445.567}, rot = {x = 0, y = 332.7556, z = 0}},
                        freestyle = 1230,
                        time = 5,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = -2106.043, y = 229.9316, z = 8433.182}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = -2113.373, y = 230.562, z = 8406.768}, rot = {x = 0, y = 130.713, z = 0}},
                        freestyle = 1190,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand,
                        moveType = actorMoveType.Run
                    },
                    {
                        dummypoint = {pos = {x = -2106.043, y = 229.9316, z = 8433.182}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol,
                        moveType = actorMoveType.Run
                    }
                }
            }
        }
    }
}
