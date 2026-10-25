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
            condition = {},
            bubbleDatas = {{dialogId = 1016300700, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
        },
        {
            condition = {priority = 2},
            bubbleDatas = {{dialogId = 1016300701, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 4005513,
                        questGlobalVarValue = 1,
                        questGlobalVarOperate = compareOperation.Equal
                    },
                    {
                        _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                        activityId = 2012,
                        activityCondId = 2012002,
                        isActivityValid = true
                    }
                }
            }
        }
    }
}
