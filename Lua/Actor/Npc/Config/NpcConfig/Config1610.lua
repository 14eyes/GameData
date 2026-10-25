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
        NpcId = "1610",
        Alias = "Npc1610",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2647.745, y = 382.4999, z = -1735.191}, rot = {x = 0, y = 92.8737, z = 0}},
                        freestyle = 4100,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            },
            {
                transTeleport = true,
                condition = {sceneId = 3, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2016,
                            activityCondId = 2016001,
                            isActivityValid = true
                        },
                        {_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 40080, questState = 3}
                    }
                },
                actionPoints = {{action = generalPattern.Hide}}
            }
        }
    }
}
