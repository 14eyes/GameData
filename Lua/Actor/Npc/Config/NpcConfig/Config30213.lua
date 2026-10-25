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
        NpcId = "30213",
        Alias = "Npc30213",
        BillboardMarkData = {
            markDatas = {
                {
                    icon = "",
                    priority = 0,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 13030, questState = 2}}}
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {13030},
                priority = 300,
                dialogDataList = {{dialogId = 130309901, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1303002,
                            questState = questState.Finished
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1303003,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {13030},
                priority = 300,
                dialogDataList = {{dialogId = 130309902, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1303003,
                            questState = questState.Finished
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1303004,
                            questState = questState.UnFinished
                        }
                    }
                }
            }
        }
    }
}
