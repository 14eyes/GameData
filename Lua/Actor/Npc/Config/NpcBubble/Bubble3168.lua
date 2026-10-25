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
            condition = {mainQuestId = 72132, questState = questState.Finished},
            bubbleDatas = {{dialogId = 1016316800, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                mainQuestId = 72132,
                questState = questState.Finished,
                questGlobalVarId = 1202401,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal,
                priority = 1
            },
            bubbleDatas = {{dialogId = 1016316801, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
