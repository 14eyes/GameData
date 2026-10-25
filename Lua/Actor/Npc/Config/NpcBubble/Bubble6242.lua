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
            bubbleDatas = {{dialogId = 1016624200, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 501109,
                        questGlobalVarValue = 0,
                        questGlobalVarOperate = compareOperation.Equal
                    }
                },
                {
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 501302,
                        questGlobalVarValue = 1,
                        questGlobalVarOperate = compareOperation.Equal
                    }
                }
            }
        },
        {
            condition = {daily = dailyCondition.AllDay},
            bubbleDatas = {{dialogId = 1016624201, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 501109,
                        questGlobalVarValue = 1,
                        questGlobalVarOperate = compareOperation.Equal
                    },
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 501302,
                        questGlobalVarValue = 0,
                        questGlobalVarOperate = compareOperation.Equal
                    }
                }
            }
        }
    }
}
