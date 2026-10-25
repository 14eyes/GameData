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
                activityId = 2019,
                activityCondId = 2019004,
                isActivityValid = true,
                activityId = 2019,
                activityCondId = 2019311,
                isActivityValid = false
            },
            bubbleDatas = {{dialogId = 1017303060, duration = 0, intervalMin = 10, intervalMax = 30}}
        }
    }
}
