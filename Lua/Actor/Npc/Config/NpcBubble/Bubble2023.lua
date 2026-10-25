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
            condition = {daily = dailyCondition.Day},
            bubbleDatas = {{dialogId = 1016202300, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {daily = dailyCondition.Night},
            bubbleDatas = {{dialogId = 1016202301, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {
                daily = dailyCondition.Day,
                activityId = 2002,
                activityCondId = 2002101,
                isActivityValid = true,
                priority = 1
            },
            bubbleDatas = {{dialogId = 1016202302, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {activityId = 2007, activityCondId = 2007000, isActivityValid = true, priority = 2},
            bubbleDatas = {{dialogId = 1016202303, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {priority = 3},
            bubbleDatas = {{dialogId = 1016202304, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {
                {
                    {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day},
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
        },
        {
            condition = {activityId = 2028, activityCondId = 2028001, isActivityValid = true, priority = 3},
            bubbleDatas = {{dialogId = 1016202305, duration = 0, intervalMin = 20, intervalMax = 30}}
        }
    }
}
