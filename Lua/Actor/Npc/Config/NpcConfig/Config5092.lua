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
        NpcId = "5092",
        Alias = "Npc5092",
        DailyScheduleData = {
            {
                bornConfigId = 405092000,
                condition = {daily = dailyCondition.AllDay, sceneId = 1084, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -11.05816, y = 7.520429, z = 11.05299}, rot = {x = 0, y = 180.3949, z = 0}},
                        freestyle = 8010,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Sit
                    }
                }
            }
        }
    }
}
