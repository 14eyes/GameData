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
        NpcId = "7724",
        Alias = "Npc7724",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 707724000,
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
                        dummypoint = {pos = {x = 9323.151, y = 227.2957, z = 7547.537}, rot = {x = 0, y = 139.41, z = 0}},
                        freestyle = 1282,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 707724001,
                condition = {sceneId = 0, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 9343.988, y = 229.6783, z = 7529.934}, rot = {x = 0, y = 146.4183, z = 0}},
                        freestyle = 1230,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 707724000,
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
                        dummypoint = {pos = {x = 9323.151, y = 227.2957, z = 7547.537}, rot = {x = 0, y = 139.41, z = 0}},
                        action = generalPattern.Hide
                    }
                }
            }
        }
    }
}
