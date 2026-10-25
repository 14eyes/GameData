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
        NpcId = "14478",
        Alias = "Npc14478",
        DailyScheduleData = {
            {
                bornConfigId = 501447800,
                condition = {daily = dailyCondition.AllDay, sceneId = 20230, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1804.012, y = 39.204, z = 8315.444}, rot = {x = 0.0, y = 37.281, z = 0.0}},
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
