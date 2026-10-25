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
        NpcId = "30339",
        Alias = "Npc30339",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                bornConfigId = 353033900,
                condition = {daily = dailyCondition.AllDay, sceneId = 1004, priority = 0},
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(1004, "N30339_T4009821"),
                        freestyle = 1220,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
