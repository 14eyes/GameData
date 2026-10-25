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
        NpcId = "30237",
        Alias = "Npc30237",
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
                        dummypoint = {pos = {x = 2016.399, y = 204.0125, z = -861.4969}, rot = {x = 0, y = 284.4246, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {
                    activityId = 2016,
                    activityCondId = 2016001,
                    isActivityValid = false,
                    daily = dailyCondition.Night,
                    sceneId = 3,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2016.399, y = 204.0125, z = -861.4969}, rot = {x = 0, y = 284.4246, z = 0}},
                        action = generalPattern.Hide
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_30237",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
