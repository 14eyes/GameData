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
        NpcId = "30336",
        Alias = "Npc30336",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                bornConfigId = 353033600,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2020,
                            activityCondId = 2020014,
                            isActivityValid = true
                        }
                    }
                },
                actionPoints = {
                    {
                        dummypoint = sceneData:GetDummyPoint(3, "Q4009706_N1001"),
                        freestyle = 8010,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                bornConfigId = 353033600,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 3},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1011004,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                bornConfigId = 353033600,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 3},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 1011305,
                            questState = questState.UnFinished
                        }
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            }
        }
    }
}
