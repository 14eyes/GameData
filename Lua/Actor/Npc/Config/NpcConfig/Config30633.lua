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
        NpcId = "30633",
        Alias = "Npc30633",
        DailyScheduleData = {
            {
                bornConfigId = 513063300,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -467.4397, y = 237.5987, z = 2749.375}, rot = {x = 0, y = 343.9183, z = 0}},
                        freestyle = 8010,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                bornConfigId = 513063300,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2034,
                            activityCondId = 2034004,
                            isActivityValid = true
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                            questGlobalVarId = 4016801,
                            questGlobalVarValue = 0,
                            questGlobalVarOperate = compareOperation.Equal
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 200,
                dialogDataList = {{dialogId = 1018306330, duration = 0, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {0},
                priority = 201,
                dialogDataList = {{dialogId = 1018306331, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2034,
                            activityCondId = 2034003,
                            isActivityValid = true
                        }
                    }
                }
            },
            {
                validQuestIds = {0},
                priority = 202,
                dialogDataList = {{dialogId = 1018306332, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2034,
                            activityCondId = 2034004,
                            isActivityValid = true
                        }
                    }
                }
            }
        }
    }
}
