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
        NpcId = "21580",
        Alias = "Npc21580",
        TitleDataNew = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_21580",
                    priority = 5,
                    conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
                }
            }
        },
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_21580",
                    priority = 5,
                    hideInBillboard = true,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7503506,
                                questState = questState.Finished
                            }
                        }
                    }
                }
            }
        }
    }
}
