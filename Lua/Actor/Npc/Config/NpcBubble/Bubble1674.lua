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
            condition = {
                questGlobalVarId = 40029,
                questGlobalVarValue = 1,
                questGlobalVarOperate = NpcConfigCommon.CompareOperation.Equal
            },
            bubbleDatas = {{dialogId = 1016167400, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
