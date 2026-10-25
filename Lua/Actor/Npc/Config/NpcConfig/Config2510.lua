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
        NpcId = "2510",
        Alias = "Npc2510",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                bornConfigId = 442510000,
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {
                    {{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}},
                    {{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}}
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2403.979, y = 362.676, z = 2483.849}, rot = {x = 0, y = 157.6698, z = 0}},
                        freestyle = 1190,
                        lookAtType = focusToPlayerType.OnlyOnce,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                bornConfigId = 442510000,
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {
                    {{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}},
                    {{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}}
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2387.672, y = 362.676, z = 2471.05}, rot = {x = 0, y = 160.6124, z = 0}},
                        freestyle = 8040,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                bornConfigId = 582510000,
                condition = {sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2391.03, y = 362.6991, z = 2475.283}, rot = {x = 0, y = 63.79906, z = 0}},
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleDataNew = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_2510",
                    priority = 0,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
                }
            }
        }
    }
}
