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
            condition = {
                daily = dailyCondition.AllDay,
                questGlobalVarId = 2103501,
                questGlobalVarValue = 0,
                questGlobalVarOperate = compareOperation.Equal
            },
            bubbleDatas = {{dialogId = 1016241800, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                daily = dailyCondition.AllDay,
                questGlobalVarId = 2103501,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 1
            },
            bubbleDatas = {{dialogId = 1016241801, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
