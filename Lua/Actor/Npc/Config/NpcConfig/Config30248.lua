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
        NpcId = "30248",
        Alias = "Npc30248",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {activityId = 2016, activityCondId = 2016018, isActivityValid = true, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2014.209, y = 204.1291, z = -897.9941}, rot = {x = 0, y = 60.1671, z = 0}},
                        freestyle = 1130,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {activityId = 2016, activityCondId = 2016018, isActivityValid = false, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2014.209, y = 204.1291, z = -897.9941}, rot = {x = 0, y = 60.1671, z = 0}},
                        action = generalPattern.Hide
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_30248",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
