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
        NpcId = "5084",
        Alias = "Npc5084",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 405084000,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 3501.26, y = 421.1758, z = 4622.304}, rot = {x = 0, y = 334.7044, z = 0}},
                        freestyle = 1130,
                        time = 7,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 3489.353, y = 421.1758, z = 4615.616}, rot = {x = 0, y = 319.5597, z = 0}},
                        freestyle = 1230,
                        time = 7,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 3510.451, y = 420.7921, z = 4618.243}, rot = {x = 0, y = 160.0054, z = 0}},
                        freestyle = 1190,
                        time = 7,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 3529.125, y = 421.1758, z = 4627.405}, rot = {x = 0, y = 259.3096, z = 0}},
                        freestyle = 1120,
                        time = 7,
                        lookAtType = focusToPlayerType.OnlyOnce,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    },
                    {
                        dummypoint = {pos = {x = 3514.395, y = 421.1758, z = 4625.593}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Patrol
                    }
                }
            },
            {
                bornConfigId = 405084001,
                condition = {daily = dailyCondition.AllDay, sceneId = 1083, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                            questGlobalVarId = 7403601,
                            questGlobalVarValue = 0,
                            questGlobalVarOperate = compareOperation.Equal
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 5.163562, y = -4.00593E-7, z = 7.630442}, rot = {x = 0, y = 88.36986, z = 0}},
                        freestyle = 8065,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                bornConfigId = 405084001,
                condition = {daily = dailyCondition.AllDay, sceneId = 1083, priority = 1},
                conditionGrp = {
                    {
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day},
                        {
                            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                            questGlobalVarId = 7403601,
                            questGlobalVarValue = 1,
                            questGlobalVarOperate = compareOperation.Equal
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 5.163562, y = -4.00593E-7, z = 7.630442}, rot = {x = 0, y = 88.36986, z = 0}},
                        freestyle = 8065,
                        lookAtType = focusToPlayerType.Ignore,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Sit
                    }
                }
            }
        },
        TitleDataNew = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_5084",
                    priority = 0,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
                }
            }
        }
    }
}
