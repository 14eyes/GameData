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
            bubbleDatas = {{dialogId = 1016302900, duration = 0, intervalMin = 20, intervalMax = 30}}
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
            bubbleDatas = {{dialogId = 1016302901, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
