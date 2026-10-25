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
            bubbleDatas = {{dialogId = 1016402000, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {activityId = 2034, activityCondId = 2034001, isActivityValid = true, priority = 1},
            bubbleDatas = {{dialogId = 1016402001, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
