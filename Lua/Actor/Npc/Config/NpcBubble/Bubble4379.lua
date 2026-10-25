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
            condition = {daily = dailyCondition.Night},
            bubbleDatas = {{dialogId = 1016437900, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {activityId = 2021, activityCondId = 2021001, isActivityValid = true, priority = 1},
            bubbleDatas = {{dialogId = 1016437901, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
