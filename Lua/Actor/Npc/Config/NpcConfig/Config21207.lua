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
        NpcId = "21207",
        Alias = "Npc21207",
        TitleDataNew = {titleDatas = {{titleStr = "NPC_TITLE_21207", priority = 0}}},
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_21207",
                    priority = 0,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7413115,
                                questState = questState.Finished
                            }
                        },
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7413155,
                                questState = questState.Finished
                            }
                        }
                    }
                }
            }
        }
    }
}
