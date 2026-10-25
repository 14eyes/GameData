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
            condition = {questGlobalVarId = 10006, questGlobalVarValue = 0, questGlobalVarOperate = compareOperation.Equal},
            bubbleDatas = {{dialogId = 1016210200, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {questGlobalVarId = 10006, questGlobalVarValue = 1, questGlobalVarOperate = compareOperation.Equal},
            bubbleDatas = {{dialogId = 1016210201, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
