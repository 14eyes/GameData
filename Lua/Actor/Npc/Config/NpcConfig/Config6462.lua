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
        NpcId = "6462",
        Alias = "Npc6462",
        DailyScheduleData = {
            {
                bornConfigId = 556462000,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 4},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7516511,
                            questState = questState.Finished
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7516506,
                            questState = questState.None
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -3160.85, y = 311.2426, z = 10137.5}, rot = {x = 0, y = 37.00239, z = 0}},
                        freestyle = 4470,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 556462000,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 5},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7516506,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -3156.418, y = 310.4076, z = 10133.44}, rot = {x = 0, y = 324.674, z = 0}},
                        freestyle = 1180,
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
