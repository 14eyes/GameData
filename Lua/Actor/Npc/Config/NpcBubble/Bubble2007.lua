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
            bubbleDatas = {{dialogId = 1016200700, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {daily = dailyCondition.Night},
            bubbleDatas = {{dialogId = 1016200701, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                activityId = 2010,
                activityCondId = 2010002,
                isActivityValid = true,
                daily = dailyCondition.Day,
                priority = 1
            },
            bubbleDatas = {{dialogId = 1016200703, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                activityId = 2010,
                activityCondId = 2010002,
                isActivityValid = true,
                daily = dailyCondition.Night,
                priority = 1
            },
            bubbleDatas = {{dialogId = 1016200704, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
