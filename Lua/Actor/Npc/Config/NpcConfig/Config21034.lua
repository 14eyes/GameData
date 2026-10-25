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
        NpcId = "21034",
        Alias = "Npc21034",
        TitleDataNew = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_21034",
                    priority = 0,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                                questGlobalVarId = 7402505,
                                questGlobalVarValue = 1,
                                questGlobalVarOperate = compareOperation.Equal
                            }
                        }
                    }
                }
            }
        },
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_21034",
                    priority = 0,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                                questGlobalVarId = 7402501,
                                questGlobalVarValue = 0,
                                questGlobalVarOperate = compareOperation.Equal
                            }
                        }
                    }
                },
                {
                    nameStr = "NPC_EXPNAME_21034_1",
                    priority = 1,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                                questGlobalVarId = 7402501,
                                questGlobalVarValue = 1,
                                questGlobalVarOperate = compareOperation.Equal
                            }
                        }
                    }
                }
            }
        }
    }
}
