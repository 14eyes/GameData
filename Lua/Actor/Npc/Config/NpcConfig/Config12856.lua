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
        NpcId = "12856",
        Alias = "Npc12856",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2017,
                            activityCondId = 2017115,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 106.9349, y = 246.9697, z = 2928.276}, rot = {x = 0, y = 94.44524, z = 0}},
                        freestyle = 1190,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_12856",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                },
                {
                    titleStr = "NPC_TITLE_12856_1",
                    priority = 10,
                    condList = {
                        {
                            condition = {
                                questGlobalVarId = 4008508,
                                questGlobalVarValue = 1,
                                questGlobalVarOperate = compareOperation.Equal
                            },
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
                priority = 20,
                dialogDataList = {{dialogId = 1018128560, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
