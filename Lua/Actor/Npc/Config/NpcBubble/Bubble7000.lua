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
            condition = {},
            bubbleDatas = {
                {dialogId = 1016700000, duration = 0, intervalMin = 60, intervalMax = 120},
                {dialogId = 1016700001, duration = 0, intervalMin = 60, intervalMax = 120}
            }
        }
    }
}
