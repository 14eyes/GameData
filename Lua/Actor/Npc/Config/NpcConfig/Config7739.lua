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
        NpcId = "7739",
        Alias = "Npc7739",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 707739000,
                condition = {sceneId = 0, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7715004,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 9335.253, y = 227.9141, z = 7536.06}, rot = {x = 0, y = 332.0205, z = 0}},
                        freestyle = 4190,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 707739000,
                condition = {sceneId = 0, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7715004,
                            questState = questState.Finished
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 9335.253, y = 227.9141, z = 7536.06}, rot = {x = 0, y = 332.0205, z = 0}},
                        action = generalPattern.Hide
                    }
                }
            },
            {
                bornConfigId = 707739001,
                condition = {sceneId = 0, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 9326.921, y = 227.9063, z = 7536.349}, rot = {x = 0, y = 180.9092, z = 0}},
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
