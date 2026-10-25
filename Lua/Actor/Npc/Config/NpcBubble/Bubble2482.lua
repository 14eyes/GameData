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
            bubbleDatas = {{dialogId = 1016248200, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            hideSpeechBubble = true,
            condition = {priority = 5},
            bubbleDatas = {{dialogId = 1016248201, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                        activityId = 5278,
                        activityCondId = 5278103,
                        isActivityValid = true
                    },
                    {
                        _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                        subQuestId = 4020207,
                        questState = questState.Finished
                    }
                }
            }
        }
    }
}
