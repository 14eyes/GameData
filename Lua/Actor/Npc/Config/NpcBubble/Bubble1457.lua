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
            condition = {activityId = 2016, activityCondId = 2016001, isActivityValid = true, priority = 1},
            bubbleDatas = {{dialogId = 1016145700, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
