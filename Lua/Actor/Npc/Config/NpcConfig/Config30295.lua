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
        NpcId = "30295",
        Alias = "Npc30295",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 343029500,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -728.6754, y = 222.8515, z = 313.6548}, rot = {x = 0, y = 24.73996, z = 0}},
                        freestyle = 1230,
                        time = 10,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
