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
        NpcId = "21233",
        Alias = "Npc21233",
        TitleDataNew = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_21233",
                    priority = 1,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7414426,
                                questState = questState.Finished
                            }
                        }
                    }
                }
            }
        },
        ExplicitNameData = {
            nameDatas = {
                {nameStr = "NPC_EXPNAME_21233", priority = 1},
                {
                    nameStr = "NPC_EXPNAME_21233_1",
                    priority = 2,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7414403,
                                questState = questState.Finished
                            }
                        }
                    }
                }
            }
        }
    }
}
