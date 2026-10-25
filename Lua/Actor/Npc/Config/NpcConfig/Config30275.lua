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
        NpcId = "30275",
        Alias = "Npc30275",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2016,
                            activityCondId = 2016002,
                            isActivityValid = true
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2016,
                            activityCondId = 2016001,
                            isActivityValid = false
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2018.905, y = 204.352, z = -857.556}, rot = {x = 0, y = 75.72842, z = 0}},
                        freestyle = 1230,
                        time = 60,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2019.96, y = 204.3069, z = -859.5576}, rot = {x = 0, y = 39.01275, z = 0}},
                        freestyle = 1280,
                        time = 30,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2021.1, y = 204.4264, z = -862.0818}, rot = {x = 0, y = 59.03693, z = 0}},
                        freestyle = 1050,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2025.07, y = 204.6583, z = -862.0436}, rot = {x = 0, y = 19.26914, z = 0}},
                        freestyle = 1190,
                        time = 60,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2021.1, y = 204.4264, z = -862.0818}, rot = {x = 0, y = 59.03693, z = 0}},
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2019.843, y = 204.3071, z = -859.6465}, rot = {x = 0, y = 50.7891, z = 0}},
                        freestyle = 1190,
                        time = 30,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_30275",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
