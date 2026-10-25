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
                questGlobalVarId = 12035,
                questGlobalVarValue = 0,
                questGlobalVarOperate = compareOperation.Equal
            },
            bubbleDatas = {{dialogId = 1016301600, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                questGlobalVarId = 4005513,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal,
                activityId = 2012,
                activityCondId = 2012002,
                isActivityValid = true,
                priority = 2
            },
            bubbleDatas = {{dialogId = 1016301601, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                daily = dailyCondition.AllDay,
                questGlobalVarId = 12035,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal
            },
            bubbleDatas = {{dialogId = 1016301602, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
