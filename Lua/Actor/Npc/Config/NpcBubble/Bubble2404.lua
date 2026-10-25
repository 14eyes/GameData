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
                activityId = 2025,
                activityCondId = 2025001,
                isActivityValid = false
            },
            bubbleDatas = {{dialogId = 1016240400, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
