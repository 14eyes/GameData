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
        NpcId = "30185",
        Alias = "Npc30185",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 7, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1357.739, y = 180.1231, z = 830.859}, rot = {x = 0, y = 309.3466, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
