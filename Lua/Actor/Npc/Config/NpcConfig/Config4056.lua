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
        NpcId = "4056",
        Alias = "Npc4056",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -364.7302, y = 237.819, z = 2799.77}, rot = {x = 0, y = 14.91437, z = 0}},
                        freestyle = 1190,
                        time = 5,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -370.0962, y = 237.819, z = 2803.076}, rot = {x = 0, y = 346.0539, z = 0}},
                        time = 5,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = -372.9715, y = 237.819, z = 2800.467}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -371.5178, y = 237.819, z = 2791.677}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    },
                    {
                        dummypoint = {pos = {x = -375.0091, y = 237.819, z = 2789.333}, rot = {x = 0, y = 54.25092, z = 0}},
                        freestyle = 1240,
                        time = 10,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {daily = dailyCondition.Night, sceneId = 1074, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 18.54382, y = 0.05536698, z = 13.61239}, rot = {x = 0, y = 180.3664, z = 0}},
                        freestyle = 8010,
                        action = generalPattern.Sit
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_4056",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018405600, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}}}
            },
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018405601, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}}}
            }
        }
    }
}
