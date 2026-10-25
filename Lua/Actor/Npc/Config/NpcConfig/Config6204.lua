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
        NpcId = "6204",
        Alias = "Npc6204",
        DailyScheduleData = {
            {
                bornConfigId = 506204000,
                condition = {daily = dailyCondition.AllDay, sceneId = 1099, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 19.36313, y = 0.5869327, z = 29.97322}, rot = {x = 0, y = 142.8985, z = 0}},
                        freestyle = 1,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
