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
        NpcId = "1036",
        Alias = "Npc1036",
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_NAME_RaidenEi",
                    priority = 50,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 12040, questState = 2}}}
                },
                {
                    nameStr = "NPC_NAME_RaidenEi",
                    priority = 50,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 12041, questState = 2}}}
                },
                {
                    nameStr = "NPC_NAME_RaidenEi",
                    priority = 50,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 12042, questState = 2}}}
                }
            }
        }
    }
}
