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
        NpcId = "4123",
        Alias = "Npc4123",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2051.844, y = 203.8257, z = 2608.42}, rot = {x = 0, y = 45.65303, z = 0}},
                        actionPointId = 330400002,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2026.815, y = 204.4512, z = 2593.918}, rot = {x = 0, y = 254.3165, z = 0}},
                        freestyle = 8010,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                transTeleport = true,
                condition = {sceneId = 3, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2034,
                            activityCondId = 2034001,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_4123",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018412300, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}}}
            },
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018412301, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}}}
            }
        }
    }
}
