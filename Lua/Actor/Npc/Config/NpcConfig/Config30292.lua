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
        NpcId = "30292",
        Alias = "Npc30292",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2017,
                            activityCondId = 2017121,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2000.839, y = 201.8982, z = 2413.006}, rot = {x = 0, y = 89.61207, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2017,
                            activityCondId = 2017113,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1907.669, y = 203.0997, z = 2506.87}, rot = {x = 0, y = 127.4993, z = 0}},
                        freestyle = 1120,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_30292",
                    priority = 0,
                    condList = {
                        {
                            condition = {activityId = 2017, activityCondId = 2017001, isActivityValid = true},
                            priority = 0,
                            isShow = true
                        }
                    }
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 200,
                dialogDataList = {{dialogId = 400819907, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
