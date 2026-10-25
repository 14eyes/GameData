require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local generalPattern = NpcConfigCommon.GeneralPattern
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local focusToPlayerType = NpcConfigCommon.FocusToPlayerType
local reactEnableType = NpcConfigCommon.ReactEnableType
local reactEventType = NpcConfigCommon.ReactEventType
local actorMoveType = NpcConfigCommon.ActorMoveType

return {
    Data = {
        NpcId = "21355",
        Alias = "Npc21355",
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_21355",
                    priority = 0,
                    hideInBillboard = true,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7418436,
                                questState = questState.None
                            }
                        },
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7418436,
                                questState = questState.UnFinished
                            }
                        }
                    }
                }
            }
        },
        ReactionData = {
            reactionDatas = {
                {
                    priority = 1,
                    reactionEvent = {eventType = reactEventType.Reminder, eventUIntParams = {1001300000}},
                    reactionActions = {
                        {freestyle = 1170, time = 3},
                        {freestyle = 1180, time = 3},
                        {freestyle = 1170, time = 3},
                        {freestyle = 1180, time = 3}
                    }
                }
            }
        }
    }
}
