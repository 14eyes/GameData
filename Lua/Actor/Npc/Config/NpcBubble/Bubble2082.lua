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
            bubbleDatas = {{dialogId = 1016208200, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {activityId = 2002, activityCondId = 2002101, isActivityValid = true, priority = 1},
            bubbleDatas = {{dialogId = 1016208201, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {activityId = 2007, activityCondId = 2007000, isActivityValid = true, priority = 2},
            bubbleDatas = {{dialogId = 1016208202, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
