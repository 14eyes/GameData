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
        NpcId = "30351",
        Alias = "Npc30351",
        DailyScheduleData = {
            {
                bornConfigId = 363035100,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2021,
                            activityCondId = 2021001,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {{dummypoint = sceneData:GetDummyPoint(3, "Q7369401_N30351"), action = generalPattern.Stand}}
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                dialogDataList = {{dialogId = 1018303510, duration = 3, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2021,
                            activityCondId = 2021001,
                            isActivityValid = true
                        }
                    }
                }
            }
        }
    }
}
