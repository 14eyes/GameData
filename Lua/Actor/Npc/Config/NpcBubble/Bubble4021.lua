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
            condition = {daily = dailyCondition.Day},
            bubbleDatas = {{dialogId = 1016402100, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {daily = dailyCondition.Night},
            bubbleDatas = {{dialogId = 1016402101, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {priority = 1},
            bubbleDatas = {{dialogId = 1016402102, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {
                {
                    {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day},
                    {
                        _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                        activityId = 2034,
                        activityCondId = 2034001,
                        isActivityValid = true
                    }
                }
            }
        }
    }
}
