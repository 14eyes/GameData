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
        NpcId = "1630",
        Alias = "Npc1630",
        DailyScheduleData = {
            {
                condition = {
                    daily = dailyCondition.AllDay,
                    mainQuestId = 11005,
                    questState = questState.UnFinished,
                    sceneId = 3,
                    priority = 0
                },
                schedulePoints = {{startTime = 0, id = 2057, actionType1 = actionPointType.HidingPoint}}
            },
            {
                condition = {
                    daily = dailyCondition.AllDay,
                    mainQuestId = 11005,
                    questState = questState.Finished,
                    sceneId = 3,
                    priority = 1
                },
                schedulePoints = {
                    {startTime = 6, id = 2056, actionType1 = actionPointType.StandbyPoint},
                    {startTime = 20, id = 2057, actionType1 = actionPointType.HidingPoint}
                }
            }
        }
    }
}
