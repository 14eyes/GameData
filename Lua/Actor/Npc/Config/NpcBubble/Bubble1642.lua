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
            bubbleDatas = {{dialogId = 1016164200, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {daily = dailyCondition.Night},
            bubbleDatas = {{dialogId = 1016164201, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {priority = 1},
            bubbleDatas = {{dialogId = 1016164202, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                        activityId = 2016,
                        activityCondId = 2016001,
                        isActivityValid = true
                    },
                    {_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 40080, questState = 3},
                    {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}
                }
            }
        },
        {
            condition = {priority = 2},
            bubbleDatas = {{dialogId = 1016164203, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {
                {
                    {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day},
                    {
                        _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                        activityId = 2020,
                        activityCondId = 2020012,
                        isActivityValid = true
                    }
                }
            }
        }
    }
}
