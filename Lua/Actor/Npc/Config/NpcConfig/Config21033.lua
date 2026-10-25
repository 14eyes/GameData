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
        NpcId = "21033",
        Alias = "Npc21033",
        DailyScheduleData = {
            {
                bornConfigId = 402103300,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 4000.701, y = 543.0186, z = 4961.442}, rot = {x = 0, y = 190.5714, z = 0}},
                        freestyle = 1230,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 402103300,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                            questGlobalVarId = 7400002,
                            questGlobalVarValue = 2,
                            questGlobalVarOperate = compareOperation.Equal
                        },
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 4006.094, y = 547.2352, z = 4967.096}, rot = {x = 0, y = 97.00296, z = 0}},
                        freestyle = 1050,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 402103300,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                            questGlobalVarId = 7400002,
                            questGlobalVarValue = 2,
                            questGlobalVarOperate = compareOperation.Equal
                        },
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 4003.085, y = 547.2352, z = 4968.167}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 8010,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                transTeleport = true,
                bornConfigId = 402103300,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 2},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7414304,
                            questState = questState.Finished
                        },
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 4003.959, y = 547.2352, z = 4970.189}, rot = {x = 0, y = 127.5884, z = 0}},
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_21033",
                    priority = 0,
                    hideInBillboard = true,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7400001,
                                questState = questState.UnFinished
                            }
                        }
                    }
                }
            }
        }
    }
}
