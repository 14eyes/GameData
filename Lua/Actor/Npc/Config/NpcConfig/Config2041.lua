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
        NpcId = "2041",
        Alias = "Npc2041",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -660.1201, y = 219.2503, z = 213.5824}, rot = {x = 0, y = 85.28009, z = 0}},
                        freestyle = 1190,
                        time = 14,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -660.2128, y = 219.1, z = 229.4681}, rot = {x = 0, y = 42.41631, z = 0}},
                        freestyle = 1190,
                        time = 15,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
