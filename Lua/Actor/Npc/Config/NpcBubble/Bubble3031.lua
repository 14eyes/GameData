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
            bubbleDatas = {{dialogId = 1016303100, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {mainQuestId = 2006, questState = questState.Finished, priority = 1},
            bubbleDatas = {{dialogId = 1016303101, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
