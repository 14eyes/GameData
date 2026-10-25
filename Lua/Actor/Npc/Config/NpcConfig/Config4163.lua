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
        NpcId = "4163",
        Alias = "Npc4163",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1721.481, y = 200.7022, z = 2643.287}, rot = {x = 0, y = 164.0778, z = 0}},
                        actionPointId = 330400009,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018416300, duration = 0, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {23031},
                priority = 300,
                dialogDataList = {{dialogId = 1018416301, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{}}
            },
            {
                validQuestIds = {23036},
                priority = 300,
                dialogDataList = {{dialogId = 1018416302, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{}}
            },
            {
                validQuestIds = {73104},
                priority = 300,
                dialogDataList = {{dialogId = 1018416303, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{}}
            }
        }
    }
}
