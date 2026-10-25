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
        NpcId = "30277",
        Alias = "Npc30277",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
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
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 1971.899, y = 212.6415, z = -860.4207}, rot = {x = 0, y = 57.18166, z = 0}},
                        freestyle = 1130,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {{action = generalPattern.Hide}}
            }
        }
    }
}
