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
            bubbleDatas = {{dialogId = 1016164700, duration = 0, intervalMin = 20, intervalMax = 30}}
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
            bubbleDatas = {{dialogId = 1016164701, duration = 0, intervalMin = 20, intervalMax = 30}}
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
            bubbleDatas = {{dialogId = 1016164702, duration = 0, intervalMin = 20, intervalMax = 30}}
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
            bubbleDatas = {{dialogId = 1016164703, duration = 0, intervalMin = 20, intervalMax = 30}}
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
            bubbleDatas = {{dialogId = 1016164704, duration = 0, intervalMin = 20, intervalMax = 30}}
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
            bubbleDatas = {{dialogId = 1016164705, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {priority = 6},
            bubbleDatas = {{dialogId = 1016164706, duration = 0, intervalMin = 20, intervalMax = 30}},
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
            bubbleDatas = {{dialogId = 1016164707, duration = 0, intervalMin = 20, intervalMax = 30}},
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
            bubbleDatas = {{dialogId = 1016164708, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                questGlobalVarId = 402501,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 9
            },
            bubbleDatas = {{dialogId = 1016164709, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                questGlobalVarId = 502901,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 10
            },
            bubbleDatas = {{dialogId = 1016164710, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                questGlobalVarId = 601701,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 11
            },
            bubbleDatas = {{dialogId = 1016164711, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
