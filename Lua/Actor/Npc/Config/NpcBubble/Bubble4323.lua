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
            bubbleDatas = {{dialogId = 1016432300, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                        subQuestId = 7300101,
                        questState = questState.None
                    },
                    {
                        _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                        subQuestId = 7300102,
                        questState = questState.None
                    }
                }
            }
        },
        {
            condition = {priority = 1},
            bubbleDatas = {{dialogId = 1016432301, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                        subQuestId = 7300122,
                        questState = questState.Finished
                    }
                },
                {
                    {
                        _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                        subQuestId = 7300123,
                        questState = questState.Finished
                    }
                }
            }
        }
    }
}
