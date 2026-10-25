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
        NpcId = "7673",
        Alias = "Npc7673",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 637673001,
                condition = {sceneId = 0, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 5731.48, y = 227.8561, z = 9555.798}, rot = {x = 0, y = 156.0248, z = 0}},
                        actionPointId = 1040,
                        action = generalPattern.Patrol
                    }
                }
            }
        }
    }
}
