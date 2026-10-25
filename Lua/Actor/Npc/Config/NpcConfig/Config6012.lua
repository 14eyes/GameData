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
        NpcId = "6012",
        Alias = "Npc6012",
        DailyScheduleData = {
            {
                bornConfigId = 506012000,
                condition = {daily = dailyCondition.AllDay, sceneId = 1099, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 18.07361, y = 0.02586553, z = 18.80536}, rot = {x = 0, y = 213.9877, z = 0}},
                        freestyle = 8040,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Sit
                    }
                }
            }
        }
    }
}
