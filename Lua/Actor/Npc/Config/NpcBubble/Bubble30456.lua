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
                daily = dailyCondition.AllDay,
                activityId = 5174,
                activityCondId = 5174001,
                isActivityValid = true,
                priority = 1
            },
            bubbleDatas = {{dialogId = 1017304560, duration = 5, intervalMin = 20, intervalMax = 30}}
        }
    }
}
