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
            condition = {daily = dailyCondition.AllDay},
            bubbleDatas = {{dialogId = 1017210330, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {priority = 1},
            bubbleDatas = {{dialogId = 1017210331, duration = 0, intervalMin = 20, intervalMax = 30}},
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
            }
        },
        {
            condition = {priority = 1},
            bubbleDatas = {{dialogId = 1017210332, duration = 0, intervalMin = 20, intervalMax = 30}},
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
            }
        },
        {
            condition = {priority = 2},
            bubbleDatas = {{dialogId = 1017210333, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                        subQuestId = 7414304,
                        questState = questState.Finished
                    },
                    {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}
                }
            }
        }
    }
}
