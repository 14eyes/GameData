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
        NpcId = "30637",
        Alias = "Npc30637",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 513063700,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -2036.684, y = 203.8257, z = 2612.664}, rot = {x = 0, y = 347.1774, z = 0}},
                        freestyle = 1190,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                bornConfigId = 513063701,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1998.067, y = 299.3215, z = 4089.309}, rot = {x = 0, y = 140.0987, z = 0}},
                        freestyle = 0,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Sit
                    }
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 200,
                dialogDataList = {{dialogId = 1018306370, duration = 0, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {0},
                priority = 201,
                dialogDataList = {{dialogId = 1018306371, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4016820,
                            questState = questState.Finished
                        }
                    }
                }
            }
        }
    }
}
