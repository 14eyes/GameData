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
        NpcId = "30341",
        Alias = "Npc30341",
        DailyScheduleData = {
            {
                bornConfigId = 363034100,
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
                actionPoints = {{dummypoint = sceneData:GetDummyPoint(3, "Q73696_N30341"), action = generalPattern.Stand}}
            }
        },
        BillboardMarkData = {
            markDatas = {
                {
                    icon = "UI_NPCTopIcon_Activity_AkaFes_Reasoning",
                    priority = 0,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                                activityId = 2021,
                                activityCondId = 2021005,
                                isActivityValid = true
                            }
                        }
                    }
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                dialogDataList = {{dialogId = 1018303410, duration = 3, intervalMin = 20, intervalMax = 30}},
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
