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
                questGlobalVarId = 7401801,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal
            },
            bubbleDatas = {{dialogId = 1017210890, duration = 5, intervalMin = 10, intervalMax = 20}}
        },
        {
            condition = {
                questGlobalVarId = 7401801,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal
            },
            bubbleDatas = {{dialogId = 1017210891, duration = 5, intervalMin = 10, intervalMax = 20}}
        }
    }
}
