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
        NpcId = "20479",
        Alias = "Npc20479",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 5, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionLevelTagCondition, levelTag = 2}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 136.9921, y = 237.8396, z = 412.3696}, rot = {x = 0, y = 47.08693, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 5, priority = 0},
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionLevelTagCondition, levelTag = 1}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 136.9921, y = 237.8396, z = 412.3696}, rot = {x = 0, y = 47.08693, z = 0}},
                        action = generalPattern.Hide
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_20479",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
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
                                subQuestId = 7223703,
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
                                subQuestId = 7223703,
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
                                subQuestId = 7223703,
                                questState = questState.None
                            }
                        }
                    }
                }
            }
        }
    }
}
