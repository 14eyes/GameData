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
        NpcId = "20476",
        Alias = "Npc20476",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 5, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionLevelTagCondition, levelTag = 2}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 611.4526, y = 213.2456, z = 631.473}, rot = {x = 0, y = 307.3564, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 5, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionLevelTagCondition, levelTag = 1}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 611.4526, y = 213.2456, z = 631.473}, rot = {x = 0, y = 307.3564, z = 0}},
                        action = generalPattern.Hide
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_20476",
                    priority = 0,
                    condList = {
                        {condition = {mainQuestId = 72235, questState = questState.UnFinished}, priority = 0, isShow = true}
                    }
                },
                {
                    titleStr = "NPC_TITLE_20476",
                    priority = 0,
                    condList = {{condition = {mainQuestId = 72235, questState = questState.Finished}, priority = 0, isShow = true}}
                }
            }
        },
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_TITLE_0000",
                    priority = 0,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7223501,
                                questState = questState.UnStarted
                            }
                        }
                    }
                },
                {
                    nameStr = "NPC_TITLE_0000",
                    priority = 0,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7223501,
                                questState = questState.UnFinished
                            }
                        }
                    }
                },
                {
                    nameStr = "NPC_TITLE_0000",
                    priority = 0,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7223501,
                                questState = questState.None
                            }
                        }
                    }
                }
            }
        }
    }
}
