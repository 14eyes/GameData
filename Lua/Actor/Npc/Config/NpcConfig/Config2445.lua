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
        NpcId = "2445",
        Alias = "Npc2445",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {
                            pos = {x = -630.7234, y = 209.7969, z = -155.785},
                            rot = {x = 324.1496, y = 357.9098, z = 342.4323}
                        },
                        freestyle = 8020,
                        action = generalPattern.Sit
                    }
                }
            }
        }
    }
}
