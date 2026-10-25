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
                {dialogId = 1016163800, duration = 0, intervalMin = 20, intervalMax = 30},
                {dialogId = 1016163801, duration = 0, intervalMin = 20, intervalMax = 30}
            }
        },
        {
            condition = {activityId = 2020, activityCondId = 2020001, isActivityValid = true, priority = 1},
            bubbleDatas = {{dialogId = 1016163802, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
