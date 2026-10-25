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
        NpcId = "2232",
        Alias = "Npc2232",
        DailyScheduleData = {
            {
                bornConfigId = 442232000,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night},
                        {_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 71111, questState = 3}
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1846.058, y = 229.38, z = 1293.57}, rot = {x = 0, y = 30, z = 0}},
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
