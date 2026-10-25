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
        NpcId = "3014",
        Alias = "Npc3014",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 1060, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2.146824, y = -0.06700081, z = 9.324575}, rot = {x = 0, y = 149.6068, z = 0}},
                        time = 15,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 7.836257, y = -0.0670008, z = 9.156275}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 1120,
                        time = 15,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
