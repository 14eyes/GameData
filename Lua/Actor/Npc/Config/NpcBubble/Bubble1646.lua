require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation

return {
    BubbleData = {
        {
            condition = {
                mainQuestId = 359,
                questState = questState.Finished,
                questGlobalVarId = 302617,
                questGlobalVarValue = 0,
                questGlobalVarOperate = compareOperation.Equal
            },
            bubbleDatas = {{dialogId = 1016164600, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                mainQuestId = 20101,
                questState = questState.Finished,
                questGlobalVarId = 302617,
                questGlobalVarValue = 0,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 1
            },
            bubbleDatas = {{dialogId = 1016164601, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                mainQuestId = 394,
                questState = questState.Finished,
                questGlobalVarId = 302617,
                questGlobalVarValue = 0,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 2
            },
            bubbleDatas = {{dialogId = 1016164602, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                mainQuestId = 1000,
                questState = questState.Finished,
                questGlobalVarId = 302617,
                questGlobalVarValue = 0,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 3
            },
            bubbleDatas = {{dialogId = 1016164603, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                mainQuestId = 1025,
                questState = questState.Finished,
                questGlobalVarId = 302617,
                questGlobalVarValue = 0,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 4
            },
            bubbleDatas = {{dialogId = 1016164604, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                mainQuestId = 2011,
                questState = questState.Finished,
                questGlobalVarId = 302617,
                questGlobalVarValue = 0,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 5
            },
            bubbleDatas = {{dialogId = 1016164605, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {priority = 6},
            bubbleDatas = {{dialogId = 1016164606, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 12042,
                        questGlobalVarValue = 1,
                        questGlobalVarOperate = compareOperation.Equal
                    },
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 302617,
                        questGlobalVarValue = 0,
                        questGlobalVarOperate = compareOperation.Equal
                    }
                }
            }
        },
        {
            condition = {priority = 7},
            bubbleDatas = {{dialogId = 1016164607, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 103106,
                        questGlobalVarValue = 1,
                        questGlobalVarOperate = compareOperation.Equal
                    },
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 302617,
                        questGlobalVarValue = 0,
                        questGlobalVarOperate = compareOperation.Equal
                    }
                }
            }
        },
        {
            condition = {
                questGlobalVarId = 302617,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 8
            },
            bubbleDatas = {{dialogId = 1016164608, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                questGlobalVarId = 402501,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 9
            },
            bubbleDatas = {{dialogId = 1016164609, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                questGlobalVarId = 502901,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 10
            },
            bubbleDatas = {{dialogId = 1016164610, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                questGlobalVarId = 601701,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 11
            },
            bubbleDatas = {{dialogId = 1016164611, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
