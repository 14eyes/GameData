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
        NpcId = "4177",
        Alias = "Npc4177",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 1074, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 5.978209, y = 0.05717194, z = 19.0706}, rot = {x = 0, y = 159.8084, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
