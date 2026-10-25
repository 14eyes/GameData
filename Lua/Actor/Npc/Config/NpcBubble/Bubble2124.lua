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
            condition = {mainQuestId = 21023, questState = questState.UnStarted},
            bubbleDatas = {{dialogId = 210230401, duration = 5, intervalMin = 1, intervalMax = 2}}
        },
        {
            condition = {daily = dailyCondition.AllDay},
            bubbleDatas = {{dialogId = 1016212400, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
