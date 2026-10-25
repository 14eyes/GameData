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
                questGlobalVarId = 7323804,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal
            },
            bubbleDatas = {{dialogId = 1017209270, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                questGlobalVarId = 7334501,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 1
            },
            bubbleDatas = {{dialogId = 1017209271, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
