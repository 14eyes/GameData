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
        NpcId = "7445",
        Alias = "Npc7445",
        DailyScheduleData = {
            {
                bornConfigId = 707445000,
                condition = {sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 9557.564, y = 396.4069, z = 6681.696}, rot = {x = 0, y = 98.96595, z = 0}},
                        freestyle = 1240,
                        time = 10,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 9560.25, y = 396.4067, z = 6685.438}, rot = {x = 0, y = 127.9856, z = 0}},
                        freestyle = 1230,
                        time = 5,
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
