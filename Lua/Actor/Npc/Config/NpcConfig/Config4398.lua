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
        NpcId = "4398",
        Alias = "Npc4398",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1581.116, y = 13, z = 5131.932}, rot = {x = 0, y = 8.615012, z = 0}},
                        freestyle = 1020,
                        time = 12,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -1583.451, y = 13, z = 5112.726}, rot = {x = 0, y = 188.3371, z = 0}},
                        freestyle = 1010,
                        time = 17,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
