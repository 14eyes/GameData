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
            condition = {daily = dailyCondition.Day},
            bubbleDatas = {{dialogId = 1016305000, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {daily = dailyCondition.Night},
            bubbleDatas = {{dialogId = 1016305001, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                daily = dailyCondition.Day,
                questGlobalVarId = 12042,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal,
                mainQuestId = 72802,
                questState = questState.Finished,
                priority = 1
            },
            bubbleDatas = {{dialogId = 1016305002, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                daily = dailyCondition.Night,
                questGlobalVarId = 12042,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal,
                mainQuestId = 72802,
                questState = questState.Finished,
                priority = 1
            },
            bubbleDatas = {{dialogId = 1016305003, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
