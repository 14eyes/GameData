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
        NpcId = "30694",
        Alias = "Npc30694",
        DailyScheduleData = {
            {
                bornConfigId = 533069400,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -457.4766, y = 210.0281, z = 278.9904}, rot = {x = 0, y = 180, z = 0}},
                        freestyle = 1230,
                        time = 10,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -457.4766, y = 210.0281, z = 278.9904}, rot = {x = 0, y = 180, z = 0}},
                        freestyle = 1120,
                        time = 10,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
