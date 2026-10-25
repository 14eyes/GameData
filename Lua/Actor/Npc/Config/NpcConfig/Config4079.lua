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
        NpcId = "4079",
        Alias = "Npc4079",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -293.4948, y = 247.2357, z = 2783.171}, rot = {x = 0, y = 287.5931, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_4079",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018407900, duration = 0, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {23023},
                priority = 300,
                dialogDataList = {{dialogId = 1018407901, duration = 3, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {23024},
                priority = 300,
                dialogDataList = {{dialogId = 1018407902, duration = 3, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
