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
        NpcId = "30063",
        Alias = "Npc30063",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 4, priority = 0},
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(4, "Q40012Klee10"),
                        freestyle = 1280,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
