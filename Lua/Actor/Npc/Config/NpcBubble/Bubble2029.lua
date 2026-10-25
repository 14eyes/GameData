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
            bubbleDatas = {
                {dialogId = 1016202900, duration = 0, intervalMin = 20, intervalMax = 30},
                {dialogId = 1016202901, duration = 0, intervalMin = 20, intervalMax = 30}
            }
        },
        {
            condition = {
                activityId = 2007,
                activityCondId = 2007000,
                isActivityValid = true,
                daily = dailyCondition.Day,
                priority = 1
            },
            bubbleDatas = {{dialogId = 1016202902, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {activityId = 2010, activityCondId = 2010004, isActivityValid = true, priority = 1},
            bubbleDatas = {{dialogId = 1016202903, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {priority = 2},
            bubbleDatas = {{dialogId = 1016202904, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                        activityId = 2019,
                        activityCondId = 2019001,
                        isActivityValid = true
                    },
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 4009201,
                        questGlobalVarValue = 1,
                        questGlobalVarOperate = compareOperation.Equal
                    }
                }
            }
        }
    }
}
