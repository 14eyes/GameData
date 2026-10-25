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
        NpcId = "1721",
        Alias = "Npc1721",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 471721000,
                condition = {daily = dailyCondition.AllDay, sceneId = 48000, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 27.87, y = 2.9, z = 43.646}, rot = {x = 0.0, y = 90.974, z = 0.0}},
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
