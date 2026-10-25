require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType

return {
    BubbleData = {
        {
            hideSpeechBubble = true,
            condition = {
                questGlobalVarId = 400206,
                questGlobalVarValue = 1,
                questGlobalVarOperate = NpcConfigCommon.CompareOperation.Equal
            },
            bubbleDatas = {{dialogId = 1016527000, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
