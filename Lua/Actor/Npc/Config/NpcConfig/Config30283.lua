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
        NpcId = "30283",
        Alias = "Npc30283",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                bornConfigId = 343028300,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -851.6011, y = 148.7673, z = 2398.177}, rot = {x = 0, y = 255.2231, z = 0}},
                        freestyle = 1130,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                bornConfigId = 343028300,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 1},
                conditionGrp = {
                    {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 3001, questState = 2}},
                    {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 3002, questState = 2}},
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 300301,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 5116,
                            activityCondId = 5116026,
                            isActivityValid = false
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 200,
                dialogDataList = {{dialogId = 1018302830, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
