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
        NpcId = "30173",
        Alias = "Npc30173",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {activityId = 2012, activityCondId = 2012008, isActivityValid = true, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2592.324, y = 201.9994, z = -3733.085}, rot = {x = 0, y = 264.6633, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    activityId = 2016,
                    activityCondId = 2016001,
                    isActivityValid = true,
                    daily = dailyCondition.Day,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2014.135, y = 204.368, z = -844.9293}, rot = {x = 0, y = 167.538, z = 0}},
                        freestyle = 4090,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    activityId = 2016,
                    activityCondId = 2016001,
                    isActivityValid = true,
                    daily = dailyCondition.Night,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2022.274, y = 204.0476, z = -851.3967}, rot = {x = 0, y = 186.6042, z = 0}},
                        freestyle = 8073,
                        action = generalPattern.Sit
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_30173",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
