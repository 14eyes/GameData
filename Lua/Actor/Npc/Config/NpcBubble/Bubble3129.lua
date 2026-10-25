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
            bubbleDatas = {{dialogId = 1016312900, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {mainQuestId = 2004, questState = questState.Finished, priority = 1},
            bubbleDatas = {{dialogId = 1016312901, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                questGlobalVarId = 10014,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 2
            },
            bubbleDatas = {{dialogId = 1016312902, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
