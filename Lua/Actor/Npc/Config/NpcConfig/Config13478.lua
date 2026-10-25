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
        NpcId = "13478",
        Alias = "Npc13478",
        TitleDataNew = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_13478",
                    priority = 0,
                    conditions = {
                        {
                            {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay},
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 1400409,
                                questState = questState.Finished
                            }
                        }
                    }
                },
                {
                    titleStr = "NPC_TITLE_13478_1",
                    priority = 1,
                    conditions = {
                        {
                            {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay},
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 1400616,
                                questState = questState.Finished
                            }
                        }
                    }
                }
            }
        }
    }
}
