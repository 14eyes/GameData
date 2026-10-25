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
            condition = {activityId = 2028, activityCondId = 2028803, isActivityValid = true, priority = 3},
            bubbleDatas = {{dialogId = 1017304740, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
