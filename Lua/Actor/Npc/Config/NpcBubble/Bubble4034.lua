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
            bubbleDatas = {{dialogId = 1016403400, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {daily = dailyCondition.Night},
            bubbleDatas = {{dialogId = 1016403401, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
