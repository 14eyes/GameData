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
        NpcId = "30615",
        Alias = "Npc30615",
        InteeData = {defaultInteeIcon = "UI_Icon_Intee_PhotoGraphV5"},
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                dialogDataList = {
                    {dialogId = 1018306150, duration = 5, intervalMin = 20, intervalMax = 30},
                    {dialogId = 1018306151, duration = 3, intervalMin = 20, intervalMax = 30},
                    {dialogId = 1018306152, duration = 3, intervalMin = 20, intervalMax = 30}
                },
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 5205,
                            activityCondId = 5205005,
                            isActivityValid = true
                        }
                    }
                }
            }
        }
    }
}
