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
        NpcId = "6627",
        Alias = "Npc6627",
        DailyScheduleData = {
            {
                bornConfigId = 586627000,
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 75268, questState = 3}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 407.0628, y = 246.8547, z = 14037.48}, rot = {x = 0, y = 21.92621, z = 0}},
                        freestyle = 1270,
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
