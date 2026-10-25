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
            condition = {mainQuestId = 7525402, questState = questState.UnFinished},
            bubbleDatas = {{dialogId = 1016651200, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {mainQuestId = 7525402, questState = questState.Finished},
            bubbleDatas = {{dialogId = 1016651201, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
