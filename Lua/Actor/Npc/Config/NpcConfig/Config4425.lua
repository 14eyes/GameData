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
        NpcId = "4425",
        Alias = "Npc4425",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {mainQuestId = 73055, questState = questState.Finished, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2007.571, y = 288.1675, z = 4085.087}, rot = {x = 0, y = 58.90576, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
