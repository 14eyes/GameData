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
            bubbleDatas = {{dialogId = 1016403500, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {priority = 1},
            bubbleDatas = {{dialogId = 1016403501, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                        activityId = 2034,
                        activityCondId = 2034004,
                        isActivityValid = true
                    },
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 4016801,
                        questGlobalVarValue = 1,
                        questGlobalVarOperate = compareOperation.Equal
                    }
                }
            }
        }
    }
}
