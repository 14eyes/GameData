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
        NpcId = "12944",
        Alias = "Npc12944",
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_12944",
                    priority = 1,
                    hideInBillboard = true,
                    conditions = {
                        {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 40089, questState = 2}},
                        {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 40090, questState = 2}}
                    }
                }
            }
        }
    }
}
