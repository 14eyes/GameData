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
            condition = {},
            bubbleDatas = {{dialogId = 1016166300, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
        },
        {
            condition = {priority = 1},
            bubbleDatas = {{dialogId = 1016166301, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                        activityId = 2016,
                        activityCondId = 2016001,
                        isActivityValid = true
                    },
                    {_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 40080, questState = 3}
                }
            }
        }
    }
}
