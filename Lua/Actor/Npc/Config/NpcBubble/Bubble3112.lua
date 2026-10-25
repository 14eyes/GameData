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
            condition = {daily = dailyCondition.AllDay},
            bubbleDatas = {{dialogId = 1016311200, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                questGlobalVarId = 1202401,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 1
            },
            bubbleDatas = {{dialogId = 1016311201, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
