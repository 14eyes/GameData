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
        NpcId = "4003",
        Alias = "Npc4003",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 1074, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -6.178473, y = 0.05536659, z = 14.14806}, rot = {x = 0, y = 196.0578, z = 0}},
                        freestyle = 1170,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_4003",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 100,
                dialogDataList = {{dialogId = 1018400300, duration = 0, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {23000},
                priority = 300,
                dialogDataList = {{dialogId = 1018400301, duration = 3, intervalMin = 20, intervalMax = 30}},
                conditions = {{}}
            },
            {
                validQuestIds = {19171},
                priority = 300,
                dialogDataList = {{dialogId = 1018400302, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
