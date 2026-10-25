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
            condition = {mainQuestId = 21024, questState = questState.UnStarted},
            bubbleDatas = {{dialogId = 210241001, duration = 3, intervalMin = 1, intervalMax = 2}}
        },
        {
            condition = {daily = dailyCondition.AllDay},
            bubbleDatas = {{dialogId = 1016220300, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
