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
        NpcId = "14494",
        Alias = "Npc14494",
        DailyScheduleData = {
            {
                bornConfigId = 501449400,
                condition = {daily = dailyCondition.AllDay, sceneId = 20230, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1751.345, y = 47.894, z = 8251.336}, rot = {x = 0.0, y = 112.476, z = 0.0}},
                        freestyle = 4452,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
