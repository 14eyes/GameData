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
        NpcId = "6493",
        Alias = "Npc6493",
        DailyScheduleData = {
            {
                bornConfigId = 586493000,
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {
                    {{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}},
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                            questGlobalVarId = 7595201,
                            questGlobalVarValue = 5,
                            questGlobalVarOperate = compareOperation.Less
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 413.6808, y = 207.0984, z = 13926.98}, rot = {x = 0, y = 198.0573, z = 0}},
                        freestyle = 4472,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 586493001,
                condition = {sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                            questGlobalVarId = 7595201,
                            questGlobalVarValue = 5,
                            questGlobalVarOperate = compareOperation.Equal
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1378.206, y = 205.9199, z = 15156.22}, rot = {x = 0, y = 107.6253, z = 0}},
                        freestyle = 4472,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Ignore,
                        reactOnBodyLang = reactEnableType.Ignore,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleDataNew = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_6493",
                    priority = 0,
                    conditions = {
                        {
                            {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay},
                            {
                                _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                                questGlobalVarId = 7595201,
                                questGlobalVarValue = 5,
                                questGlobalVarOperate = compareOperation.Less
                            }
                        }
                    }
                }
            }
        }
    }
}
