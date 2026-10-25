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
        NpcId = "30480",
        Alias = "Npc30480",
        InteeData = {defaultInteeIcon = "UI_Icon_Intee_FilmfestShooting"},
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 433048000,
                condition = {daily = dailyCondition.AllDay, sceneId = 1084, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -7.168476, y = 7.518001, z = 1.893506}, rot = {x = 0, y = 84.59315, z = 0}},
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
