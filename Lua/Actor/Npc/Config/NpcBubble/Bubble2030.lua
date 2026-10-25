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
                questGlobalVarId = 2100001,
                questGlobalVarValue = 0,
                questGlobalVarOperate = compareOperation.Equal
            },
            bubbleDatas = {{dialogId = 1016203000, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                daily = dailyCondition.Day,
                questGlobalVarId = 2100001,
                questGlobalVarValue = 0,
                questGlobalVarOperate = compareOperation.Greater
            },
            bubbleDatas = {{dialogId = 1016203001, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
