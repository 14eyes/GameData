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
        NpcId = "1728",
        Alias = "Npc1728",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 471728000,
                condition = {daily = dailyCondition.AllDay, sceneId = 48000, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 57.111, y = 5.146, z = 28.915}, rot = {x = 0.0, y = 267.254, z = 0.0}},
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
