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
            condition = {daily = dailyCondition.AllDay, mainQuestId = 21003, questState = questState.UnFinished},
            bubbleDatas = {{dialogId = 210039990, duration = 5, intervalMin = 2, intervalMax = 5}}
        },
        {
            condition = {daily = dailyCondition.AllDay},
            bubbleDatas = {{dialogId = 1016242900, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
