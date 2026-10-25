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
        NpcId = "12862",
        Alias = "Npc12862",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
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
                        dummypoint = {pos = {x = 111.6646, y = 246.6852, z = 2881.773}, rot = {x = 0, y = 314.1009, z = 0}},
                        freestyle = 1280,
                        time = 10,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 111.6646, y = 246.6852, z = 2881.773}, rot = {x = 0, y = 314.1009, z = 0}},
                        freestyle = 1190,
                        time = 10,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 471286200,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2031,
                            activityCondId = 2031001,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -742.4376, y = 222.7762, z = 323.0645}, rot = {x = 0, y = 154.7024, z = 0}},
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_12862",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 20,
                dialogDataList = {{dialogId = 1018128620, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
