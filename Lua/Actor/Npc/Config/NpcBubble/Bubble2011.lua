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
            bubbleDatas = {
                {dialogId = 1016201100, duration = 0, intervalMin = 20, intervalMax = 30},
                {dialogId = 1016201101, duration = 0, intervalMin = 20, intervalMax = 30}
            }
        },
        {
            condition = {
                activityId = 2010,
                activityCondId = 2010004,
                isActivityValid = true,
                daily = dailyCondition.Night,
                priority = 1
            },
            bubbleDatas = {{dialogId = 1016201102, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
