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
        NpcId = "21338",
        Alias = "Npc21338",
        TitleDataNew = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_21338",
                    priority = 0,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                                questGlobalVarId = 7418402,
                                questGlobalVarValue = 1,
                                questGlobalVarOperate = compareOperation.Equal
                            }
                        }
                    }
                },
                {
                    titleStr = "NPC_TITLE_21338_1",
                    priority = 1,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                                questGlobalVarId = 7419502,
                                questGlobalVarValue = 1,
                                questGlobalVarOperate = compareOperation.Equal
                            }
                        }
                    }
                },
                {
                    titleStr = "NPC_TITLE_21338_2",
                    priority = 1,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7418428,
                                questState = questState.UnFinished
                            }
                        }
                    }
                }
            }
        },
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_21338_1",
                    priority = 0,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                                questGlobalVarId = 7419502,
                                questGlobalVarValue = 1,
                                questGlobalVarOperate = compareOperation.Equal
                            }
                        }
                    }
                },
                {
                    nameStr = "NPC_EXPNAME_21338",
                    priority = 0,
                    hideInBillboard = true,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7418428,
                                questState = questState.UnFinished
                            }
                        }
                    }
                }
            }
        },
        BillboardMarkData = {
            markDatas = {
                {
                    icon = "UI_NPCTopIcon_Activity_AnimalView01",
                    priority = 0,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7418428,
                                questState = questState.UnFinished
                            }
                        },
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7418428,
                                questState = questState.Finished
                            }
                        }
                    }
                }
            }
        }
    }
}
