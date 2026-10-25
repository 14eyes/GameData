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
        NpcId = "4431",
        Alias = "Npc4431",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1574.792, y = 13, z = 5077.467}, rot = {x = 0, y = 177.7707, z = 0}},
                        freestyle = 1020,
                        time = 17,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -1576.417, y = 13, z = 5103.193}, rot = {x = 0, y = 356.4109, z = 0}},
                        freestyle = 1010,
                        time = 12,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
