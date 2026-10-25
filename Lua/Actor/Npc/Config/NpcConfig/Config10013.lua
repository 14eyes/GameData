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
        NpcId = "10013",
        Alias = "Npc10013",
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_30013",
                    priority = 1,
                    condList = {
                        {condition = {mainQuestId = 41112, questState = questState.UnFinished}, priority = 1, isShow = true}
                    }
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {3029},
                priority = 300,
                dialogDataList = {{dialogId = 30299803, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 3029, questState = 2}}}
            }
        }
    }
}
