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
            bubbleDatas = {{dialogId = 1016175600, duration = 0, intervalMin = 20, intervalMax = 30}}
        },
        {
            condition = {priority = 1},
            bubbleDatas = {{dialogId = 1016175601, duration = 0, intervalMin = 20, intervalMax = 30}},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 7007702,
                        questGlobalVarValue = 2,
                        questGlobalVarOperate = compareOperation.Equal
                    }
                }
            }
        }
    }
}
