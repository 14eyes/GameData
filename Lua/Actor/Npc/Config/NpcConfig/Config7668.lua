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
        NpcId = "7668",
        Alias = "Npc7668",
        DailyScheduleData = {
            {
                bornConfigId = 637668000,
                condition = {sceneId = 0, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 5110.147, y = 220.5149, z = 9610.454}, rot = {x = 0, y = 44.85354, z = 0}},
                        freestyle = 1280,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 5110.152, y = 220.5149, z = 9610.456}, rot = {x = 0, y = 44.85354, z = 0}},
                        time = 40,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
