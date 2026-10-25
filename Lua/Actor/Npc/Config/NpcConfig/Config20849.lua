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
        NpcId = "20849",
        Alias = "Npc20849",
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_20849",
                    priority = 0,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                                questGlobalVarId = 7318803,
                                questGlobalVarValue = 1,
                                questGlobalVarOperate = compareOperation.Equal
                            }
                        }
                    }
                },
                {
                    nameStr = "NPC_EXPNAME_20849_1",
                    priority = 0,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                                questGlobalVarId = 7318803,
                                questGlobalVarValue = 2,
                                questGlobalVarOperate = compareOperation.Equal
                            }
                        }
                    }
                },
                {
                    nameStr = "NPC_EXPNAME_20849_2",
                    priority = 0,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                                questGlobalVarId = 7318803,
                                questGlobalVarValue = 3,
                                questGlobalVarOperate = compareOperation.Equal
                            }
                        }
                    }
                }
            }
        }
    }
}
