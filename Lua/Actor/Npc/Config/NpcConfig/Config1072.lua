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
        NpcId = "1072",
        Alias = "Npc1072",
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_1072",
                    priority = 2,
                    hideInBillboard = true,
                    isBanDaily = false,
                    validQuestIds = {4004},
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 400403,
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
                    icon = "UI_NPCTopIcon_QuestBranch",
                    priority = 1,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 401557,
                                questState = questState.UnFinished
                            }
                        },
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 401553,
                                questState = questState.UnFinished
                            }
                        }
                    }
                }
            }
        }
    }
}
