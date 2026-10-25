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
        NpcId = "30406",
        Alias = "Npc30406",
        ElementTypeData = {defaultElementType = ElementType.Water},
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                bornConfigId = 383040600,
                condition = {daily = dailyCondition.AllDay, sceneId = 10, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 853.2422, y = 230.7235, z = 352.75}, rot = {x = 0, y = 297.39, z = 0}},
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
