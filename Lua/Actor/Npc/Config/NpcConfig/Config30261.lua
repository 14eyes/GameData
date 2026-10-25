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
        NpcId = "30261",
        Alias = "Npc30261",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                condition = {
                    activityId = 2016,
                    activityCondId = 2016035,
                    isActivityValid = true,
                    daily = dailyCondition.AllDay,
                    sceneId = 3,
                    priority = 2
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 2239.437, y = 220.3017, z = -872.177}, rot = {x = 0, y = 22.81282, z = 0}},
                        freestyle = 8010,
                        action = generalPattern.Sit
                    }
                }
            },
            {
                condition = {sceneId = 1004, priority = 1},
                conditionGrp = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2016,
                            activityCondId = 2016037,
                            isActivityValid = true
                        },
                        {_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 10101, questState = 3}
                    }
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -19.32881, y = 0.001999794, z = 17.58061}, rot = {x = 0, y = 113.5643, z = 0}},
                        freestyle = 1230,
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
