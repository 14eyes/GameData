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
        NpcId = "30114",
        Alias = "Npc30114",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {activityId = 5062, activityCondId = 5062003, isActivityValid = true, sceneId = 1068, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                condition = {activityId = 5062, activityCondId = 5062006, isActivityValid = true, sceneId = 1068, priority = 1},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 0.4434704, y = -1.340877E-6, z = 8.230246}, rot = {x = 0, y = 180, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_1465",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        }
    }
}
