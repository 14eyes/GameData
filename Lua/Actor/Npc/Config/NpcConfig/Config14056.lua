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
        NpcId = "14056",
        Alias = "Npc14056",
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_14056",
                    priority = 1,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 14027, questState = 2}}}
                },
                {
                    nameStr = "NPC_EXPNAME_14056_1",
                    priority = 2,
                    hideInBillboard = true,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 14029, questState = 2}}}
                }
            }
        }
    }
}
