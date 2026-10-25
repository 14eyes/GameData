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
            bubbleDatas = {{dialogId = 1016175200, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}}}
        },
        {
            condition = {},
            bubbleDatas = {{dialogId = 1016175201, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}}}
        },
        {
            condition = {priority = 3},
            bubbleDatas = {{dialogId = 1016175202, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionGlobalValueCondition,
                        target = 1,
                        key = "_ABILITY_Item_Fragrance_Buff",
                        value = 1
                    }
                }
            }
        }
    }
}
