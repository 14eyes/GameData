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
        NpcId = "4476",
        Alias = "Npc4476",
        DailyScheduleData = {
            {
                bornConfigId = 464476000,
                condition = {sceneId = 1091, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 616.4718, y = 86.1613, z = 618.9378}, rot = {x = 0, y = 340, z = 0}},
                        freestyle = 1190,
                        lookAtType = focusToPlayerType.Default,
                        reactOnCollide = reactEnableType.Default,
                        reactOnBodyLang = reactEnableType.Default,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        TitleDataNew = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_4476",
                    priority = 0,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 100,
                dialogDataList = {{dialogId = 1018447600, duration = 0, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {40210},
                priority = 300,
                dialogDataList = {{dialogId = 1018447601, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4021003,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {40210},
                priority = 300,
                dialogDataList = {{dialogId = 1018447602, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4021004,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {40211},
                priority = 300,
                dialogDataList = {{dialogId = 1018447603, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4021101,
                            questState = questState.Finished
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4021129,
                            questState = questState.None
                        }
                    }
                }
            },
            {
                validQuestIds = {40211},
                priority = 300,
                dialogDataList = {{dialogId = 1018447604, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4021129,
                            questState = questState.Finished
                        }
                    }
                }
            }
        }
    }
}
