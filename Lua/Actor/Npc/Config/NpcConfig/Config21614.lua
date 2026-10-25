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
        NpcId = "21614",
        Alias = "Npc21614",
        ExplicitNameData = {
            nameDatas = {
                {nameStr = "NPC_EXPNAME_21614", priority = 1, conditions = {{}}},
                {
                    nameStr = "NPC_EXPNAME_21614_1",
                    priority = 2,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7507306,
                                questState = questState.Finished
                            }
                        }
                    }
                }
            }
        }
    }
}
