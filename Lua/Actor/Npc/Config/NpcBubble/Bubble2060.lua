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
            bubbleDatas = {{dialogId = 1016206000, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {daily = dailyCondition.Night},
            bubbleDatas = {{dialogId = 1016206001, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {activityId = 2007, activityCondId = 2007000, isActivityValid = true, priority = 1},
            bubbleDatas = {{dialogId = 1016206002, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
