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
            bubbleDatas = {{dialogId = 1016179400, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {priority = 3},
            bubbleDatas = {{dialogId = 1016179401, duration = 0, intervalMin = 20, intervalMax = 30}},
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
