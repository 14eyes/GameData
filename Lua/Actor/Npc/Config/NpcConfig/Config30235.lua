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
        NpcId = "30235",
        Alias = "Npc30235",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
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
                        dummypoint = {pos = {x = 2026.999, y = 204.0125, z = -855.5157}, rot = {x = 0, y = 249.957, z = 0}},
                        freestyle = 1120,
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
                        dummypoint = {pos = {x = 2026.999, y = 204.0125, z = -855.5157}, rot = {x = 0, y = 249.957, z = 0}},
                        freestyle = 1120,
                        time = 30,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 2029.196, y = 204.0125, z = -855.3544}, rot = {x = 0, y = 76.65501, z = 0}},
                        freestyle = 4260,
                        time = 30,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_30235",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
