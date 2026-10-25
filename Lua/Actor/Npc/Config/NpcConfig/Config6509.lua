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
        NpcId = "6509",
        Alias = "Npc6509",
        DailyScheduleData = {
            {
                bornConfigId = 586509000,
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 75212, questState = 3}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 432.4529, y = 217.6029, z = 13951.65}, rot = {x = 0, y = 224.0538, z = 0}},
                        freestyle = 1230,
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
