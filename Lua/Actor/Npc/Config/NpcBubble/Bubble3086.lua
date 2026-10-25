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
            bubbleDatas = {{dialogId = 1016308600, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {mainQuestId = 2013, questState = questState.Finished, priority = 1},
            bubbleDatas = {{dialogId = 1016308601, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                mainQuestId = 72807,
                questState = questState.Finished,
                questGlobalVarId = 12035,
                questGlobalVarValue = 0,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 2
            },
            bubbleDatas = {{dialogId = 1016308602, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {activityId = 2012, activityCondId = 2012002, isActivityValid = true, priority = 3},
            bubbleDatas = {{dialogId = 1016308603, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                daily = dailyCondition.AllDay,
                questGlobalVarId = 12035,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 2
            },
            bubbleDatas = {{dialogId = 1016308604, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
