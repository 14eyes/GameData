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
        NpcId = "4326",
        Alias = "Npc4326",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7300101,
                            questState = questState.Finished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7300102,
                            questState = questState.Finished
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1146.936, y = 224.457, z = 2709.181}, rot = {x = 0, y = 156.8283, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {sceneId = 20224, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7300101,
                            questState = questState.Finished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7300102,
                            questState = questState.Finished
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1146.936, y = 224.457, z = 2709.181}, rot = {x = 0, y = 156.8283, z = 0}},
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018432600, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
