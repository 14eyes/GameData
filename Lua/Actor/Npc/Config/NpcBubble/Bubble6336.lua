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
            condition = {priority = 5},
            bubbleDatas = {
                {dialogId = 1016633600, duration = 7, intervalMin = 5, intervalMax = 10},
                {dialogId = 1016633601, duration = 10, intervalMin = 3, intervalMax = 6}
            },
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 75179, questState = 2}}}
        }
    }
}
