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
        NpcId = "5100",
        Alias = "Npc5100",
        DailyScheduleData = {
            {
                bornConfigId = 405100000,
                condition = {daily = dailyCondition.AllDay, sceneId = 1085, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 3.2806, y = 7.296225, z = 147.9685}, rot = {x = 0, y = 349.2935, z = 0}},
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 405100000,
                condition = {daily = dailyCondition.AllDay, sceneId = 1085, priority = 1},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 4024, questState = 2}}},
                actionPoints = {{action = generalPattern.Hide}}
            }
        }
    }
}
