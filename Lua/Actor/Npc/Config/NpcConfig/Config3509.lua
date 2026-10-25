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
        NpcId = "3509",
        Alias = "Npc3509",
        DailyScheduleData = {
            {
                bornConfigId = 703509000,
                condition = {sceneId = 0, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 9545.887, y = 290.9735, z = 6694.722}, rot = {x = 0, y = 220.2873, z = 0}},
                        freestyle = 1320,
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
