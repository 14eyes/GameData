require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType

return {
    BubbleData = {
        {
            condition = {
                activityId = 2012,
                activityCondId = 2012002,
                isActivityValid = true,
                questGlobalVarId = 4005513,
                questGlobalVarValue = 1,
                questGlobalVarOperate = NpcConfigCommon.CompareOperation.Equal,
                priority = 2
            },
            bubbleDatas = {{dialogId = 1016319001, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
